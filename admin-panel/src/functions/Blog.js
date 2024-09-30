import * as React from 'react';
import {
    List,
    Datagrid,
    TextField,
    ImageField,
    EditButton,
    DeleteButton,
    Pagination,
    Edit,
    SimpleForm,
    TextInput,
    ImageInput,
    Create,
} from 'react-admin';





// List component for displaying blogs
export const BlogList = (props) => (
    <List {...props} pagination={<Pagination />} title="All Blogs" perPage={10}>
        <Datagrid rowClick="edit">
            <TextField source="title" label="Title" />
            <TextField source="subtitle" label="Subtitle" />
            <TextField source="content" label="Content" />

            <ImageField source="image" />


            <EditButton />
            <DeleteButton />
        </Datagrid>
    </List>
);

// Edit component for editing a blog
export const BlogEdit = (props) => (
    <Edit {...props} title="Edit Blog">
        <SimpleForm>
            <TextInput source="title" label="Title" fullWidth />
            <TextInput source="subtitle" label="Subtitle" fullWidth />
            <TextInput source="content"  label="Content" multiline fullWidth  multiline/>
            {/* Adjust ImageField to include the full URL */}
            <TextField value="Current Image" />
            <ImageField  source="image"/>
            <ImageInput source="image" label=" New Blog Image" accept=".jpg,.png,.jpeg">
                <ImageField  source="src"/>
            </ImageInput>

        </SimpleForm>
    </Edit>
);

// Create component for creating a new blog
export const BlogCreate = (props) => (
    <Create {...props} title="Create New Blog">
        <SimpleForm>
            <TextInput source="title" label="Title" fullWidth  required/>
            <TextInput source="subtitle" label="Subtitle" fullWidth required />
            <TextInput source="content" label="Content" multiline fullWidth required  multiline/>
            {/* Image upload for new blog */}
            <ImageInput source="image" label="Blog Image" accept=".jpg,.png,.jpeg" required>
                <ImageField source="image" />
            </ImageInput>
        </SimpleForm>
    </Create>
);
