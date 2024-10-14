
import * as React from 'react';
import {Menu, useDataProvider} from 'react-admin';
import { Box } from '@mui/material';
import {API_BASE_URL} from "./config";

const CustomMenu = (props) => {


    return (
    <Box style={{padding:0, display:'flex', flexDirection:'column', alignItems:'center'}}>
        <Menu {...props} />
    </Box>
)};

export default CustomMenu;
