<?php
function class_usersList()
{
    $mysql_query    = "SELECT ud.* FROM users u INNER JOIN users_details ud ON ud.UserId = u.Id"; 
    //voy por aqui haciendo la parte de users list con errores apartir de este query y problemas en table
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
