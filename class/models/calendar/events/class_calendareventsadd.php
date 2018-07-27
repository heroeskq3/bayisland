<?php
function class_calendarAdd($title, $TypeId, $start, $end, $color, $Details, $UsersId)
{
    $mysql_query    = "INSERT INTO calendar_events(title, TypeId, start, end, color, Details, UsersId) values ('$title', '$TypeId', '$start', '$end', '$color', '$Details', '$UsersId')";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
