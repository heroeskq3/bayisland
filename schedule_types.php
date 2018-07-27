<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Planificador - Tipos',
    'description' => '',
    'homedir'     => '',
    'restrict'    => true,
    'navbar'      => true,
    'sidebar'     => true,
    'searchbar'   => false,
    'style'       => true,
    'debug'       => false,
);
require_once 'header.php';
//TODO: probando updtae de tipos
//methods
switch ($action) {

    default:
        require_once 'class/views/calendar/types/calendar_typesadd.php';
        require_once 'class/views/calendar/types/calendar_typeslist.php';
        break;
    case 'update':
        require_once 'class/views/calendar/types/calendar_typesupdate.php';
        break;
    case 'delete':
        require_once 'class/views/calendar/types/calendar_typesdelete.php';
        break;
}

require_once 'footer.php';
