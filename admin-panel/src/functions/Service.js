import React from 'react';
import { List, Datagrid, TextField, EditButton, DeleteButton, Edit, Create, SimpleForm, TextInput, ImageField, ImageInput } from 'react-admin';

// List component for Service



export const ServiceList = props => (
    <List {...props}>
        <Datagrid>
            <TextField source="id" />
            <TextField source="title" />
            <TextField source="subtitle" />
            <TextField source="content" />
            <ImageField source="src" />
            <EditButton basePath="/services" />
            <DeleteButton basePath="/services" />
        </Datagrid>
    </List>
);

// Edit component for Service
export const ServiceEdit = props => (
    <Edit {...props}>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="subtitle" />
            <TextInput source="content" />
            <ImageInput source="image" label="Service Image" accept="image/*">
                <ImageField source="src" />
            </ImageInput>
        </SimpleForm>
    </Edit>
);

// Create component for Service
export const ServiceCreate = props => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="subtitle" />
            <TextInput source="content" />
            <ImageInput source="image" label="Service Image" accept="image/*">
                <ImageField source="src" />
            </ImageInput>
        </SimpleForm>
    </Create>
);
