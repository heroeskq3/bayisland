<?php
//Section Parameters
$section_tittle      = "User Add";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_add) {
    class_usersAdd($UserName, $Password, $TypeId, $OwnerId, $Status);
    header('Location: users_list.php');
    die();
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => '1', 'selected' => $Status);
$array_status[] = array('label' => 'Inactive', 'value' => '0', 'selected' => $Status);

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
    'form_add'   => array('name' => 'form_add', 'label' => 'form_add', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'UserName'     => array('name' => 'UserName', 'label' => 'Username', 'value' => $UserName, 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Password'  => array('name' => 'Password', 'label' => 'Password', 'value' => $Password, 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'TypeId'   => array('name' => 'TypeId', 'label' => 'Type', 'value' => $array_type, 'dataType' => 'Str', 'inputType' => 'select', 'required' => true, 'position' => 3),
    'OwnerId' => array('name' => 'OwnerId', 'label' => 'Owner', 'value' => $array_owner, 'dataType' => 'Str', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Status'     => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'action' => '',
    'method' => 'post',
);

$formadd = class_formGenerator($formParams, $formFields, $formButtons);
echo $formadd;
?>
<?php require_once 'footer.php';
