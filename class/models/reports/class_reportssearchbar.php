<?php
function class_reportsSearchBar($array)
{
    $resume = null;
    if (isset($_GET['resume'])) {
        $resume = $_GET['resume'];
    }
    $orderby = null;
    if (isset($_GET['orderby'])) {
        $orderby = $_GET['orderby'];
    }
    $orderform = null;
    if (isset($_GET['orderform'])) {
        $orderform = $_GET['orderform'];
    }
    $limit = 10;
    if (isset($_GET['limit'])) {
        $limit = $_GET['limit'];
    }
    $search = null;
    if (isset($_GET['search'])) {
        $search = $_GET['search'];
    }

    $results = null;
    if ($array) {
        $array_key   = array_keys(current($array));
        $array_field = array();
        foreach ($array_key as $key) {
            if (($key !== 'index') && ($key !== 'status') && ($key !== 'childs') && ($key !== 'context')) {
                $array_field[] = array('label' => $key, 'value' => $key, 'selected' => null);
            }
        }

        $results .= '<form action="" method="get" enctype="">';

        $array_resume = array();
        if ($array_field) {
            foreach ($array_field as $key => $row) {
                $array_resume[] = array('label' => $row['label'], 'value' => $row['label'], 'selected' => $resume);
            }
        }
        $array_orderby = array();
        if ($array_field) {
            foreach ($array_field as $key => $row) {
                $array_orderby[] = array('label' => $row['label'], 'value' => $row['label'], 'selected' => $orderby);
            }
        }

        $array_orderform   = array();
        $array_orderform[] = array('label' => 'Ascendente', 'value' => 'asc', 'selected' => $orderform);
        $array_orderform[] = array('label' => 'Descendente', 'value' => 'desc', 'selected' => $orderform);

        $array_qnty      = array();
        $array_multiplos = array(10, 15, 20, 25, 30, 35, 40, 45, 50, 100, 150, 200);
        foreach ($array_multiplos as $key => $i) {
            $array_qnty[] = array('label' => $i, 'value' => $i, 'selected' => $limit);
        }

        $results .= '<div class="row">';

        //Default Filters - Tipo de reportes
        $results .= '<div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">';
        $results .= '<label>Resumen</label>';
        $results .= class_formInput('Detalle', 'select', 'resume', null, $array_resume, null);
        $results .= '</div>';

        //Default Filters - Ordenar
        $results .= '<div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">';
        $results .= '<label>Ordenar</label>';
        $results .= class_formInput(null, 'select', 'orderby', null, $array_orderby, null);
        $results .= '</div>';

        //Default Filters - Ordenar
        $results .= '<div class="form-group col-lg-1 col-md-1 col-sm-1 col-xs-12">';
        $results .= '<label>Forma</label>';
        $results .= class_formInput(null, 'select', 'orderform', null, $array_orderform, null);
        $results .= '</div>';

        //Default Filters -  - Cantidad de registros
        $results .= '<div class="form-group col-lg-1 col-md-1 col-sm-1 col-xs-12">';
        $results .= '<label>Cant.</label>';
        $results .= class_formInput(null, 'select', 'limit', null, $array_qnty, null);
        $results .= '</div>';

        //Default Filters - Campo par abuscar
        $results .= '<div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">';
        $results .= '<label>Buscar</label>';
        $results .= class_formInput(null, 'text', 'search', null, $search, null);
        $results .= '</div>';

        //Default Filters - Botones - Buscar
        $results .= '<p class="btn pull-filter">';
        $results .= class_formInput(null, 'submit', 'action', null, 'Mostrar', null);
        $results .= class_formInput(null, 'reset', 'action', null, 'Reset', null);
        $results .= '</p>';

        $results .= '</div>';
        $results .= '</form>';
        $results .= '<hr>';
    }
    return $results;
}
