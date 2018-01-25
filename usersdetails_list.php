<?php
//Section Parameters
$section_tittle      = "Users Details";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 1;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
//Update users details item
if ($action == "add") {
    header('Location: usersdetails_add.php');
    die();
}

//Update users details item
if ($action == "update") {
    header('Location: usersdetails_update.php?Id=' . $Id);
    die();
}

//Delete users details item
if ($action == "delete") {
    class_usersDetailsDelete($Id);
    header('Location: usersdetails_list.php');
    die();
}

$table_params = array(
    'name'  => "List",
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
);
//$table_array = class_tableUsersList();

//users details list
$usersdetailslist = class_usersDetailsList();

if ($usersdetailslist['rows']) {
    $table_array = array();
    foreach ($usersdetailslist['response'] as $row_usersdetailslist) {

        $table_array[] = array(
            //Define custom Patern Table Alias Keys => Values
            'Full Name'    => $row_usersdetailslist['FirstName'].' '.$row_usersdetailslist['LastName'],
            'E-Mail'     => $row_usersdetailslist['Email'],
            'Country'     => $row_usersdetailslist['Country'],
            'Created'     => $row_usersdetailslist['CreateDate'],
            'Last Update' => $row_usersdetailslist['LastUpdate'],
            'Status'      => class_statusInfo($row_usersdetailslist['Status']),

            //Define Index, Status, Childs
            'index'       => $row_usersdetailslist['Id'],
            'status'      => $row_usersdetailslist['Status'], //use = 1 or 0
            'childs'      => null, //define array
        );
    }
}

//generate table list
echo class_tableGenerator($table_array, $table_params);
?>
<?php require_once 'footer.php';?>