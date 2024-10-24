import axios from 'axios';
import jwtDecode from 'jwt-decode';  // You'll need to install this package to decode JWT tokens
import { API_BASE_URL } from "./config";

const authProvider = {
    // Login function
    login: async ({ email, password }) => {
        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/login`, { email, password });

            // Get the current time in seconds
            const currentTime = Math.floor(Date.now() / 1000);

            // Calculate access and refresh token expiry times in seconds
            const accessTokenExpiry = currentTime + data.access_expire * 60; // access_expire is in minutes
            const refreshTokenExpiry = currentTime + data.refresh_expire * 60; // refresh_expire is in minutes

            // Store tokens and expiration times in localStorage
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            localStorage.setItem('permissions', data.user_type);
            localStorage.setItem('access_token_expiry', accessTokenExpiry);
            localStorage.setItem('refresh_token_expiry', refreshTokenExpiry);

            return Promise.resolve();
        } catch (error) {
            return Promise.reject(error);
        }
    },

    // Logout function
    logout: () => {
        localStorage.removeItem('access_token');
        localStorage.removeItem('refresh_token');
        localStorage.removeItem('permissions');
        localStorage.removeItem('access_token_expiry');
        localStorage.removeItem('refresh_token_expiry');
        return Promise.resolve();
    },

    // Check if user is authenticated by checking the access token
    checkAuth: async () => {
        const token = localStorage.getItem('access_token');
        const accessTokenExpiry = localStorage.getItem('access_token_expiry');
        const currentTime = Math.floor(Date.now() / 1000); // Current time in seconds

        if (token && accessTokenExpiry) {
            // Check if the access token has expired
            if (currentTime >= accessTokenExpiry) {
                // Access token has expired, try refreshing it
                return authProvider.refreshToken()
                    .then(() => Promise.resolve())
                    .catch(() => Promise.reject());
            }

            // Optionally, ping a protected endpoint to ensure the token is valid
            try {
                await axios.get(`${API_BASE_URL}/api/me`, {
                    headers: { Authorization: `Bearer ${token}` },
                });
                return Promise.resolve();
            } catch (error) {
                if (error.response?.status === 401) {
                    // If unauthorized, try refreshing the token
                    return authProvider.refreshToken()
                        .then(() => Promise.resolve())
                        .catch(() => Promise.reject());
                }
            }
        }
        return Promise.reject(); // No valid token
    },

    // Handle errors such as 401 or 403
    checkError: (error) => {
        const status = error.status || error.response?.status;
        if (status === 401 || status === 403) {
            localStorage.removeItem('access_token');
            localStorage.removeItem('refresh_token');
            return Promise.reject();
        }
        return Promise.resolve();
    },

    // Get permissions (or user role)
    getPermissions: () => {
        return Promise.resolve(localStorage.getItem('permissions'));
    },

    // Refresh the access token using the refresh token
    refreshToken: async () => {
        const refreshToken = localStorage.getItem('refresh_token');
        if (!refreshToken) return Promise.reject('No refresh token available');

        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/refresh`, {}, {
                headers: { Authorization: `Bearer ${refreshToken}` },
            });

            // Get the current time in seconds
            const currentTime = Math.floor(Date.now() / 1000);

            // Calculate new expiration times for tokens
            const newAccessTokenExpiry = currentTime + data.access_expire * 60;
            const newRefreshTokenExpiry = currentTime + data.refresh_expire * 60;

            // Store new tokens and expiration times in localStorage
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            localStorage.setItem('access_token_expiry', newAccessTokenExpiry);
            localStorage.setItem('refresh_token_expiry', newRefreshTokenExpiry);

            return Promise.resolve();
        } catch (error) {
            return Promise.reject('Failed to refresh token');
        }
    },
};

export default authProvider;
