<?php
//class library

//SYSTEM
require_once PATH_MODELS . 'class_conn.php';
require_once PATH_MODELS . 'class_login.php';

require_once PATH_MODELS . 'class_api.php';
require_once PATH_MODELS . 'class_mysql.php';
require_once PATH_MODELS . 'class_array.php';

//CONFIG
require_once PATH_MODELS . 'class_lang.php';
//require_once PATH_MODELS . 'class_config.php'; //en este habiria que tarbajar ahora define basic config VARS

//USERS
require_once PATH_MODELS . 'class_usersinfo.php';
require_once PATH_MODELS . 'class_usersinfoupdate.php';
require_once PATH_MODELS . 'class_userspasswordupdate.php';
//require_once PATH_MODELS . 'class_userslist.php'; //en este habiria que tarbajar ahora

//MENU ASSIDE
require_once PATH_MODELS . 'class_assidemenulist.php';
require_once PATH_MODELS . 'class_assidesubmenulist.php';

//DEBUGGER
require_once PATH_MODELS . 'class_debug.php';
require_once PATH_MODELS . 'class_phperror.php';

//UPLOAD FILES
require_once PATH_MODELS . 'class_filesupload.php';

//FORMS
require_once PATH_MODELS . 'class_formgenerator.php';
require_once PATH_MODELS . 'class_forminput.php';

//TABLES
require_once PATH_MODELS . 'class_tablegenerator.php';
require_once PATH_MODELS . 'class_tablemenulist.php';
require_once PATH_MODELS . 'class_tablesubmenulist.php';
require_once PATH_MODELS . 'class_tablepager.php';
require_once PATH_MODELS . 'class_tablemain.php';
require_once PATH_MODELS . 'class_tablechilds.php';
require_once PATH_MODELS . 'class_tablescripts.php';
require_once PATH_MODELS . 'class_datatable.php';

//STATUS
require_once PATH_MODELS . 'class_statusInfo.php';

//SETTINGS

//SETTINGS - MENU
require_once PATH_MODELS . 'class_menulist.php';
require_once PATH_MODELS . 'class_menuinfo.php';
require_once PATH_MODELS . 'class_menuadd.php';
require_once PATH_MODELS . 'class_menudelete.php';
require_once PATH_MODELS . 'class_menuupdate.php';
require_once PATH_MODELS . 'class_submenulist.php';
require_once PATH_MODELS . 'class_iconlist.php';

//CUSTOM SECTIONS
/*
//SECTIONS - VISITS
require_once PATH_MODELS . 'class_visitslist.php';
require_once PATH_MODELS . 'class_visitsadd.php';
require_once PATH_MODELS . 'class_visitsdel.php';
require_once PATH_MODELS . 'class_visitsupdate.php';

//SECTIONS - CUSTOMERS
require_once PATH_MODELS . 'class_customerslist.php';
require_once PATH_MODELS . 'class_customersadd.php';
require_once PATH_MODELS . 'class_customersdel.php';
require_once PATH_MODELS . 'class_customersupdate.php';

//SECTIONS - AGENTS
require_once PATH_MODELS . 'class_agentslist.php';
require_once PATH_MODELS . 'class_agentsadd.php';
require_once PATH_MODELS . 'class_agentsdel.php';
require_once PATH_MODELS . 'class_agentsupdate.php';


//SECTIONS - NOTIFY
require_once PATH_MODELS . 'class_notify.php';

//SECTIONS - REPORTS
require_once PATH_MODELS . 'class_resports.php';

//SECTIONS - HOME
require_once PATH_MODELS . 'class_dashboard.php';
*/