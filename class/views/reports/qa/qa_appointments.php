<?php
function class_tableMainList($array)
{
    $results = array();
    if ($array['rows']) {
        foreach ($array['response'] as $row_array) {

            //users info
            $qausersinfo     = class_usersInfo($row_array['UsersId']);
            $row_qausersinfo = $qausersinfo['response'][0];

            //customers info
            $qacustomersinfo     = class_qaCustomersInfo($row_array['CustomersId']);
            $row_qacustomersinfo = $qacustomersinfo['response'][0];

            $results[] = array(

                //Define custom Patern Table Alias Keys => Values
                'Cliente'     => $row_qacustomersinfo['FullName'],
                'Agente'      => $row_qausersinfo['UserName'],
                'Fecha'       => $row_array['DateSet'],
                'Hora'        => $row_array['TimeSet'],
                'Comentarios' => $row_array['Details'],

                'Contacto'    => $row_qacustomersinfo['Contact'],
                'Teléfono'    => $row_qacustomersinfo['Phone'],
                'Teléfono 2'  => $row_qacustomersinfo['Phone2'],
                'Celular'     => $row_qacustomersinfo['Mobile'],
                'E-Mail'      => $row_qacustomersinfo['Email'],

                'Estado'      => class_statusInfo($row_array['Status']),

                //Define Index, Status, Childs
                'index'       => $row_array['Id'],
                'status'      => $row_array['Status'], //use = 1 or 0
                'childs'      => null, //define array
            );
        }
    }
    return $results;
}
$reportsParams = array(
    'searchbar' => true,
    'filterbar' => true,
    'filter'    => true,
    'resume'    => true,
    'order'     => true,
    'table'     => true,
    'limit'     => 10,
    'hidecols'  => '3,5,6,7,8,9',
);

//customers list
$qaappointmentslist       = class_qaAppointmentsList();
$array_qaappointmentslist = class_tableMainList($qaappointmentslist);

//generate reports
print class_reportsGenerator($array_qaappointmentslist, $reportsParams, null);
