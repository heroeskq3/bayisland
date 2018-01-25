<?php
//Section Parameters
$section_tittle      = "Users Type";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_add) {
    class_usersTypeAdd($UserName, $Password, $TypeId, $OwnerId, $Status);
    header('Location: userstype_list.php');
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
    'Name'       => array('name' => 'Name', 'label' => 'Name', 'value' => $Name, 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Admin'      => array('name' => 'Admin', 'label' => 'Admin', 'value' => $Admin, 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Supervisor' => array('name' => 'Supervisor', 'label' => 'Supervisor', 'value' => $Supervisor, 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Agent'      => array('name' => 'Agent', 'label' => 'Agent', 'value' => $Agent, 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Customer'   => array('name' => 'Customer', 'label' => 'Customer', 'value' => $Customer, 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Report'     => array('name' => 'Report', 'label' => 'Report', 'value' => $Report, 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 1),
    'Status'     => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 1),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'name'   => 'Add',
    'action' => '',
    'method' => 'post',
);

$formadd = class_formGenerator($formParams, $formFields, $formButtons);
echo $formadd;
?>
<?php require_once 'footer.php';
