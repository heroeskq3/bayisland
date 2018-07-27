<?php
function class_calendarEventsList($UsersId)
{
    $mysql_query    = "SELECT id, title, TypeId, start, end, color, Details FROM calendar_events WHERE UsersId = $UsersId";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
