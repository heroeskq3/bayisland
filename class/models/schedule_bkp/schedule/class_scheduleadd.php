<?php
function class_scheduleAdd($TypeId, $Tittle, $Description, $Details, $DateStart, $DateEnd, $Notice, $Status)
{
    $mysql_query    = "INSERT INTO schedule (TypeId, Tittle, Description, Details, DateStart, DateEnd, Notice, Status) VALUES('$TypeId', '$Tittle', '$Description', '$Details', '$DateStart', '$DateEnd', '$Notice', '$Status')";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
