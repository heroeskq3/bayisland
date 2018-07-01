<?php
//MYSQL - RECORDSET
function class_mysql($query, $databse, $conn, $debug)
{
    mysqli_select_db($conn, $databse); //select database

    $mysql_results = mysqli_query($conn, $query); //execute query

    $mysql_error = mysqli_errno($conn) . mysqli_error($conn);

    $mysql_determine = explode(" ", $query);

    if ($mysql_results) {
        //determine query OK

        $status = 1;
        $mysql_lastid    = null; //get last id

        //DETERMINE SELECT QUERY
        if ($mysql_determine[0] == "SELECT") {

            $mysql_totalRows = mysqli_num_rows($mysql_results); //determine rows total

            if ($mysql_totalRows) {
                $results = array();
                while ($class_row = mysqli_fetch_array($mysql_results, MYSQL_ASSOC)) {
                    array_push($results, $class_row);
                }
            } else {
                $results = null;
            }
        } else {
            $mysql_lastid    = mysqli_insert_id($conn); //get last id
            $mysql_totalRows = mysqli_affected_rows($conn); //determine rows total
            $results         = "Query Ok - Affected rows: " . $mysql_totalRows;
        }
    } else {
        $mysql_totalRows = 0;
        $status          = 0;
        $mysql_lastid    = null; //get last id
        $results         = array("msg" => "MySQL Error", "output" => $mysql_error);
    }

    $mysql_close = mysqli_close($conn) or die("MySQL Error");

    //API Array Results

    $request  = $query;
    $response = $results;
    $rows     = $mysql_totalRows;

    $results = api($status, $mysql_lastid, $request, $response, $rows, $debug);

    return $results;
}
