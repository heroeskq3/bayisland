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
$table_params = array(
	'name'	=> "Icon List",
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => false,
    'checkbox' => false,
);

//users list
$iconslist = class_iconsList();

if ($iconslist['rows']) {
    $table_array = array();
    foreach ($iconslist['response'] as $row_iconslist) {

        $table_array[] = array(
            //Define custom Patern Table Alias Keys => Values
            'Name' => $row_iconslist,
            'Icon'     => '<i class="material-icons md-dark pmd-xs">' . $row_iconslist . '</i>',

            //Define Index, Status, Childs
            'index'    => null,
            'status'   => null, //use = 1 or 0
            'childs'   => null, //define array
        );
    }
}

//generate table list
echo class_tableGenerator($table_array, $table_params);
?>
<?php require_once 'footer.php';
