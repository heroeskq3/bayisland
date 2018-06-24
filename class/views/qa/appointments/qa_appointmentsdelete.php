<?php
$qaappointmentsinfo     = class_qaAppointmentsInfo($Id);
$row_qaappointmentsinfo = $qaappointmentsinfo['response'][0];
$UsersId                = $row_qaappointmentsinfo['UsersId'];
$CustomersId            = $row_qaappointmentsinfo['CustomersId'];

$qaappointmentsdelete = class_qaAppointmentsDelete($Id);
//set activity
if ($qaappointmentsdelete['rows']) {
    $DateSet = date_create($DateSet);
    $DateSet = date_format($DateSet, 'l, j F Y');
    $Details = 'Se ha eliminado la visita #' . $Id;
    $test    = class_qaActivityAdd($UsersId, 'qa_appointments', $CustomersId, 'Visita Eliminada', $Details, 2);
}
header('Location: ' . $_SERVER['PHP_SELF']);
die();
