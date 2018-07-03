<?php
function class_reportsGenerator4($array, $params, $filters)
{
    $results = null;

    //filter bar
    if ($params['filterbar']) {
        $results_filterbar = class_reportsFilterBar($array);
    }

    //search bar
    if ($params['searchbar']) {
        $results_searchbar = class_reportsSearchBar($array);
    }

    //Array Filter
    if ($params['filter']) {
        $array = class_reportsQuery($array);
    }
    if ($params['search']) {
        $array = class_reportsSearch($array);
    }

    //resume
    $resume = null;
    if (isset($_GET['resume'])) {
        $resume = $_GET['resume'];
    }
    if ($params['resume']) {
        if ($resume == 'Week') {
        } elseif ($resume == 'Info') {
        } elseif ($resume) {
            $array = class_resportsResume($array);
        }
    }

    //limit
    if ($params['limit']) {
        //$array = class_reportsLimit($array);
    }

    //ordering
    if ($params['order']) {
        $array = class_reportsOrder($array);
    }

    //results table
    if ($resume == 'Week') {
        $results_table = class_reportsTableWeek($array, $params);
    } elseif ($resume == 'Info') {
        $results_table = class_reportsTableInfo($array, $params);
    } else {
        if ($params['table']) {
            $results_table = class_reportsTable($array, $params);
        }
    }

    $results .= '<ul class="nav nav-tabs">';
    $results .= '<li class="active"><a href="#home" data-toggle="tab" aria-expanded="true">Resumen</a></li>';

    $getcount_total = null;
    if (isset($_GET)) {
        $getcount = 1;
        foreach ($_GET as $key => $row) {
            if (($key == 'resume') || ($key == 'orderby') || ($key == 'orderform') || ($key == 'limit') || ($key == 'search') || ($key == 'action') || ($key == 'context')) {
            } else {
                if ($row) {
                    $getcount_total = $getcount++;
                }
            }
        }
    }

    if ($getcount_total) {
        $results .= '<li class=""><a href="#profile" data-toggle="tab" aria-expanded="false">Filtros (' . $getcount_total . ')</a></li>';
    } else {
        $results .= '<li class=""><a href="#profile" data-toggle="tab" aria-expanded="false">Filtros</a></li>';
    }
    if (0) {
        $results .= '<li class=""><a href="#messages" data-toggle="tab" aria-expanded="false">Gráficos</a></li>';
    }
    $results .= '</ul>';

    $results .= '<div class="tab-content">';
    $results .= '<div class="tab-pane fade active in" id="home">';

    $results .= '<form action="" method="post">';
    $results .= '<p>' . $results_table . '</p>';
    if ($array && @$params['checkbox']) {
        $results .= class_formInput(null, 'submit', 'action', 'label', 'Procesar', null);
    }

    $results .= '</form>';

    $results .= '</div>';
    $results .= '<div class="tab-pane fade" id="profile">';
    $results .= '<p>' . $results_filterbar . '</p>';
    $results .= '</div>';
    $results .= '<div class="tab-pane fade" id="messages">';
    $results .= '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>';
    $results .= '</div>';
    $results .= '</div>';

    return $results;
}
