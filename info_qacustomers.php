<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Clientes - Información',
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
        require_once 'class/views/info/qa/qa_customers.php';
        break;
}

require_once 'footer.php';
