<?php
function class_menuAdd($Name, $Description, $Url, $Icon, $MenuId, $Status)
{
    $mysql_query    = "INSERT INTO menu (Name, Description, Url, Icon, MenuId, Status) VALUES('$Name', '$Description', '$Url', '$Icon', '$MenuId', '$Status')";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
