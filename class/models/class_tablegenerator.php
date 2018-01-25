<?php
function class_tableGenerator($array, $table_params)
{
    //$results = '<div class="table-responsive pmd-card pmd-z-depth">';
    $results = '<div class="pmd-card pmd-z-depth pmd-card-custom-view">';
    $results .= class_tableMain($array, $table_params); //Generate main table
    //$results .= class_dataTable(); //Generate main table
    $results .= '</div>';

    $results .= class_tableScripts($array,$table_params); //Javascripts

    return $results;
}