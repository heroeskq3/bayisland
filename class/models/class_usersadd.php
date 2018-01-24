<?php
function class_usersAdd($UserName, $Password, $TypeId, $OwnerId, $Status)
{
    $mysql_query    = "INSERT INTO users (UserName, Password, TypeId, OwnerId, `Status`) VALUES('$UserName', '$Password', '$TypeId', '$OwnerId', '$Status')";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
