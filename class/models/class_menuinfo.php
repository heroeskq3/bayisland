<?php
function class_menuInfo($Id)
{
    $mysql_query    = "SELECT m.* FROM menu m WHERE m.Id = $Id";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
