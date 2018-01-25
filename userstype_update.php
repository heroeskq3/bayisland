<?php
//Section Parameters
$section_tittle      = "Users Manager";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_update) {
    $usersupdate = class_usersTypeUpdate($Id, $Name, $Admin, $Supervisor, $Agent, $Agent, $Customer, $Report, $Status);
    header('Location: users_list.php');
    die();
}
//Info
$userstypeinfo     = class_usersTypeInfo($Id);
$row_userstypeinfo = $userstypeinfo['response'][0]; //poner los info

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => 1, 'selected' => $row_userstypeinfo['Status']);
$array_status[] = array('label' => 'Inactive', 'value' => 0, 'selected' => $row_userstypeinfo['Status']);

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
    'form_update' => array('name' => 'form_add', 'label' => 'form_add', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Name'        => array('name' => 'Name', 'label' => 'Name', 'value' => $row_userstypeinfo['Name'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Admin'       => array('name' => 'Admin', 'label' => 'Admin', 'value' => $row_userstypeinfo['Admin'], 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Supervisor'  => array('name' => 'Supervisor', 'label' => 'Supervisor', 'value' => $row_userstypeinfo['Supervisor'], 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Agent'       => array('name' => 'Agent', 'label' => 'Agent', 'value' => $row_userstypeinfo['Agent'], 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Customer'    => array('name' => 'Customer', 'label' => 'Customer', 'value' => $row_userstypeinfo['Customer'], 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 2),
    'Report'      => array('name' => 'Report', 'label' => 'Report', 'value' => $row_userstypeinfo['Report'], 'dataType' => 'Int', 'inputType' => 'checkbox', 'required' => true, 'position' => 1),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 1),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'name'   => 'Update',
    'action' => '',
    'method' => 'post',
);

$formUpdate = class_formGenerator($formParams, $formFields, $formButtons);
echo $formUpdate;
?>
<?php require_once 'footer.php';
