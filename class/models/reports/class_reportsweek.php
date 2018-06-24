<?php
function class_resportsWeek($array, $title)
{

    $results = null;

    $resume = null;
    if (isset($_GET['resume'])) {
        $resume = $_GET['resume'];
    }

    if ($array) {

        $results = null;

        $days = array('Lunes' => 2, 'Martes' => 3, 'Miércoles' => 4, 'Jueves' => 5, 'Viernes' => 6, 'Sábado' => 7, 'Domingo' => 1);

        $DateWeek = class_arrayGroup($array, 'Semana');
$results .= '<h4>(' . $title . ')</h4>';
        $results .= '<table id="example" class="table table-striped table-hover table-bordered nowrap" style="width:100%">';
        
        $results .= '<thead>';
        
        foreach ($DateWeek['response'] as $DateWeek_row) {

            $array_week = class_arrayFilter($array, 'Semana', $DateWeek_row['Semana'], '=');

            $results .= '<tr>';
            $results .= '<th>DIA</th>';
            $results .= '<th>DETALLE</th>';
            $results .= '</tr>';
            $results .= '</thead>';
            $results .= '<tbody>';

            foreach ($days as $days_key => $days_value) {

                $array_zone = class_arrayFilter($array_week['response'], 'Día', $days_key, '=');
                $zones      = class_arrayGroup($array_zone['response'], 'Zona');

                $results .= '<tr><td>';
                $results .= $days_key;
                $results .= '</td><td>';

                if ($array_zone['rows']) {

                    $results .= '<ul>';
                    foreach ($zones['response'] as $zones_row) {

                        //zones
                        $array_customer = class_arrayFilter($array_zone['response'], 'Zona', $zones_row['Zona'], '=');
                        $customers      = class_arrayGroup($array_customer['response'], 'Cliente');

                        $results .= '<li>';
                        if ($zones_row['Zona']) {
                            $results .= $zones_row['Zona'];
                        } else {
                            $results .= 'Zona Desconocida';
                        }
                        $results .= '<ul>';
                        foreach ($customers['response'] as $customers_row) {

                            $results .= '<li>';
                            $results .= $customers_row['Cliente'];
                            $results .= '<a href="info_qacustomers.php?ID=191&resume=Info">';
                            $results .= ' (Ver Ficha)';
                            $results .= '</a>';
                            $results .= '</li>';
                        }
                        $results .= ' </ul></li>';
                    }
                    $results .= ' </ul>';
                }
                $results .= '</td>';
                $results .= '</tr> ';
            }

        }
        $results .= '</tbody>';
        $results .= ' </table> ';

    } else {
        $results = $array;
    }

    return $results;
}
