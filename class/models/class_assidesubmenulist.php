<?php
function class_assideSubmenuList($MenuId)
{
    $mysql_query    = "SELECT m.* FROM menu m WHERE m.MenuId = '$MenuId' AND m.Status = 1 ORDER BY m.Order ASC";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
