<?php
function class_tableMainList($array)
{
    $results = array();
    if ($array['rows']) {
        foreach ($array['response'] as $row_array) {

            //users info
            if ($row_array['UsersId']) {
                $qausersinfo     = class_usersInfo($row_array['UsersId']);
                $row_qausersinfo = $qausersinfo['response'][0];
            } else {
                $row_qausersinfo['UserName'] = 'Undefined';
            }

            //classes info
            if ($row_array['ClassesId']) {
                $qaclassesinfo     = class_qaClassesInfo($row_array['ClassesId']);
                $row_qaclassesinfo = $qaclassesinfo['response'][0];
            } else {
                $row_qaclassesinfo['Name'] = 'Undefined';
            }

            //category info
            if ($row_array['CategoryId']) {
                $qacategoryinfo     = class_qaCategoryInfo($row_array['CategoryId']);
                $row_qacategoryinfo = $qacategoryinfo['response'][0];
            } else {
                $row_qacategoryinfo['Name'] = 'Undefined';
            }

            //zones
            if (!$row_array['Zone']) {
                $row_array['Zone'] = 'Undefined';
            }

            $results[] = array(

                //Define custom Patern Table Alias Keys => Values
                'Nombre'    => $row_array['FullName'],
                'Agente'    => $row_qausersinfo['UserName'],
                'Clase'     => $row_qaclassesinfo['Name'],
                'Categoría' => $row_qacategoryinfo['Name'],

                'Tel1'      => $row_array['Phone'],
                'Tel2'      => $row_array['Phone2'],
                'Contacto'  => $row_array['Contact'],
                'Celular'   => $row_array['Mobile'],
                'E-Mail'    => $row_array['Email'],
                'Zona'      => $row_array['Zone'],
                'Detalles'  => $row_array['Details'],
                'Estado'    => class_statusInfo($row_array['Status']),

                //Define Index, Status, Childs
                'index'     => $row_array['Id'],
                'status'    => $row_array['Status'], //use = 1 or 0
                'childs'    => null, //define array
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
    'hidecols'  => '4,5,6,7,8,10',
);

//customers list
$qacustomerslist       = class_qaCustomersList();
$array_qacustomerslist = class_tableMainList($qacustomerslist);

//generate reports
print class_reportsGenerator($array_qacustomerslist, $reportsParams, null);
