<?php
function class_qaScheduleList()
{
	$mysql_query    = "SELECT a.DateSet AS Date,
	DAYNAME(a.DateSet) AS DateDay,
	YEAR(a.DateSet) AS DateYear,
	LPAD(MONTH(a.DateSet), 2, '0') AS DateMonth,
	WEEK(a.DateSet) AS DateWeek,
	b.UsersId,
	b.State AS Zone,
	b.FullName AS Customer,
	c.`Name` AS Category,
	COUNT(1) AS Qnty,
	a.CustomersId
FROM
	qa_appointments a
	INNER JOIN qa_customers b ON b.Id = a.CustomersId
	INNER JOIN qa_category c ON c.Id = b.CategoryId
GROUP BY
	Date,
	Zone,
	Customer
	";
    $mysql_database = CONFIG_MYSQLDB;
    $mysql_conn     = conn_mysql();
    $mysql_debug    = 0;
    $mysql_results  = class_mysql($mysql_query, $mysql_database, $mysql_conn, $mysql_debug);

    $results = $mysql_results;

    return $results;
}
