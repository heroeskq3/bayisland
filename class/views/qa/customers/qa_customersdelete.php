<?php
//Delete menu item
if ($action == "delete") {

    $qacustomersinfo     = class_qaCustomersInfo($Id);
    $row_qacustomersinfo = $qacustomersinfo['response'][0];
    $customer            = $row_qacustomersinfo['FullName'];

    $qacustomersdelete = class_qaCustomersDelete($Id);

//set activity
    if ($qacustomersdelete['rows']) {
        $DateSet = date_create($DateSet);
        $DateSet = date_format($DateSet, 'l, j F Y');
        $Details = $customer;
        $test    = class_qaActivityAdd($row_usersinfo['Id'], 'qa_customers', $Id, 'Cliente Eliminado', $Details, 2);
    }

    header('Location: ' . $_SERVER['PHP_SELF']);
    die();
}
