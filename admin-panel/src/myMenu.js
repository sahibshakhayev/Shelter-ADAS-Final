// src/MyMenu.js
import React from 'react';
import { MenuItemLink } from 'react-admin';
import UpdateUserIcon from '@mui/icons-material/Person';

const MyMenu = () => (
    <>
        {/* Other menu items */}
        <MenuItemLink to="/update-user-type" primaryText="Update User Type" leftIcon={<UpdateUserIcon />} />
    </>
);

export default MyMenu;
