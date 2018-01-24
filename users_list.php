<?php 
//Section Parameters
$section_tittle      = "User List";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 1;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
//Update users item
if ($action == "add") {
    header('Location: users_add.php');
    die();
}

//Update users item
if ($action == "update") {
    header('Location: users_update.php?Id=' . $Id);
    die();
}

//Delete users item
if ($action == "delete") {
    class_usersDelete($Id);
    header('Location: users_list.php');
    die();
}

$table_params = array(
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
);
$table_array = class_tableUsersList();

//generate table list
$tablegenerator = class_tableGenerator($table_array, $table_params);
echo $tablegenerator;
?>
<?php require_once 'footer.php';?>