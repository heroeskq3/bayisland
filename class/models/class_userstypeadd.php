<?php
function class_usersTypeAdd($Name, $Admin, $Supervisor, $Agent, $Customer, $Report, $Status)
{
    $mysql_query    = "INSERT INTO users_type (Name, Admin, Supervisor, Agent, Customer,  Report, `Status`) VALUES('$Name', '$Admin', '$Supervisor', '$Agent', '$Customer', '$Report', '$Status')";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
