<?php
function class_calendarUpdateTittle($id, $title, $TypeId, $color, $Details)
{
    $mysql_query    = "UPDATE calendar_events SET  title = '$title', TypeId = '$TypeId', color = '$color' , Details = '$Details' WHERE id = $id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
