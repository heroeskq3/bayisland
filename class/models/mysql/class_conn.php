<?php
function conn_mysql()
{
    $conn_hostname = CONFIG_MYSQLHOST;
    $conn_username = CONFIG_MYSQLUSER;
    $conn_password = CONFIG_MYSQLPASS;

    $conn = mysqli_connect($conn_hostname, $conn_username, $conn_password) or die("<html><script language='JavaScript'>alert('Unable to connect to database! Please try again later.'),history.go(-1)</script></html>");
	mysqli_set_charset($conn, CONFIG_MYSQLCHARSET);
    return $conn;
}