<?php
function class_usersUpdate($Id, $UsersIndex, $UserName, $Password, $Email, $TypeId, $OwnerId, $Status)
{
    $mysql_query    = "UPDATE admin_users u SET UsersIndex = '$UsersIndex', UserName = '$UserName', Password = '$Password', Email = '$Email', TypeId = '$TypeId', OwnerId = '$OwnerId', Status = '$Status' WHERE u.Id = $Id";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}