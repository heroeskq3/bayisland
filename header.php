<?php
ob_start();
require_once 'includes/restrict.php';
require_once 'includes/config.php';
require_once 'includes/globals.php';
if (1) {
    //HTML VIEWS
    ClassViews('class_html'); //html header
    ClassViews('class_asside'); //asside menu
    ClassViews('class_nav'); //nav bar
    
    class_contentArea($section_style,$section_navbar,$section_tittle,$section_searchbar); //content area

    class_scriptsLibrary(); //JS Scripts

    //error_reporting(0); //php error & warning on/off
    set_error_handler("class_phpError"); //php debugger
}
