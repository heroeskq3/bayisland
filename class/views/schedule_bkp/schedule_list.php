<?php

$schedule_list = class_scheduleList();

$table_array = null;

if ($schedule_list['rows']) {

    $table_array = array();
    foreach ($schedule_list['response'] as $row_userslist) {

        $table_array[] = array(
            //Define custom Patern Table Alias Keys => Values
            'Tipo'         => $row_userslist['TypeId'],
            'Titulo'       => $row_userslist['Tittle'],
            'Descripción'  => $row_userslist['Description'],
            'Fecha Inicio' => $row_userslist['DateStart'],
            'Fecha Final'  => $row_userslist['DateEnd'],
            'Aviso'        => $row_userslist['Notice'],
            'Estado'       => $row_userslist['Status'],

            //Define Index, Status, Childs
            'index'        => $row_userslist['Id'],
            'status'       => $row_userslist['Status'], //use = 1 or 0
            'childs'       => null, //define array
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
