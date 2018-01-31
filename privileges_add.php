<?php
//Section Parameters
$section_tittle      = "Privileges";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_add) {
    $privilegesadd = class_privilegesAdd($TypeId, $MenuId, $Add, $Update, $Delete);
    header('Location: privileges_list.php');
    die();
}

//Users Type List
$userstypelist       = class_usersTypeList();
$array_userstypelist = array();
foreach ($userstypelist['response'] as $row_userstypelist) {
    $array_userstypelist[] = array('label' => $row_userstypelist['Name'], 'value' => $row_userstypelist['Id'], 'selected' => null);
}

//Menu List
$menulist       = class_menuList();
$array_menulist = array();
foreach ($menulist['response'] as $row_menulist) {
    $array_menulist[] = array('label' => $row_menulist['Name'], 'value' => $row_menulist['Id'], 'selected' => $MenuId);
}

//Form Generator
$formFields = array(
    'form_add' => array('inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'form_add', 'value' => 1),
    'Type'     => array('inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'TypeId', 'value' => $array_userstypelist),
    'Menu'     => array('inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'MenuId', 'value' => $array_menulist),
    'Add'      => array('inputType' => 'checkbox', 'required' => false, 'position' => 1, 'name' => 'Add', 'value' => $Add),
    'Update'   => array('inputType' => 'checkbox', 'required' => false, 'position' => 1, 'name' => 'Update', 'value' => $Update),
    'Delete'   => array('inputType' => 'checkbox', 'required' => false, 'position' => 1, 'name' => 'Delete', 'value' => $Delete),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'cancel'),
);

//set params for form
$formParams = array(
    'name'    => 'Add',
    'action'  => '',
    'method'  => 'post',
    'enctype' => '',
);

echo class_formGenerator($formParams, $formFields, $formButtons);
?>
<?php require_once 'footer.php';
