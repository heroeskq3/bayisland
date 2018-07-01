<?php
function class_weekIso($year, $week)
{
    $ano          = $year;
    $numerosemana = $week;

    if ($numerosemana > 0 and $numerosemana < 54) {
        $numerosemana = $numerosemana;
        $primerdia    = $numerosemana * 7 - 7;
        $ultimodia    = $numerosemana * 7 - 1;
        $principioano = "$ano-01-01";
        $fecha1       = date('Y-m-d', strtotime("$principioano + $primerdia DAY"));
        $fecha2       = date('Y-m-d', strtotime("$principioano + $ultimodia DAY"));
        if ($fecha2 <= date('Y-m-d', strtotime("$ano-12-31"))) {$fecha2 = $fecha2;} else { $fecha2 = date('Y-m-d', strtotime("$ano-12-31"));}
        //$results = 'la semana nº ' . $numerosemana . ' del año ' . $ano . ', va desde ' . $fecha1 . ' hasta ' . $fecha2 . '</br>';
        $results = array('week_no' => $numerosemana, 'year' => $ano, 'date_start' => $fecha1, 'date_end' => $fecha2);
    } else {
        $results = "este número de semana no es válido";
    }
    return $results;
}
