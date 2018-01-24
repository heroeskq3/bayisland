<?php
function class_usersInfo($UserId)
{
    $mysql_query    = "SELECT u.Id,u.Id,u.Status, u.UserName,u.Password,ud.FirstName, ud.LastName, CONCAT_WS(' ',ud.FirstName, ud.LastName) AS FullName,ud.Image, ud.Email FROM users u INNER JOIN users_details ud ON ud.UserId = u.Id WHERE u.Id = '$UserId'";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}
