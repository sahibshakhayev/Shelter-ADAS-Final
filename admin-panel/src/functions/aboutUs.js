import * as React from 'react';
import {
    List,
    Datagrid,
    Edit,
    EditButton,
    SimpleForm,
    TextInput,
    ImageInput,
    TextField,
    ImageField,
    ArrayInput,
    SimpleFormIterator,
} from 'react-admin';







// The Edit component for managing About Us
export const AboutUsEdit = (props) => (
    <Edit {...props} title="Edit About Us">
        <SimpleForm>
            {/* Basic About Us information */}
            <TextInput source="header_text" label="Header Text" fullWidth />
            <TextInput source="short_description"  multiline label="Short Description" fullWidth />
            <TextInput source="long_description"   multiline label="Long Description" fullWidth multiline />
            <TextInput source="image_alt" label="Image Alt Text" />
            <ImageField source="left_image"/>
            <ImageInput source="image" label="Upload Image" accept="image/*">
                <ImageField source="src" />
            </ImageInput>

            {/* Subbrands Section */}
            <ArrayInput source="subbrands" label="Subbrands">
                <SimpleFormIterator>
                    <TextInput source="logo_alt" label="Logo Alt" />
                    <ImageField source="logo" />
                    <ImageInput source="logo" label="Logo" accept="image/*">
                        <ImageField source="src" />
                    </ImageInput>
                </SimpleFormIterator>
            </ArrayInput>

            {/* Brand Values Section */}
            <ArrayInput source="brand_values" label="Brand Values">
                <SimpleFormIterator>
                    <TextInput source="title" label="Title" fullWidth />
                    <TextInput source="description" label="Description" fullWidth multiline />
                    <ImageField source="icon" />
                    <ImageInput source="icon" label="Icon" accept="image/*">
                       <ImageField source="src" />
                    </ImageInput>
                </SimpleFormIterator>
            </ArrayInput>
        </SimpleForm>
    </Edit>
);

export const AboutUsList = (props) => (
    <List {...props} pagination={false} perPage={1} title="About Us">
        <Datagrid>
            <TextField source="header_text" label="Header Text" />
            <TextField source="short_description" label="Short Description" />
            <EditButton />
        </Datagrid>
    </List>
);
