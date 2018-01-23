<?php
//SubMenu List Definition
function class_tableSubmenuList($i)
{
    $submenulist = class_submenuList($i);
    $results     = array();
    if($submenulist['rows']){
        foreach ($submenulist['response'] as $row_submenulist) {

            $results[] = array(
                //Define custom Child Table Alias Keys => Values
                'Name'        => $row_submenulist['Name'],
                'Description' => $row_submenulist['Description'],
                'Url'         => $row_submenulist['Url'],
                'Icon'        => $row_submenulist['Icon'],
                'Status'      => class_statusInfo($row_submenulist['Status']),

                //Define Index, Status, Childs
                'index'       => $row_submenulist['Id'],
                'status'      => $row_submenulist['Status'], //use = 1 or 0
                'childs'      => null, //define array
            );
        }
    }

    return $results;
}
