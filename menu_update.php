<?php
//Section Parameters
$section_tittle      = "Menu Manager";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_update) {
    $menuupdate = class_menuUpdate($Id, $Name, $Description, $Url, $Icon, $MenuId, $Order, $Status);
    class_debug($menuupdate);
    header('Location: menu_list.php');
    die();
}
//Menu Info
$menuinfo     = class_menuInfo($Id);
$row_menuinfo = $menuinfo['response'][0]; //poner los info

//Menu List
$menulist       = class_menuList();
$array_menulist = array();
foreach ($menulist['response'] as $row_menulist) {
    $array_menulist[] = array('label' => $row_menulist['Name'], 'value' => $row_menulist['Id'], 'selected' => $row_menuinfo['MenuId']);
}

//Icon List
$iconslist       = class_iconsList();
$array_iconslist = array();
foreach ($iconslist['response'] as $row_iconslist) {
    $array_iconslist[] = array('label' => $row_iconslist, 'value' => $row_iconslist, 'selected' => $row_menuinfo['Icon']);
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => 1, 'selected' => $row_menuinfo['Status']);
$array_status[] = array('label' => 'Inactive', 'value' => 0, 'selected' => $row_menuinfo['Status']);

//Order by list
$array_order   = array();
for ($i = 1; $i < 10; ++$i) {
    $array_order[] = array('label' => $i, 'value' => $i, 'selected' => $row_menuinfo['Order']);
}

/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file
 * required = true or false
 * buttonType = submit or back
 * position = 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */

$formFields = array(
    'form_update' => array('name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Id'          => array('name' => 'Id', 'label' => 'Id', 'value' => $row_menuinfo['Id'], 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Name'        => array('name' => 'Name', 'label' => 'Name', 'value' => $row_menuinfo['Name'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Description' => array('name' => 'Description', 'label' => 'Description', 'value' => $row_menuinfo['Description'], 'dataType' => 'Int', 'inputType' => 'textarea', 'required' => false, 'position' => 1),
    'Url'         => array('name' => 'Url', 'label' => 'Url', 'value' => $row_menuinfo['Url'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => false, 'position' => 2),   
    'Patern Menu' => array('name' => 'MenuId', 'label' => 'Patern Menu', 'value' => $array_menulist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'Icon'        => array('name' => 'Icon', 'label' => 'Icon', 'value' => $array_iconslist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Order'      => array('name' => 'Order', 'label' => 'Order', 'value' => $array_order, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3)
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'name' => 'Update',
    'action' => '',
    'method' => 'post',
);

$formUpdate = class_formGenerator($formParams, $formFields, $formButtons);
echo $formUpdate;
?>
<?php require_once 'footer.php';?>