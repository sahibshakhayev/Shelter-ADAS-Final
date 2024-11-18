import axios from 'axios';
import { API_BASE_URL } from "./config";

const authProvider = {
    // Login function
    login: async ({ email, password }) => {
        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/login`, { email, password });

            // Get current time in seconds
            const currentTime = Math.floor(Date.now() / 1000);

            // Calculate expiry times for tokens in seconds
            const accessTokenExpiry = currentTime + data.access_expire * 60; // from minutes to seconds
            const refreshTokenExpiry = currentTime + data.refresh_expire * 60; // from minutes to seconds

            // Store tokens and expiry times in localStorage
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

    // Check if the user is authenticated by checking the access token
    checkAuth: async () => {
        const accessToken = localStorage.getItem('access_token');
        const accessTokenExpiry = parseInt(localStorage.getItem('access_token_expiry'), 10);
        const refreshTokenExpiry = parseInt(localStorage.getItem('refresh_token_expiry'), 10);
        const currentTime = Math.floor(Date.now() / 1000); // Current time in seconds

        if (accessToken && accessTokenExpiry) {
            if (currentTime >= accessTokenExpiry) {
                // Access token expired; attempt to refresh
                return authProvider.refreshToken()
                    .then(() => Promise.resolve())
                    .catch(() => Promise.reject('Session expired. Please log in again.'));
            }

            // If access token is still valid, optionally ping a protected endpoint
            try {
                await axios.get(`${API_BASE_URL}/api/me`, {
                    headers: { Authorization: `Bearer ${accessToken}` }, // Include Bearer prefix
                });
                return Promise.resolve();
            } catch (error) {
                // If unauthorized, try refreshing the token
                if (error.response?.status === 401) {
                    return authProvider.refreshToken()
                        .then(() => Promise.resolve())
                        .catch(() => Promise.reject('Session expired. Please log in again.'));
                }
            }
        }

        return Promise.reject('No valid token');
    },

    // Handle errors such as 401 or 403
    checkError: (error) => {
        const status = error.status || error.response?.status;
        if (status === 401 || status === 403) {
            authProvider.logout();
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
        const refreshTokenExpiry = parseInt(localStorage.getItem('refresh_token_expiry'), 10);
        const currentTime = Math.floor(Date.now() / 1000);

        // Check if the refresh token is still valid
        if (!refreshToken || currentTime >= refreshTokenExpiry) {
            authProvider.logout();
            return Promise.reject('Refresh token expired. Please log in again.');
        }

        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/refresh`, {}, {
                headers: { Authorization: `Bearer ${refreshToken}` }, // Include Bearer prefix
            });

            // Calculate new expiry times
            const newAccessTokenExpiry = currentTime + data.access_expire * 60;
            const newRefreshTokenExpiry = currentTime + data.refresh_expire * 60;

            // Store new tokens and expiry times in localStorage
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            localStorage.setItem('access_token_expiry', newAccessTokenExpiry);
            localStorage.setItem('refresh_token_expiry', newRefreshTokenExpiry);

            return Promise.resolve();
        } catch (error) {
            authProvider.logout();
            return Promise.reject('Failed to refresh token');
        }
    },
};

export default authProvider;
