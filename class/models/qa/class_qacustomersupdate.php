<?php
function class_qaCustomersUpdate($Id, $CategoryId, $UsersId, $ClassesId, $FullName, $Phone, $Phone2, $Contact, $Mobile, $Email, $Zone, $Details, $Status)
{
    $mysql_query    = "UPDATE qa_customers SET CategoryId = '$CategoryId', UsersId = '$UsersId', ClassesId = '$ClassesId', FullName = '$FullName', Phone = '$Phone', Phone2 = '$Phone2', Contact = '$Contact', Mobile = '$Mobile', Email = '$Email', Zone = '$Zone', Details = '$Details', Status = '$Status' WHERE Id = $Id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
