import * as React from 'react';
import { Admin, Resource } from 'react-admin';


import { dataProvider } from './dataProvider';
import authProvider from './authProvider';
import CustomLoginPage from './CustomLoginPage';


// Import Icons
import BookIcon from '@mui/icons-material/Book';
import ProductIcon from '@mui/icons-material/List'
import SettingsIcon from '@mui/icons-material/Settings';
import ContactPhoneIcon from '@mui/icons-material/ContactPhone';
import PeopleIcon from '@mui/icons-material/People';
import BusinessIcon from '@mui/icons-material/Business';
import StarIcon from '@mui/icons-material/Star';
import WorkIcon from '@mui/icons-material/Work';
import BuildIcon from '@mui/icons-material/Build';
import InfoIcon from '@mui/icons-material/Info';
import LanguageIcon from '@mui/icons-material/Language';
import TranslateIcon from '@mui/icons-material/Translate';
import PagesIcon from '@mui/icons-material/Pages';
import TextFieldsIcon from '@mui/icons-material/TextFields';

// Import components
import { ProjectList, ProjectEdit, ProjectCreate } from './functions/Project';
import { AboutUsList, AboutUsEdit } from './functions/aboutUs';
import { SettingList, SettingEdit, SettingCreate } from './functions/Settings';
import { BlogList, BlogEdit, BlogCreate } from './functions/Blog';
import { ContactingList, ContactingEdit, ContactingCreate } from './functions/Contactings';
import { PartnerList, PartnerEdit, PartnerCreate } from './functions/Partner';
import { ServiceList, ServiceEdit, ServiceCreate } from './functions/Service';
import { TranslationCreate, TranslationEdit, TranslationList } from "./functions/Translations";
import { LanguageCreate, LanguageEdit, LanguageList } from "./functions/Languages";
import { PageCreate, PageEdit, PageList } from "./functions/Pages";
import { StaticTextCreate, StaticTextEdit, StaticTextList } from "./functions/StaticText";
import { SubbrandsList, SubbrandCreate, SubbrandEdit } from "./functions/Subbrands";
import { BrandValuesList, BrandValueCreate, BrandValueEdit } from "./functions/BrandValues";
import myTheme from "./myTheme";
import CustomDashboard from "./CustomDashboard";
import CustomLayout from "./CustomLayout";
import {ProductCreate, ProductEdit, ProductList} from "./functions/Products";
import {CategoryCreate, CategoryEdit, CategoryList} from "./functions/Category";
import {SubcategoryCreate, SubcategoryEdit, SubcategoryList} from "./functions/Subcategory";


const App = () => (

        <Admin
            dashboard={CustomDashboard}
            dataProvider={dataProvider}
            authProvider={authProvider}
            loginPage={CustomLoginPage}
            layout={CustomLayout}
            theme={myTheme}
        >
            <Resource name="blogs" list={BlogList} edit={BlogEdit} create={BlogCreate} icon={BookIcon} />
            <Resource name="about-us" list={AboutUsList} edit={AboutUsEdit} icon={InfoIcon} />
            <Resource name="subbrands" list={SubbrandsList} edit={SubbrandEdit} create={SubbrandCreate} icon={BusinessIcon} />
            <Resource name="brandvalues" list={BrandValuesList} edit={BrandValueEdit} create={BrandValueCreate} icon={StarIcon} />
            <Resource name="projects" list={ProjectList} edit={ProjectEdit} create={ProjectCreate} icon={WorkIcon} />
            <Resource name="services" list={ServiceList} edit={ServiceEdit} create={ServiceCreate} icon={BuildIcon} />
            <Resource name="settings" list={SettingList} edit={SettingEdit} create={SettingCreate} icon={SettingsIcon} />
            <Resource name="contactings" list={ContactingList} edit={ContactingEdit} create={ContactingCreate} icon={ContactPhoneIcon} />
            <Resource name="partners" list={PartnerList} edit={PartnerEdit} create={PartnerCreate} icon={PeopleIcon} />
            <Resource name="pages" list={PageList} edit={PageEdit} create={PageCreate} icon={PagesIcon} />
            <Resource name="products" list={ProductList} edit={ProductEdit}  create={ProductCreate} icon={ProductIcon} />
            <Resource name="categories" list={CategoryList} edit={CategoryEdit} create={CategoryCreate} icon={BookIcon} />
            <Resource name="subcategories" list={SubcategoryList} edit={SubcategoryEdit} create={SubcategoryCreate} icon={BusinessIcon} />
            <Resource name="statictexts" list={StaticTextList} edit={StaticTextEdit} create={StaticTextCreate} icon={TextFieldsIcon} />
            <Resource name="translations" list={TranslationList} edit={TranslationEdit} create={TranslationCreate} icon={TranslateIcon} />
            <Resource name="languages" list={LanguageList} edit={LanguageEdit} create={LanguageCreate} icon={LanguageIcon} />
        </Admin>


);

export default App;
