<?php
function class_usersTypeInfo($Id)
{
    $mysql_query    = "SELECT ut.* FROM users_type ut WHERE ut.Id = '$Id'";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}
