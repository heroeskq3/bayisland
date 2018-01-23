<?php
ob_start();
require_once 'includes/config.php';
require_once 'includes/globals.php';

 ClassViews('class_html'); //html header

error_reporting(0); //php error & warning on/off
set_error_handler("class_phpError"); //php debugger
?>
