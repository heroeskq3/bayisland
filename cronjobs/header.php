<?php
ob_start();
require_once $sectionParams['homedir'] . 'includes/config.php';

if ($sectionParams['debug']) {
    error_reporting(1); //php error & warning on/off
    set_error_handler("class_phpError"); //php debugger
}
require_once PATH_INCLUDES . 'globals.php';
require_once PATH_INCLUDES . 'languages.php';
