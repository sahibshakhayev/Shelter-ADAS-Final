import * as React from 'react';
import { Admin, Resource } from 'react-admin';
import { dataProvider } from './dataProvider';
import authProvider from './authProvider';
import CustomLoginPage from './CustomLoginPage';

// Import components
import { ProjectList, ProjectEdit, ProjectCreate } from './functions/Project';
import { AboutUsList, AboutUsEdit } from './functions/aboutUs';
import { SettingList, SettingEdit, SettingCreate } from './functions/Settings';
import { BlogList, BlogEdit, BlogCreate } from './functions/Blog';
import { ContactingList, ContactingEdit, ContactingCreate } from './functions/Contactings';
import { PartnerList, PartnerEdit, PartnerCreate } from './functions/Partner';
import { ServiceList, ServiceEdit, ServiceCreate } from './functions/Service';
import {TranslationCreate, TranslationEdit, TranslationList} from "./functions/Translations";
import {LanguageCreate, LanguageEdit, LanguageList} from "./functions/Languages";
import {PageCreate, PageEdit, PageList} from "./functions/Pages";
import {StaticTextCreate, StaticTextEdit, StaticTextList} from "./functions/StaticText";

const App = () => (
    <Admin
        dataProvider={dataProvider}
        authProvider={authProvider}
        loginPage={CustomLoginPage}
    >
        <Resource name="blogs" list={BlogList} edit={BlogEdit} create={BlogCreate} />
        <Resource name="about-us" list={AboutUsList} edit={AboutUsEdit} />
        <Resource name="settings" list={SettingList} edit={SettingEdit} create={SettingCreate} />
        <Resource name="contactings" list={ContactingList} edit={ContactingEdit} create={ContactingCreate} />
        <Resource name="partners" list={PartnerList} edit={PartnerEdit} create={PartnerCreate} />
        <Resource name="projects" list={ProjectList} edit={ProjectEdit} create={ProjectCreate} />

        {/* Register Service resource */}
        <Resource name="services" list={ServiceList} edit={ServiceEdit} create={ServiceCreate} />

        <Resource
            name="translations"
            list={TranslationList}
            edit={TranslationEdit}
            create={TranslationCreate}
        />
        <Resource
            name="languages"
            list={LanguageList}
            edit={LanguageEdit}
            create={LanguageCreate}
        />

        <Resource name="pages" list={PageList} edit={PageEdit} create={PageCreate} />
        <Resource name="statictexts" list={StaticTextList} edit={StaticTextEdit} create={StaticTextCreate} />
    </Admin>
);

export default App;
