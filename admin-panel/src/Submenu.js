import React from "react";
import MenuItem from "@mui/material/MenuItem";
import ListItemIcon from "@mui/material/ListItemIcon";
import ExpandLess from "@mui/icons-material/ExpandLess";
import ListItemText from "@mui/material/ListItemText";
import Collapse from "@mui/material/Collapse";



const Submenu = ({text, icon, children}) => {
    const [open, setOpen] = React.useState(false);

    const handleClick = () => {
        setOpen(!open);
    };

    return <>
        <MenuItem onClick={handleClick}>
            <ListItemIcon>
                {open ? <ExpandLess /> : icon}
            </ListItemIcon>
            <ListItemText primary={text} />
        </MenuItem>
        <Collapse in={open} timeout="auto" unmountOnExit sx={{
            '& .RaMenuItemLink-icon': {
                paddingLeft: 1
            }
        }}>
            {children}
        </Collapse>
    </>
}

export default Submenu;