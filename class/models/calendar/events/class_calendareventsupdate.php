<?php
function class_calendarUpdate($id, $start, $end)
{
    $mysql_query    = "UPDATE calendar_events SET  start = '$start', end = '$end' WHERE id = $id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
