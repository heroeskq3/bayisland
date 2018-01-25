<?php
//Section Parameters
$section_tittle      = "Menu Add";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_add) {
    $menuadd = class_menuAdd($Name, $Description, $Url, $Icon, $MenuId, $Order, $Status);
    header('Location: menu_list.php');
    die();
}

//Menu List
$menulist       = class_menuList();
$array_menulist = array();
foreach ($menulist['response'] as $row_menulist) {
    $array_menulist[] = array('label' => $row_menulist['Name'], 'value' => $row_menulist['Id'], 'selected' => $MenuId);
}

//Icon List
$iconslist       = class_iconsList();
$array_iconslist = array();
foreach ($iconslist['response'] as $row_iconslist) {
    $array_iconslist[] = array('label' => $row_iconslist, 'value' => $row_iconslist, 'selected' => null);
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => '1', 'selected' => $Status);
$array_status[] = array('label' => 'Inactive', 'value' => '0', 'selected' => $Status);

//Order by list
$array_order   = array();
for ($i = 1; $i < 11; ++$i) {
    $array_order[] = array('label' => $i, 'value' => $i, 'selected' => $Order);
}


/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request or multiple values define array (value and label)
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file
 * required = true or false
 * buttonType = submit or back
 * position = 0 = hidden, 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */

//Form Generator
$formFields = array(
    'form_add'    => array('name' => 'form_add', 'label' => 'form_add', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Id'          => array('name' => 'Id', 'label' => 'Id', 'value' => $Id, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Name'        => array('name' => 'Name', 'label' => 'Name', 'value' => $Name, 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Description' => array('name' => 'Description', 'label' => 'Description', 'value' => $Description, 'dataType' => 'Int', 'inputType' => 'false', 'required' => false, 'position' => 1),
    'Url'         => array('name' => 'Url', 'label' => 'Url', 'value' => $Url, 'dataType' => 'Int', 'inputType' => 'text', 'required' => false, 'position' => 2),
    'Patern Menu' => array('name' => 'MenuId', 'label' => 'Patern Menu', 'value' => $array_menulist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'Icon'        => array('name' => 'Icon', 'label' => 'Icon', 'value' => $array_iconslist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Order'      => array('name' => 'Order', 'label' => 'Order', 'value' => $array_order, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'name' => $section_tittle ,
    'action' => '',
    'method' => 'post',
);

$formAdd = class_formGenerator($formParams, $formFields, $formButtons);

echo $formAdd;
?>
<?php require_once 'footer.php';?>