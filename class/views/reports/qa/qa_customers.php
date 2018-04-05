<?php
//customers list
$qacustomerslist = class_qaCustomersList();

$array_qacustomerslist = array();
if ($qacustomerslist['rows']) {
    foreach ($qacustomerslist['response'] as $row_qacustomerslist) {

        //users info
        if ($row_qacustomerslist['UsersId']) {
            $qausersinfo     = class_usersInfo($row_qacustomerslist['UsersId']);
            $row_qausersinfo = $qausersinfo['response'][0];
        } else {
            $row_qausersinfo['UserName'] = 'Undefined';
        }

        //classes info
        if ($row_qacustomerslist['ClassesId']) {
            $qaclassesinfo     = class_qaClassesInfo($row_qacustomerslist['ClassesId']);
            $row_qaclassesinfo = $qaclassesinfo['response'][0];
        } else {
            $row_qaclassesinfo['Name'] = 'Undefined';
        }

        //category info
        if ($row_qacustomerslist['CategoryId']) {
            $qacategoryinfo     = class_qaCategoryInfo($row_qacustomerslist['CategoryId']);
            $row_qacategoryinfo = $qacategoryinfo['response'][0];
        } else {
            $row_qacategoryinfo['Name'] = 'Undefined';
        }

        //determine customers health
        if ($row_qacustomerslist['LastVisit']) {

            $LastVisit = date("Y-m-d", strtotime($row_qacustomerslist['LastVisit']));

            //define context
            
            if ($DateSet == $LastVisit) {
                $LastVisit = LANG_TODAY;
                $Context   = 'info';
            } elseif ($DateSet < $LastVisit) {
                $LastVisit = LANG_ATTENDED;
                $Context   = 'success';
            } elseif ($DateSet > $LastVisit) {
                $LastVisit = LANG_UNATTENDED;
                $Context   = 'warning';
            } else {
                $LastVisit = LANG_ERROR;
                $Context   = null;
            }
        } else {
            $LastVisit = LANG_NEVER;
            $Context   = 'danger';
        }

        $array_qacustomerslist[] = array(

            //Define custom Patern Table Alias Keys => Values
            LANG_NAME     => $row_qacustomerslist['FullName'],
            'Agente'      => $row_qausersinfo['UserName'],
            'Clase'       => $row_qaclassesinfo['Name'],
            LANG_CATEGORY => $row_qacategoryinfo['Name'],

            'Tel1'        => $row_qacustomerslist['Phone'],
            'Tel2'        => $row_qacustomerslist['Phone2'],
            'Contacto'    => $row_qacustomerslist['Contact'],
            'Celular'     => $row_qacustomerslist['Mobile'],
            'E-Mail'      => $row_qacustomerslist['Email'],
            LANG_COUNTRY  => $row_qacustomerslist['Country'],
            'Provincia'   => $row_qacustomerslist['State'],
            'Ciudad'      => $row_qacustomerslist['City'],
            'Visita'      => $LastVisit,
            'Estado'      => class_statusInfo($row_qacustomerslist['Status']),

            //Define Index, Status, Childs
            'index'       => $row_qacustomerslist['Id'],
            'status'      => $row_qacustomerslist['Status'], //use = 1 or 0
            'context'     => $Context, //use bootsrap context (danger, warning, success, info)
            'childs'      => null,
        );
    }
}

$reportsParams = array(

    'searchbar' => true,
    'filterbar' => true,
    'filter'    => true,
    'resume'    => true,
    'order'     => true,
    'table'     => true,
    'limit'     => 10,
    'hidecols'  => '4,5,6,7,8',
);

//generate reports
print class_reportsGenerator($array_qacustomerslist, $reportsParams, null);
