<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Privileges Manager',
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

//methods
switch ($action) {
    
    default:
        require_once 'class/views/privileges/privileges_add.php';
        require_once 'class/views/privileges/privileges_list.php';
        break;

    case 'add':
        require_once 'class/views/privileges/privileges_add.php';
        require_once 'class/views/privileges/privileges_list.php';
        break;

    case 'update':
        require_once 'class/views/privileges/privileges_update.php';
        break;

    case 'delete':
        require_once 'class/views/privileges/privileges_delete.php';
        break;     
}

require_once 'footer.php';