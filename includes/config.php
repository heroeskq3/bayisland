<?php
//define config
define('CONFIG_FAVICON', 'favicon.ico');

define('CONFIG_LANG', 'en'); //define default language
define('CONFIG_LOGOICON', 'logo-icon-bayisland.png');
define('CONFIG_LOGOHEADER', 'bayisland-logo.png');
define('CONFIG_SUPPORTPHONE', '4444-0000');
define('CONFIG_SUPPORTEMAIL', 'ovaldesigncr@hotmail.com');
define('CONFIG_LICENSEDUNDER', 'http://www.oval.co.cr');

//DEFINE META
define('CONFIG_METATITTLE', 'Bay Island');
define('CONFIG_METADESCRIPTION', 'Sin definir');
define('CONFIG_METAKEYWORDS', 'Si,Definir');

//MYSQL DEFINE ACCESS INFORMATION
define('CONFIG_MYSQLHOST', 'localhost'); //al tratar de romper la conexion hay un mensaje en javascript que seri abueno replicar para otros fines
define('CONFIG_MYSQLUSER', 'root');
define('CONFIG_MYSQLPASS', '');
define('CONFIG_MYSQLPORT', ''); //Default 3306

//FTP DEFINE ACCESS INFORMATION
define('FTP_HOST', '127.0.0.1');
define('FTP_USER', 'ftpuser');
define('FTP_PASS', 'password');
define('FTP_PORT', '21'); //Default 21

//DEFINE PATH
define('PATH_CONTROLLERS', 'class/controllers/');
define('PATH_MODELS', 'class/models/');
define('PATH_VIEWS', 'class/views/');
define('PATH_INCLUDES', 'includes/');
define('PATH_RESOURCES', 'resources/');
define('PATH_PROFILEPICTURE', 'resources/profile/');
define('PATH_LANG', 'lang/');

//DEFINE INCLUDES
require_once PATH_CONTROLLERS . 'controllers.php';
