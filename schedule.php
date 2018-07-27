<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Planificador',
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

switch ($action) {

    default:
        require_once 'class/views/schedule/schedule_add.php';
        require_once 'class/views/schedule/schedule_list.php';
        break;
    case 'update':
        require_once 'class/views/schedule/schedule_update.php';
        break;
    case 'delete':
        require_once 'class/views/schedule/schedule_delete.php';
        break;
}

require_once 'footer.php';
