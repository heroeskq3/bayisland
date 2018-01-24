<?php
//Section Parameters
$section_tittle      = "Users List";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 1;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
//Update menu item
if ($action == "update") {
    header('Location: menu_update.php?Id=' . $Id);
    die();
}

//Delete menu item
if ($action == "delete") {
    class_menuDelete($Id);
    header('Location: menu_list.php');
    die();
}

$table_params = array(
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
);
$table_array = class_tableMenuList();

//generate table list
$tablegenerator = class_tableGenerator($table_array, $table_params);
echo $tablegenerator;
?>
<?php require_once 'footer.php';
