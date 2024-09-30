import { fetchUtils } from 'react-admin';
import simpleRestProvider from 'ra-data-simple-rest';
import queryString from 'query-string';


const apiUrl = 'http://localhost:8000/api';

const httpClient = (url, options = {}) => {
    if (!options.headers) {
        options.headers = new Headers({ Accept: 'application/json' });
    }
    const token = localStorage.getItem('token');
    if (token) {
        options.headers.set('Authorization', `Bearer ${token}`);
    }
    return fetchUtils.fetchJson(url, options);
};


const myDataProvider = {
    ...simpleRestProvider(apiUrl, httpClient),




    getList: (resource, params) => {
        if (resource === 'settings') {
            return httpClient(`${apiUrl}/settings`)
                .then(({ json }) => {
                    return {
                        data: json.data,  // The array of objects
                        total: json.total // The total count for pagination
                    };
                });
        }

        if (resource == 'languages' || resource == 'translations') {

            const { page, perPage } = params.pagination;
            const { field, order } = params.sort;
            const query = {
                sort: field,
                order: order,
                page: page,
                per_page: perPage,
                ...params.filter,
            };
            const url = `${apiUrl}/${resource}?${queryString.stringify(query)}`;
            return httpClient(url).then(({ headers, json }) => ({
                data: json.data, // Assuming Laravel returns data in 'data'
                total: json.total, // Assuming Laravel returns pagination in 'meta'
            }));

        }

        if (resource === 'services') {
            const { page, perPage } = params.pagination;
            const { field, order } = params.sort;
            const search = params.filter.q || '';

            const url = `${apiUrl}/services?page=${page}&perPage=${perPage}&_sort=${field}&_order=${order}&search=${search}`;

            return httpClient(url)
                .then(({ json }) => ({
                    data: json.data,
                    total: json.total,
                }));
        }

        if (resource === 'partners') {
            return httpClient(`${apiUrl}/partners`)
                .then(({ json }) => ({
                    data: json.map((partner, index) => ({ ...partner, id: index + 1 })),  // If no `id` field, generate one
                    total: json.length,  // Assuming the API returns the full list
                }));
        }

        if (resource === 'projects') {
            const { page, perPage } = params.pagination;
            const { field, order } = params.sort;
            const search = params.filter.q || '';

            const url = `${apiUrl}/projects?page=${page}&perPage=${perPage}&_sort=${field}&_order=${order}&search=${search}`;

            return httpClient(url)
                .then(({ json }) => ({
                    data: json.data,
                    total: json.total,
                }));
        }

        if (resource === 'about-us') {
            return httpClient(`${apiUrl}/about-us`)
                .then(({ json }) => ({
                    data: Array(json),
                    total:1// Assuming API returns a single AboutUs entry
                }));
        }
        if (resource === 'contactings') {
            let arr;
            return httpClient(`${apiUrl}/contactings/contact`)
                .then(({ json }) => ({

                    data: json.map((item) => ({
                        ...item, // keep all the fields from the original API
                        id: item.id // Ensure there's an 'id' field
                    })),
                    total: json.length //
                }));
        }
        if (resource === 'blogs') {
            const { page, perPage } = params.pagination;
            const { field, order } = params.sort;

            // Adjust API to handle pagination and sorting
            const url = `${apiUrl}/blogs?_page=${page}&_perPage=${perPage}&_sort=${field}&_order=${order}`;

            return httpClient(url)
                .then(({ json }) => ({
                    data: json.data,   // The array of blog objects
                    total: json.total, // The total count for pagination
                }));
        }


        if (resource === 'pages') {

            // Adjust API to handle pagination and sorting
            const url = `${apiUrl}/static/pages`;

            return httpClient(url)
                .then(({ json }) => ({
                    data: json.data,   // The array of blog objects
                    total: json.total, // The total count for pagination
                }));
        }

        if (resource === 'statictexts') {

            const query = {
                ...params.filter,
            };




            const url = `${apiUrl}/static/texts?${queryString.stringify(query)}`;
            return httpClient(url)
                .then(({ json }) => {
                    return {
                        data: json.data,  // The array of objects
                        total: json.total // The total count for pagination
                    };
                });
        }

        return simpleRestProvider(apiUrl, httpClient).getList(resource, params);
    },




    // Fetch the single AboutUs entry
    getOne: (resource, params) => {
        if (resource === 'about-us') {
            return httpClient(`${apiUrl}/about-us`)
                .then(({ json }) => ({
                    data: json,  // Assuming API returns a single AboutUs entry
                }));
        }


        if (resource === 'services') {
            return httpClient(`${apiUrl}/services/${params.id}`)
                .then(({ json }) => ({
                    data: json,
                }));
        }

        if (resource === 'projects') {
            return httpClient(`${apiUrl}/projects/${params.id}`)
                .then(({ json }) => ({
                    data: json,
                }));
        }
        if (resource === 'contactings') {
            return httpClient(`${apiUrl}/contactings/contact`)
                .then(({ json }) => {
                    const contact = json.find(item => item.id == params.id);
                    if (!contact) {
                        return Promise.reject(new Error("Setting does not exist"));
                    }
                    return { data: contact };
                });
        }


        if (resource === 'partners') {
            return httpClient(`${apiUrl}/partners`)
                .then(({ json }) => {
                    const partners = json.find(item => item.id == params.id);
                    if (!partners) {
                        return Promise.reject(new Error("Parthners does not exist"));
                    }
                    return { data: partners };
                });
        }

        if (resource === 'blogs') {
            return httpClient(`${apiUrl}/blogs/${params.id}`)
                .then(({ json }) => {
                    return { data: json};
                });
        }

        // Handle for settings resource
        if (resource === 'settings') {
            return httpClient(`${apiUrl}/settings`)
                .then(({ json }) => {
                    const setting = json.data.find(item => item.id == params.id);
                    if (!setting) {
                        return Promise.reject(new Error("Setting does not exist"));
                    }
                    return { data: setting };
                });
        }

        if (resource === 'statictexts') {
            return httpClient(`${apiUrl}/static/text/${params.id}`)
                .then(({ json }) => ({
                    data: json,
                }));
        }


        if (resource === 'pages') {
            return httpClient(`${apiUrl}/static/page/${params.id}`)
                .then(({ json }) => ({
                    data: json,
                }));
        }





        // Fallback to default behavior for other resources
        return simpleRestProvider(apiUrl, httpClient).getOne(resource, params);
    },

    // Update the AboutUs entry, including nested Subbrands and BrandValues
    update: (resource, params) => {
        if (resource === 'about-us') {
            const formData = new FormData();

            // Append AboutUs fields
            formData.append('header_text', params.data.header_text);
            formData.append('short_description', params.data.short_description);
            formData.append('long_description', params.data.long_description || '');
            formData.append('image_alt', params.data.image_alt || '');

            // Handle image upload (if provided)
            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);
            }

            // Handle Subbrands (if provided)
            if (params.data.subbrands) {
                params.data.subbrands.forEach((subbrand, index) => {
                    if (subbrand.logo && subbrand.logo.rawFile) {
                        formData.append(`subbrands[${index}][logo]`, subbrand.logo.rawFile);
                    }
                    formData.append(`subbrands[${index}][logo_alt]`, subbrand.logo_alt);
                    formData.append(`subbrands[${index}][about_us_id]`, params.id);
                    formData.append(`subbrands[${index}][id]`, subbrand.id ? subbrand.id : null);
                });
            }

            // Handle Brand Values (if provided)
            if (params.data.brand_values) {
                params.data.brand_values.forEach((brandValue, index) => {
                    // Handle icon file upload
                    if (brandValue.icon && brandValue.icon.rawFile) {
                        formData.append(`brand_values[${index}][icon]`, brandValue.icon.rawFile);
                    }

                    formData.append(`brand_values[${index}][title]`, brandValue.title);
                    formData.append(`brand_values[${index}][description]`, brandValue.description);
                    formData.append(`brand_values[${index}][about_us_id]`, params.id);

                    // Only append 'id' if it exists (for updating existing brand values)
                    if (brandValue.id) {
                        formData.append(`brand_values[${index}][id]`, brandValue.id);
                    }
                });
            }

            // Ensure it's an update request
            formData.append('_method', 'PUT');

            // Send the request
            return httpClient(`${apiUrl}/admin/about-us/${params.id}`, {
                method: 'POST',  // To support file uploads, using POST with PUT method override
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }



        if (resource === 'partners') {
            const formData = new FormData();
            formData.append('alt_text', params.data.alt_text);
            formData.append('website_link', params.data.website_link);

            if (params.data.logo && params.data.logo.rawFile) {
                formData.append('logo', params.data.logo.rawFile);  // Handle logo file
            }
            formData.append('_method', 'PUT');


            return httpClient(`${apiUrl}/admin/partners/${params.id}`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }

        if (resource === 'blogs') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('subtitle', params.data.subtitle);
            formData.append('content', params.data.content);

            formData.append('_method', 'PUT');
            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile); // Ensure the raw file is appended
            }

            return httpClient(`${apiUrl}/admin/blogs/${params.id}`, {
                method: 'POST',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json }));
        }






        if (resource === 'pages') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('slug', params.data['slug']);
            formData.append('hero_title', params.data.title);
            formData.append('hero_description', params.data['hero_description']);
            formData.append('is_active', Number(params.data['is_active']));
            formData.append('_method', 'PUT');
            if (params.data.image && params.data.hero_image.rawFile) {
                formData.append('hero_image', params.data['hero_image'].rawFile); // Ensure the raw file is appended
            }

            return httpClient(`${apiUrl}/admin/page/${params.id}`, {
                method: 'POST',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json.data }));
        }


        if (resource === 'contactings') {
            const formData = new FormData();
            formData.append('name', params.data.name);
            formData.append('mail', params.data.mail);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);
            }

            formData.append("_method", "PUT");

            return httpClient(`${apiUrl}/admin/contactings/${params.id}`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }

        // Handle settings resource update
        if (resource === 'settings') {
            return httpClient(`${apiUrl}/admin/settings/${params.id}`, {
                method: 'PUT',
                body: JSON.stringify(params.data),
            }).then(({ json }) => ({ data: json }));
        }

        if (resource === 'translations' || resource === 'languages') {
            return httpClient(`${apiUrl}/admin/${resource}/${params.id}`, {
                method: 'PUT',
                body: JSON.stringify(params.data),
            }).then(({ json }) => ({ data: json }));
        }



        if (resource === 'services') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('subtitle', params.data.subtitle);
            formData.append('content', params.data.content);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);  // Handle image file
            }

            return httpClient(`${apiUrl}/admin/services/${params.id}`, {
                method: 'PUT',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }

        if (resource === 'projects') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('description', params.data.description);
            formData.append('date', params.data.date);
            formData.append('client', params.data.client);
            formData.append('location', params.data.location);
            formData.append('category', params.data.category);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);  // Handle image file
            }

            formData.append('_method', "PUT");

            return httpClient(`${apiUrl}/admin/projects/${params.id}`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }



        if (resource === 'statictexts') {
            const formData = new FormData();
            formData.append('key', params.data.key);
            formData.append('text', params.data.text);
            formData.append('_method', 'PUT');

            return httpClient(`${apiUrl}/admin/static/${params.id}`, {
                method: 'POST',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json.data }));
        }

        // Fallback for other resources
        return simpleRestProvider(apiUrl, httpClient).update(resource, params);
    },

    // Create a new entry (this could also handle AboutUs creation)
    create: (resource, params) => {
        if (resource === 'about-us') {
            const formData = new FormData();

            // Append AboutUs fields
            formData.append('header_text', params.data.header_text);
            formData.append('short_description', params.data.short_description);
            formData.append('long_description', params.data.long_description || '');
            formData.append('image_alt', params.data.image_alt || '');

            // Handle image upload (if provided)
            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);
            }

            // Handle Subbrands (if provided)
            if (params.data.subbrands) {
                params.data.subbrands.forEach((subbrand, index) => {
                    if (subbrand.logo && subbrand.logo.rawFile) {
                        formData.append(`subbrands[${index}][logo]`, subbrand.logo.rawFile);
                    }
                    formData.append(`subbrands[${index}][logo_alt]`, subbrand.logo_alt);
                });
            }

            // Handle Brand Values (if provided)
            if (params.data.brand_values) {
                params.data.brand_values.forEach((brandValue, index) => {
                    if (brandValue.icon && brandValue.icon.rawFile) {
                        formData.append(`brand_values[${index}][icon]`, brandValue.icon.rawFile);
                    }
                    formData.append(`brand_values[${index}][title]`, brandValue.title);
                    formData.append(`brand_values[${index}][description]`, brandValue.description);
                });
            }

            return httpClient(`${apiUrl}/admin/about-us`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({ data: json }));
        }

        if (resource === 'partners') {
            const formData = new FormData();
            formData.append('alt_text', params.data.alt_text);
            formData.append('website_link', params.data.website_link);

            if (params.data.logo && params.data.logo.rawFile) {
                formData.append('logo', params.data.logo.rawFile);  // Handle logo file
            }

            return httpClient(`${apiUrl}/admin/partners`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }

        if (resource === 'projects') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('description', params.data.description);
            formData.append('date', params.data.date);
            formData.append('client', params.data.client);
            formData.append('location', params.data.location);
            formData.append('category', params.data.category);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);  // Handle image file
            }

            return httpClient(`${apiUrl}/admin/projects`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }

        if (resource === 'contactings') {
            const formData = new FormData();
            formData.append('name', params.data.name);
            formData.append('mail', params.data.mail);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);
            }

            return httpClient(`${apiUrl}/admin/contactings`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }


        if (resource === 'services') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('subtitle', params.data.subtitle);
            formData.append('content', params.data.content);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);  // Handle image file
            }

            return httpClient(`${apiUrl}/admin/services`, {
                method: 'POST',
                body: formData,
            }).then(({ json }) => ({
                data: json,
            }));
        }
        // Fallback for settings resource creation
        if (resource === 'settings') {
            return httpClient(`${apiUrl}/admin/settings`, {
                method: 'POST',
                body: JSON.stringify(params.data),
            }).then(({ json }) => ({ data: json }));
        }


        if (resource === 'statictexts') {
            const formData = new FormData();
            formData.append('key', params.data.key);
            formData.append('text', params.data.text);


            return httpClient(`${apiUrl}/admin/static`, {
                method: 'POST',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json }));
        }


        if (resource === 'pages') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('slug', params.data.slug);
            formData.append('hero_title', params.data.title);
            formData.append('hero_description', params.data.hero_description);
            formData.append('is_active', params.data.is_active);
            if (params.data.image && params.data.hero_image.rawFile) {
                formData.append('hero_image', params.data.image.rawFile); // Ensure the raw file is appended
            }

            return httpClient(`${apiUrl}/admin/pages`, {
                method: 'POST',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json }));
        }

        if (resource === 'translations' || resource === 'languages') {
            return httpClient(`${apiUrl}/admin/${resource}`, {
                method: 'POST',
                body: JSON.stringify(params.data),
            }).then(({ json }) => ({ data: json }));
        }


        if (resource === 'blogs') {
            const formData = new FormData();
            formData.append('title', params.data.title);
            formData.append('subtitle', params.data.subtitle);
            formData.append('content', params.data.content);

            if (params.data.image && params.data.image.rawFile) {
                formData.append('image', params.data.image.rawFile);
            }

            return httpClient(`${apiUrl}/admin/blogs`, {
                method: 'POST',
                body: formData,
            }).then(({ json })=> ({ data: json })).catch(({e}) => {console.log(e)});
        }

        // Fallback for other resources
        return simpleRestProvider(apiUrl, httpClient).create(resource, params);
    },

    getMany: (resource, params) => {
        const query = {
            filter: JSON.stringify({ id: params.ids }),
        };
        const url = `${apiUrl}/${resource}?${queryString.stringify(query)}`;
        return httpClient(url).then(({ json }) => ({
            data: json.data,
        }));
    },

    getManyReference: (resource, params) => {
        const { page, perPage } = params.pagination;
        const { field, order } = params.sort;
        const query = {
            sort: field,
            order: order,
            page: page,
            per_page: perPage,
            filter: params.filter,
        };
        const url = `${apiUrl}/${resource}?${queryString.stringify(query)}`;
        return httpClient(url).then(({ json }) => ({
            data: json.data,
            total: json.meta.total,
        }));
    },










    // Handle deleting the AboutUs resource
    delete: (resource, params) => {
        if (resource === 'about-us') {
            return httpClient(`${apiUrl}/admin/about-us/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({
                data: json,
            }));
        }

        // Fallback for settings resource delete
        if (resource === 'settings') {
            return httpClient(`${apiUrl}/admin/settings/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({ data: json }));
        }




        if (resource === 'blogs') {
            return httpClient(`${apiUrl}/admin/blogs/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({
                data: json,
            }));
        }


        if (resource === 'statictexts') {
            const formData = new FormData();
            formData.append('key', params.data.key);
            formData.append('text', params.data.text);


            return httpClient(`${apiUrl}/admin/static/${params.id}`, {
                method: 'DELETE',
                body: formData, // Send the FormData with the file

            }).then(({ json }) => ({ data: json }));
        }

        if (resource === 'partners') {
            return httpClient(`${apiUrl}/admin/partners/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({
                data: json,
            }));
        }

        if (resource === 'contactings') {
            return httpClient(`${apiUrl}/admin/contactings/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({
                data: json,
            }));
        }


        if (resource === 'translations' || resource === 'languages') {
            return httpClient(`${apiUrl}/admin/${resource}/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({ data: json }));
        }

        if (resource === 'projects') {
            return httpClient(`${apiUrl}/admin/projects/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({
                data: json,
            }));
        }


        if (resource === 'pages') {
            return httpClient(`${apiUrl}/admin/page/${params.id}`, {
                method: 'DELETE',
            }).then(({ json }) => ({ data: json }));
        }


        // Fallback for other resources
        return simpleRestProvider(apiUrl, httpClient).delete(resource, params);
    },
};

export const dataProvider  = myDataProvider