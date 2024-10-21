import axios from 'axios';

import  {API_BASE_URL} from "./config";

const authProvider = {
    login: async ({ email, password }) => {
        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/login`, { email, password });

            // Store access and refresh tokens
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            localStorage.setItem('permissions', data.user_type); // Store user role/permissions

            return Promise.resolve();
        } catch (error) {
            return Promise.reject(error);
        }
    },

    logout: () => {
        localStorage.removeItem('access_token');
        localStorage.removeItem('refresh_token');
        localStorage.removeItem('permissions');
        return Promise.resolve();
    },

    checkAuth: async () => {
        const token = localStorage.getItem('access_token');
        if (token) {
            try {
                // Optionally, ping a protected endpoint to ensure the token is valid
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
        return Promise.reject();
    },

    checkError: (error) => {
        const status = error.status || error.response?.status;
        if (status === 401 || status === 403) {
            localStorage.removeItem('access_token');
            localStorage.removeItem('refresh_token');
            return Promise.reject();
        }
        return Promise.resolve();
    },

    getPermissions: () => {
        return Promise.resolve(localStorage.getItem('permissions'));
    },

    refreshToken: async () => {
        const refreshToken = localStorage.getItem('refresh_token');
        if (!refreshToken) return Promise.reject('No refresh token available');

        try {
            const { data } = await axios.post(`${API_BASE_URL}/api/refresh`, {}, {
                headers: { Authorization: `Bearer ${refreshToken}` },
            });

            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            return Promise.resolve();
        } catch (error) {
            return Promise.reject('Failed to refresh token');
        }
    },
};

export default authProvider;
