import axios from 'axios';

const authProvider = {
    login: ({ email, password }) => {
        return axios
            .post('http://localhost:8000/api/login', { email, password })
            .then(({ data }) => {
                localStorage.setItem('token', data.access_token);
                localStorage.setItem('permissions', data.user_type); // You can use this to check user roles
            });
    },
    logout: () => {
        localStorage.removeItem('token');
        localStorage.removeItem('permissions');
        return Promise.resolve();
    },
    checkAuth: () => {
        return localStorage.getItem('token') ? Promise.resolve() : Promise.reject();
    },
    checkError: (error) => {
        const status = error.status;
        if (status === 401 || status === 403) {
            localStorage.removeItem('token');
            return Promise.reject();
        }
        return Promise.resolve();
    },
    getPermissions: () => {
        return Promise.resolve(localStorage.getItem('permissions'));
    },
};

export default authProvider;
