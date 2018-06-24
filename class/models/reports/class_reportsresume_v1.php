<?php
function class_resportsWeek($array)
{
    $results = null;

    $resume = null;
    if (isset($_GET['resume'])) {
        $resume = $_GET['resume'];
    }

    if ($resume) {
    	echo "hola";
    } else {
        $results = $array;
    }

    return $results;
}
