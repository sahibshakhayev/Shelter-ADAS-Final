// src/pages.js
import * as React from "react";
import {
    List,
    Datagrid,
    TextField,
    EditButton,
    Edit,
    SimpleForm,
    TextInput,
    BooleanInput,
    Create,
    useRecordContext,
    ImageInput, ImageField
} from "react-admin";

// List View for Pages
export const PageList = () => (
    <List>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="slug" />
            <TextField source="title" />
            <TextField source="is_active" />
            <EditButton />
        </Datagrid>
    </List>
);

// Edit View for Pages
export const PageEdit = () => (
    <Edit>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="slug" />
            <TextInput source="hero_title" />
            <TextInput source="hero_description" />
            <ImageField source="hero_image"/>
            <ImageInput source="hero_image" label="Hero Image">



            </ImageInput>

            <BooleanInput source="is_active" />
        </SimpleForm>
    </Edit>
);

// Create View for Pages
export const PageCreate = () => (
    <Create>
        <SimpleForm>
            <TextInput source="title" />
            <TextInput source="slug" />
            <TextInput source="hero_title" />
            <TextInput source="description" />
            <ImageInput source="hero_image" label="Hero Image" />
            <BooleanInput source="is_active" />
        </SimpleForm>
    </Create>
);
