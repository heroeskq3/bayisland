<?php
function class_calendarTypesUpdate($Id, $Name, $Color, $Status)
{
    $mysql_query    = "UPDATE calendar_types SET Name = '$Name', Color = '$Color', Status = '$Status' WHERE Id = $Id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}