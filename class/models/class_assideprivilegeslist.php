<?php
function class_assidePrivilegesList($TypeId)
{
    $mysql_query    = "SELECT p.* FROM privileges p WHERE p.TypeId = $TypeId";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}