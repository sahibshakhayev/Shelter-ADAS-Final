// functions/Subcategory.js
import * as React from 'react';
import {
    List,
    Datagrid,
    TextField,
    ReferenceField,
    EditButton,
    Edit,
    SimpleForm,
    TextInput,
    ReferenceInput,
    SelectInput,
    Create,
    DeleteButton
} from 'react-admin';

export const SubcategoryList = (props) => (
    <List {...props}>
        <Datagrid>
            <TextField source="id" />
            <TextField source="name" />
            <ReferenceField label="Category" source="category_id" reference="categories">
                <TextField source="name" />
            </ReferenceField>
            <EditButton />
            <DeleteButton/>
        </Datagrid>
    </List>
);

export const SubcategoryEdit = (props) => (
    <Edit {...props}>
        <SimpleForm>
            <TextInput source="name" />
            <ReferenceInput label="Category" source="category_id" reference="categories">
                <SelectInput optionText="name" />
            </ReferenceInput>
        </SimpleForm>
    </Edit>
);

export const SubcategoryCreate = (props) => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="name" />
            <ReferenceInput label="Category" source="category_id" reference="categories">
                <SelectInput optionText="name" />
            </ReferenceInput>
        </SimpleForm>
    </Create>
);
