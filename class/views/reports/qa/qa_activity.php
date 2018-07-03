<?php
if ($row_userstypeinfo['Admin']) {
    $qaactivitypendding = class_qaActivityPending();
} else {
    $qaactivitypendding = class_qaActivityPending();
    $qaactivitypendding = class_arrayFilter($qaactivitypendding['response'], 'UsersId', $_SESSION['UserId'], '=');
}

if ($Id) {
    $qaactivitypendding = class_qaActivityPending();
    $qaactivitypendding = class_arrayFilter($qaactivitypendding['response'], 'UsersId', $Id, '=');
}
$array   = $qaactivitypendding;
$results = array();
if ($array['rows']) {

    foreach ($array['response'] as º$row_array) {

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
            $customer = $row_qacustomersinfo['FullName'];
        } else {

            $qascheduleinfo     = class_qaAppointmentsInfo($reference);
            $row_qascheduleinfo = $qascheduleinfo['response'][0];

            $reference = $row_qascheduleinfo['CustomersId'];

            $qacustomersinfo     = class_qaCustomersInfo($reference);
            $row_qacustomersinfo = $qacustomersinfo['response'][0];

            if ($qacustomersinfo['rows']) {
                $customer = $row_qacustomersinfo['FullName'];
            } else {
                $customer = 'Sin referencia' . ' (' . $reference . ')';
            }
        }

        if ($row_userstypeinfo['Admin']) {
            $ActivityCheck  = class_formInput(null, 'checkbox_v2', 'ActivityId[]', null, $row_array['Id'], null);
            $SelectAllCheck = class_formInput(null, 'checkbox_v3', null, 'checkall', null, null);
        } else {
            $ActivityCheck  = null;
            $SelectAllCheck = null;
        }

        $results[] = array(
            //Define custom Patern Table Alias Keys => Values
            $SelectAllCheck => $ActivityCheck,
            'Fecha'         => $row_array['DateAdd'],
            'Responsable'   => $row_usersinfo['UserName'],
            'Actividad'     => $row_array['Description'],
            'Cliente'       => $customer,
            'Motivo'        => $row_array['Details'],

            //Define Index, Status, Childs
            'index'         => $row_array['Id'],
            'context'       => null, //use = 1 or 0
            'status'        => $row_array['Status'], //use = 1 or 0
            'childs'        => null, //define array
        );
    }
}

$table_array = $results;

if ($row_userstypeinfo['Admin']) {
    $checkbox = true;
} else {
    $checkbox = false;
}

$reportsParams = array(
    'searchbar'  => true,
    'filterbar'  => true,
    'filter'     => true,
    'search'     => true,
    'resume'     => true,
    'order'      => true,
    'table'      => true,
    'limit'      => 10,
    'hidecols'   => '',
    'showaction' => false,
    'add'        => false,
    'view'       => false,
    'confirm'    => true,
    'checkbox'   => $checkbox,
);

//generate reports
print class_reportsGenerator4($table_array, $reportsParams, null);
