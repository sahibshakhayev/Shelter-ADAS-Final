import {
    List,
    Filter,
    Datagrid,
    ReferenceInput,
    ReferenceField,
    TextField,
    EditButton,
    DeleteButton,
    Edit,
    SimpleForm,
    TextInput,
    useDataProvider,
    SelectInput,
    Create
} from 'react-admin';
import {useEffect, useState} from "react";

// List view for translations

const TranslationFilters = [
    <ReferenceInput source="lang_id" reference="languages"  label="Select Language"  alwaysOn />,
];



export const TranslationList = (props) => {

    return (
    <List {...props} filters={TranslationFilters}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="key" />
            <TextField source="value" />
            <ReferenceField source="language_id"  reference="languages"   label="Language" />
            <EditButton />
            <DeleteButton />
        </Datagrid>
    </List>);
};

// Edit form for translations
export const TranslationEdit = (props) => (
    <Edit {...props}>
        <SimpleForm>
            <TextInput source="key" multiline />
            <TextInput source="value" multiline />
            <ReferenceInput source="language_id" label="Language"  choices={props.languages} reference="languages" />
        </SimpleForm>
    </Edit>
);

// Create form for translations
export const TranslationCreate = (props) => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="key" multiline />
            <TextInput source="value" multiline />
            <ReferenceInput source="language_id" label="Language"  choices={props.languages} reference="languages" />
        </SimpleForm>
    </Create>
);
