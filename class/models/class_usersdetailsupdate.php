<?php
function class_usersDetailsUpdate($Id, $UsersId, $FirstName, $LastName, $MiddleName, $Company, $Phone, $Email, $Country, $State, $City, $Address, $Details, $Responsible, $CustomInfo1, $CustomInfo2, $CustomInfo3, $CustomInfo4, $CustomInfo5, $Status)
{
    $mysql_query    = "UPDATE users_details SET UsersId = '$UsersId', FirstName = '$FirstName', LastName = '$LastName', MiddleName = '$MiddleName', Company = '$Company', Phone = '$Phone', Email = '$Email', Country = '$Country', State = '$State', City = '$City', Address = '$Address', Details = '$Details', Responsible = '$Responsible', CustomInfo1 = '$CustomInfo1', CustomInfo2 = '$CustomInfo2', CustomInfo3 = '$CustomInfo3', CustomInfo4 = '$CustomInfo4', CustomInfo5 = '$CustomInfo5', Status = '$Status' WHERE Id = $Id";
    $mysql_database = "bayisland";
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_result   = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_result;

    return $results;
}