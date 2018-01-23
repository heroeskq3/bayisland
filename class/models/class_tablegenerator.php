<?php
function class_tableGenerator($array)
{
    //$results = '<div class="table-responsive pmd-card pmd-z-depth">';
    $results = '<div class="pmd-card pmd-z-depth pmd-card-custom-view">';
    $results .= class_tableMain($array); //Generate main table
    //$results .= class_dataTable(); //Generate main table
    $results .= '</div>';

    $results .= class_tableScripts($array); //Javascripts

    return $results;
}
