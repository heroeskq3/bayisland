<?php

$schedule_typelist = class_scheduleTypeList(null);

if ($schedule_typelist['rows']) {
    $table_array = array();
    foreach ($schedule_typelist['response'] as $row_userslist) {

        $table_array[] = array(
            //Define custom Patern Table Alias Keys => Values
            LANG_NAME   => $row_userslist['Name'],
            LANG_STATUS => class_statusInfo($row_userslist['Status']),

            //Define Index, Status, Childs
            'index'     => $row_userslist['Id'],
            'status'    => $row_userslist['Status'], //use = 1 or 0
            'childs'    => null, //define array
        );
    }
}
$table_params = array(
    'name'        => LANG_LIST,
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
    'showmore'    => false,
    'checkbox'    => false,
);

//set params for form
$formParams = null;

// define buttons for form
$formButtons = null;

//generate table list
class_tableGenerator($table_array, $table_params, $formParams, $formButtons);
