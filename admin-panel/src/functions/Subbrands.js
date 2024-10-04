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
export const BrandValuesList = (props) => (
    <List {...props} pagination={<Pagination />} title="All Brand Values" perPage={10}>
        <Datagrid rowClick="edit">
            <TextField source="title" label="Title" />
            <TextField source="description" label="Description" />
            <ImageField source="icon" />
            <EditButton />
            <DeleteButton />
        </Datagrid>
    </List>
);

// Edit component for editing a blog
export const BrandValueEdit = (props) => (
    <Edit {...props} title="Edit Brand Value">
        <SimpleForm>
            <TextInput source="title" label="Title" fullWidth />
            <TextInput source="description" label="Description" fullWidth  multiline/>
            {/* Adjust ImageField to include the full URL */}
            <ImageField  source="icon"/>
            <ImageInput source="icon" label="New Brand Value icon" accept=".jpg,.png,.jpeg">
                <ImageField  source="src"/>
            </ImageInput>

        </SimpleForm>
    </Edit>
);

// Create component for creating a new blog
export const BrandValueCreate = (props) => (
    <Create {...props} title="Create Brand Value">
        <SimpleForm>
            <TextInput source="title" label="Title" fullWidth  required/>
            <TextInput source="description" label="Description" fullWidth required  multiline/>
            {/* Image upload for new blog */}
            <ImageInput source="icon" label="Brand Value icon" accept=".jpg,.png,.jpeg" required>
                <ImageField source="icon" />
            </ImageInput>
        </SimpleForm>
    </Create>
);
