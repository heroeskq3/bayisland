<?php
function class_usersInfoUpdate($UserId,$FirstName,$LastName,$Email,$Image)
{
    $mysql_query    = "UPDATE users_details ud SET ud.FirstName = '$FirstName', ud.LastName = '$LastName', ud.Email = '$Email', ud.Image = '$Image' WHERE ud.UserId = $UserId";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}
