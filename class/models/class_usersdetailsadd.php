<?php
function class_usersDetailsAdd($UserId, $FirstName, $LastName, $MiddleName, $Company, $Phone, $Email, $Country, $State, $City, $Address, $Details, $Responsible, $CustomInfo1, $CustomInfo2, $CustomInfo3, $CustomInfo4, $CustomInfo5, $Status)
{
    $mysql_query    = "INSERT INTO users_details (UserId, FirstName, LastName, MiddleName, Company, Phone, Email, Country, State, City, Address, Details, Responsible, CustomInfo1, CustomInfo2, CustomInfo3, CustomInfo4, CustomInfo5, `Status`) VALUES('$UserId', '$FirstName', '$LastName', '$MiddleName', '$Company', '$Phone', '$Email', '$Country', '$State', '$City', '$Address', '$Details', '$Responsible', '$CustomInfo1', '$CustomInfo2', '$CustomInfo3', '$CustomInfo4', '$CustomInfo5', '$Status')";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
