<?php
function class_privilegesInfo($Id)
{
    $mysql_query    = "SELECT p.* FROM privileges p WHERE p.Id = '$Id'";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}