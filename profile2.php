<?php
//Section Parameters
$section_tittle      = "Edit Profile";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
//upload resource
if ($File["name"]) {
    $debug      = 0;
    $resource   = "profile";
    $fileUpload = class_filesUpload($File, $resource, $debug);
    $Image      = $File["name"];
}

//Users Info
$usersinfo     = class_usersInfo($_SESSION['UserId']);
$row_usersinfo = $usersinfo['response'][0];

//Users Details Info
$usersdetailsinfo     = class_usersDetailsInfo($row_usersinfo['UsersIndex']);
$row_usersdetailsinfo = $usersdetailsinfo['response'][0];

if ($form_update) {
    class_usersDetailsUpdate($row_usersinfo['UsersIndex'], $FirstName, $LastName, $MiddleName, $Company, $Phone, $Mobile, $Email, $Country, $State, $City, $Address, $Details, $Responsible, $CustomInfo1, $CustomInfo2, $CustomInfo3, $CustomInfo4, $CustomInfo5, $Image, $Status);
    header('Location: profile2.php');
    die();
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

//forms var
$UserName    = $row_usersinfo['UserName'];
$Responsible = $row_usersdetailsinfo['Responsible'];
$FirstName   = $row_usersdetailsinfo['FirstName'];
$LastName    = $row_usersdetailsinfo['LastName'];
$MiddleName  = $row_usersdetailsinfo['MiddleName'];
$Company     = $row_usersdetailsinfo['Company'];
$Phone       = $row_usersdetailsinfo['Phone'];
$Mobile      = $row_usersdetailsinfo['Mobile'];
$Email       = $row_usersdetailsinfo['Email'];
$Country     = $row_usersdetailsinfo['State'];
$State       = $row_usersdetailsinfo['State'];
$City        = $row_usersdetailsinfo['City'];
$Address     = $row_usersdetailsinfo['Address'];
$Details     = $row_usersdetailsinfo['Details'];
$CustomInfo1 = $row_usersdetailsinfo['CustomInfo1'];
$CustomInfo2 = $row_usersdetailsinfo['CustomInfo2'];
$CustomInfo3 = $row_usersdetailsinfo['CustomInfo3'];
$CustomInfo4 = $row_usersdetailsinfo['CustomInfo4'];
$CustomInfo5 = $row_usersdetailsinfo['CustomInfo5'];
$Image       = $row_usersdetailsinfo['Image'];
$Status      = $row_usersdetailsinfo['Status'];

$formFields = array(
    'form_update' => array('name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Username'    => array('name' => 'UserName', 'label' => 'Username', 'value' => $UserName, 'dataType' => 'Str', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Responsible' => array('name' => 'Responsible', 'label' => 'Responsible', 'value' => $Responsible, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'FirstName'   => array('name' => 'FirstName', 'label' => 'First Name', 'value' => $FirstName, 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'LastName'    => array('name' => 'LastName', 'label' => 'Last Name', 'value' => $LastName, 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'MiddleName'  => array('name' => 'MiddleName', 'label' => 'Middle Name', 'value' => $MiddleName, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Company'     => array('name' => 'Company', 'label' => 'Company', 'value' => $Company, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Phone'       => array('name' => 'Phone', 'label' => 'Phone', 'value' => $Phone, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Mobile'      => array('name' => 'Mobile', 'label' => 'Mobile', 'value' => $Mobile, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Email'       => array('name' => 'Email', 'label' => 'Email', 'value' => $Email, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Country'     => array('name' => 'Country', 'label' => 'Country', 'value' => $State, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'State'       => array('name' => 'State', 'label' => 'State', 'value' => $State, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'City'        => array('name' => 'City', 'label' => 'City', 'value' => $City, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Address'     => array('name' => 'Address', 'label' => 'Address', 'value' => $Address, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Details'     => array('name' => 'Details', 'label' => 'Details', 'value' => $Details, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'CustomInfo1' => array('name' => 'CustomInfo1', 'label' => 'CustomInfo1', 'value' => $CustomInfo1, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'CustomInfo2' => array('name' => 'CustomInfo2', 'label' => 'CustomInfo2', 'value' => $CustomInfo2, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'CustomInfo3' => array('name' => 'CustomInfo3', 'label' => 'CustomInfo3', 'value' => $CustomInfo3, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'CustomInfo4' => array('name' => 'CustomInfo4', 'label' => 'CustomInfo4', 'value' => $CustomInfo4, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'CustomInfo5' => array('name' => 'CustomInfo5', 'label' => 'CustomInfo5', 'value' => $CustomInfo5, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Image'       => array('name' => 'Image', 'label' => 'Image', 'value' => $Image, 'dataType' => 'Str', 'inputType' => 'text', 'required' => false, 'position' => 0),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $Status, 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 0),
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'name'    => 'Personal Information',
    'action'  => '',
    'method'  => 'post',
    'enctype' => 'multipart/form-data',
);

echo class_formGenerator($formParams, $formFields, $formButtons);
?>
<?php require_once 'footer.php';
