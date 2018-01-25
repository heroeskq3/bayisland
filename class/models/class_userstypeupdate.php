<?php
function class_usersTypeUpdate($Id, $Name, $Admin, $Supervisor, $Agent, $Agent, $Customer, $Report, $Status)
{
    $mysql_query    = "UPDATE users_type ut SET ut.Name = '$Name', ut.Admin = '$Admin', ut.Supervisor = '$Supervisor', ut.Agent = '$Agent', ut.Agent = '$Agent', ut.Customer = '$Customer', ut.Report = '$Report', ut.Status = '$Status' WHERE ut.Id = $Id";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}
