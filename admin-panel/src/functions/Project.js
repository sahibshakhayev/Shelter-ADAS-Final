import React from 'react';
import { List, Datagrid, TextField,EditButton, DeleteButton, Edit, Create, SimpleForm, TextInput, DateInput, ImageField, ImageInput } from 'react-admin';

// List component for Project




export const ProjectList = props => (
    <List {...props}>
        <Datagrid>
            <TextField source="id" />
            <TextField source="title" />
            <TextField source="description" />
            <TextField source="client" />
            <TextField source="location" />
            <TextField source="category" />
            <TextField source="date" />
            <ImageField source="src" />
            <EditButton basePath="/projects" />
            <DeleteButton basePath="/projects" />
        </Datagrid>
    </List>
);

// Edit component for Project
export const ProjectEdit = props => (
    <Edit {...props}>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="description" />
            <TextInput source="client" />
            <TextInput source="location" />
            <TextInput source="category" />
            <DateInput source="date" />
            <ImageInput source="image" label="Project Image" accept="image/*">
                <ImageField source="src" />
            </ImageInput>
        </SimpleForm>
    </Edit>
);

// Create component for Project
export const ProjectCreate = props => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="description" />
            <TextInput source="client" />
            <TextInput source="location" />
            <TextInput source="category" />
            <DateInput source="date" />
            <ImageInput source="image" label="Project Image" accept="image/*">
                <ImageField source="src" />
            </ImageInput>
        </SimpleForm>
    </Create>
);
