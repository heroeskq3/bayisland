<?php
//Section Parameters
$section_tittle      = "Users Details";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_update) {
    class_usersDetailsUpdate($Id, $UsersId, $FirstName, $LastName, $MiddleName, $Company, $Phone, $Email, $Country, $State, $City, $Address, $Details, $Responsible, $CustomInfo1, $CustomInfo2, $CustomInfo3, $CustomInfo4, $CustomInfo5, $Status);
    header('Location: usersdetails_list.php');
    die();
}

//Users DetailsInfo
$usersdetailsinfo     = class_usersDetailsInfo($Id);
$row_usersdetailsinfo = $usersdetailsinfo['response'][0];

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => '1', 'selected' => $row_usersdetailsinfo['Status']);
$array_status[] = array('label' => 'Inactive', 'value' => '0', 'selected' => $row_usersdetailsinfo['Status']);

//Users list
$userslist      = class_usersList();
$array_menulist = array();
foreach ($userslist['response'] as $row_userslist) {
    $array_userslist[] = array('label' => $row_userslist['UserName'], 'value' => $row_userslist['Id'], 'selected' => $row_usersdetailsinfo['UsersId']);
}

//Country list
$countrylist       = class_countryList();
$array_countrylist = array();
foreach ($countrylist['response'] as $row_countrylist) {
    $array_countrylist[] = array('label' => $row_countrylist['Name'], 'value' => $row_countrylist['Id'], 'selected' => $row_usersdetailsinfo['Country']);
}

//State list
$statelist       = class_stateList();
$array_statelist = array();
foreach ($statelist['response'] as $row_statelist) {
    $array_statelist[] = array('label' => $row_statelist['Name'], 'value' => $row_statelist['Id'], 'selected' => $row_usersdetailsinfo['State']);
}

/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file, tel
 * required = true or false
 * buttonType = submit or back
 * position = 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */

$formFields = array(
    'form_update' => array('name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'UsersId'      => array('name' => 'UsersId', 'label' => 'UsersId', 'value' => $array_userslist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'Responsible' => array('name' => 'Responsible', 'label' => 'Responsible', 'value' => $row_usersdetailsinfo['Responsible'], 'dataType' => 'Str', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'FirstName'   => array('name' => 'FirstName', 'label' => 'First Name', 'value' => $row_usersdetailsinfo['FirstName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 3),
    'LastName'    => array('name' => 'LastName', 'label' => 'Last Name', 'value' => $row_usersdetailsinfo['LastName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 3),
    'MiddleName'  => array('name' => 'MiddleName', 'label' => 'Middle Name', 'value' => $row_usersdetailsinfo['MiddleName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 3),
    'Company'     => array('name' => 'Company', 'label' => 'Company', 'value' => $row_usersdetailsinfo['Company'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Phone'       => array('name' => 'Phone', 'label' => 'Phone', 'value' => $row_usersdetailsinfo['Phone'], 'dataType' => 'Str', 'inputType' => 'tel', 'required' => false, 'position' => 1),
    'Mobile'      => array('name' => 'Mobile', 'label' => 'Mobile', 'value' => $row_usersdetailsinfo['Mobile'], 'dataType' => 'Str', 'inputType' => 'tel', 'required' => false, 'position' => 1),
    'Email'       => array('name' => 'Email', 'label' => 'Email', 'value' => $row_usersdetailsinfo['Email'], 'dataType' => 'Str', 'inputType' => 'email', 'required' => false, 'position' => 1),
    'Country'     => array('name' => 'Country', 'label' => 'Country', 'value' => $array_countrylist, 'dataType' => 'Str', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'State'       => array('name' => 'State', 'label' => 'State', 'value' => $array_statelist, 'dataType' => 'Str', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'City'        => array('name' => 'City', 'label' => 'City', 'value' => $row_usersdetailsinfo['City'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 3),
    'Address'     => array('name' => 'Address', 'label' => 'Address', 'value' => $row_usersdetailsinfo['Address'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Details'     => array('name' => 'Details', 'label' => 'Details', 'value' => $row_usersdetailsinfo['Details'], 'dataType' => 'Str', 'inputType' => 'textarea', 'required' => false, 'position' => 1),
    'CustomInfo1' => array('name' => 'CustomInfo1', 'label' => 'CustomInfo1', 'value' => $row_usersdetailsinfo['CustomInfo1'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 2),
    'CustomInfo2' => array('name' => 'CustomInfo2', 'label' => 'CustomInfo2', 'value' => $row_usersdetailsinfo['CustomInfo2'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 2),
    'CustomInfo3' => array('name' => 'CustomInfo3', 'label' => 'CustomInfo3', 'value' => $row_usersdetailsinfo['CustomInfo3'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 3),
    'CustomInfo4' => array('name' => 'CustomInfo4', 'label' => 'CustomInfo4', 'value' => $row_usersdetailsinfo['CustomInfo4'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 3),
    'CustomInfo5' => array('name' => 'CustomInfo5', 'label' => 'CustomInfo5', 'value' => $row_usersdetailsinfo['CustomInfo5'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 3),
    'Image'       => array('name' => 'Image', 'label' => 'Image', 'value' => $row_usersdetailsinfo['Image'], 'dataType' => 'Str', 'inputType' => 'file', 'required' => false, 'position' => 2),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 2),
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

echo class_formGenerator($formParams, $formFields, $formButtons);
?>
<?php require_once 'footer.php';
