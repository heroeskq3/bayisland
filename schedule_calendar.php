<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Planificador - Calendario',
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
        require_once 'class/views/calendar/events/viewEventCalendar.php';
        break;
    case 'addEvent':
        require_once 'class/views/calendar/events/addEvent.php';
        break;
    case 'editEventTitle':
        require_once 'class/views/calendar/events/editEventTitle.php';
        break;
    case 'editEventDate':
        require_once 'class/views/calendar/events/editEventDate.php';
        break;
}

require_once 'footer.php';
