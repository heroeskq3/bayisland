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
function class_tableMainList($array)
{
    $results = array();
    if ($array['rows']) {
        foreach ($array['response'] as $row_array) {
        	
        	//$submenulist = class_submenuList($row_array['Id']);
            
            $results[] = array(
                //Define custom Patern Table Alias Keys => Values
                'Name'        => $row_array['Name'],
                'Description' => $row_array['Description'],
                'Url'         => $row_array['Url'],
                'Icon'        => $row_array['Icon'],
                'Status'      => class_statusInfo($row_array['Status']),

                //Define Index, Status, Childs
                'index'       => $row_array['Id'],
                'status'      => $row_array['Status'], //use = 1 or 0
                //'childs'      => class_tableChildList($submenulist), //define array
                'childs'      => null, //define array
            );
        }
    }

    return $results;
}

//params
$table_params = array(
    'name'        => "List",
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
);

$menulist = class_menuList();
$table_array = class_tableMainList($menulist);

echo class_tableGenerator($table_array, $table_params);
?>
<?php require_once 'footer.php';?>
