// functions/Category.js
import * as React from 'react';
import {List, Datagrid, TextField, EditButton, Edit, SimpleForm, TextInput, Create, DeleteButton} from 'react-admin';

export const CategoryList = (props) => (
    <List {...props}>
        <Datagrid>
            <TextField source="id" />
            <TextField source="name" />
            <EditButton />
            <DeleteButton/>
        </Datagrid>
    </List>
);

export const CategoryEdit = (props) => (
    <Edit {...props}>
        <SimpleForm>
            <TextInput source="name" />
        </SimpleForm>
    </Edit>
);

export const CategoryCreate = (props) => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="name" />
        </SimpleForm>
    </Create>
);
