<?php
function class_qaActivityStatusList()
{
    $mysql_query    = "SELECT a.* FROM qa_activity a WHERE a.SentMail IS NULL LIMIT 0,1";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
