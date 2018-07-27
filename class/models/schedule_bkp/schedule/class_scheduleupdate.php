<?php
function class_scheduleUpdate($Id, $TypeId, $Tittle, $Description, $Details, $DateStart, $DateEnd, $Notice, $Status)
{
    $mysql_query    = "UPDATE schedule SET TypeId = '$TypeId', Tittle = '$Tittle', Description = '$Description', Details = '$Details', DateStart = '$DateStart', DateEnd = '$DateEnd', Notice = '$Notice', Status = '$Status' WHERE Id = $Id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}