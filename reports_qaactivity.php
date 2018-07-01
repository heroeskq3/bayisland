<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Informe de Actividad',
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
switch (isset($_POST['action'])) {
    
    default:
        require_once 'class/views/reports/qa/qa_activity.php';
        break;
    case 'Procesar':
        require_once 'class/views/qa/activity/qa_activitycheck.php';
        break;
}

require_once 'footer.php';
