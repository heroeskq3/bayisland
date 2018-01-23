<?php
//Menu List Definition
function class_tableMenuList()
{
    $menulist = class_menuList();
    
    $results  = array();
    if ($menulist['rows']) {
        foreach ($menulist['response'] as $row_menulist) {

            $results[] = array(
                //Define custom Patern Table Alias Keys => Values
                'Name'        => $row_menulist['Name'],
                'Description' => $row_menulist['Description'],
                'Url'         => $row_menulist['Url'],
                'Icon'        => $row_menulist['Icon'],
                'Status'      => class_statusInfo($row_menulist['Status']),

                //Define Index, Status, Childs
                'index'       => $row_menulist['Id'],
                'status'      => $row_menulist['Status'], //use = 1 or 0
                'childs'      => class_tableSubmenuList($row_menulist['Id']), //define array
            );
        }
    }

    return $results;
}
