<?php
$table_params = array(
    'name'        => "List",
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
    'showmore'    => false,
    'checkbox'    => false,
    'export'      => true,
);

//Table Main
function class_tableMainList($array)
{
    $results = array();
    if ($array['rows']) {
        foreach ($array['response'] as $row_array) {

            $usersinfo     = class_usersInfo($row_array['UsersId']);
            $row_usersinfo = $usersinfo['response'][0];

            $reference = $row_array['Reference'];

            if ($reference) {
                $qacustomersinfo     = class_qaCustomersInfo($reference);
                $row_qacustomersinfo = $qacustomersinfo['response'][0];
            } else {
                $qacustomersinfo['rows'] = 0;
            }

            if ($qacustomersinfo['rows']) {
                $customer = $row_qacustomersinfo['FullName'] . 'hola';
            } else {
                $customer = 'Sin referencia' . ' (' . $reference . ')';
            }

            $results[] = array(
                //Define custom Patern Table Alias Keys => Values
                'Fecha'     => $row_array['DateAdd'],
                'Usuario'   => $row_usersinfo['UserName'],
                'Actividad' => $row_array['Description'],
                'Cliente'   => $customer,

                //Define Index, Status, Childs
                'index'     => $row_array['Id'],
                'status'    => $row_array['Status'], //use = 1 or 0
                'childs'    => null, //define array
            );
        }
    }

    return $results;
}

if ($row_userstypeinfo['Admin']) {
    $qaActivitylist = class_qaActivityList();
} else {
    $qaActivitylist = class_qaActivityList();
    $qaActivitylist = class_arrayFilter($qaActivitylist['response'], 'UsersId', $_SESSION['UserId'], '=');
}

if ($Id) {
    $qaActivitylist = class_qaActivityList();
    $qaActivitylist = class_arrayFilter($qaActivitylist['response'], 'UsersId', $Id, '=');
}

$table_array = class_tableMainList($qaActivitylist);

//set params for form
$formParams = null;

// define buttons for form
$formButtons = null;

//generate table list
class_tableGenerator($table_array, $table_params, $formParams, $formButtons);
