<?php
$array    = class_qaScheduleList();
$array = $array['response']; 
echo "<pre>";
print_r($array);
$results = null;

$days    = array('Lunes' => 2, 'Martes' => 3, 'Miércoles' => 4, 'Jueves' => 5, 'Viernes' => 6, 'Sábado' => 7, 'Domingo' => 1);

$DateWeek = class_arrayGroup($array, 'DateWeek');
foreach ($DateWeek['response'] as $DateWeek_row) {
    $array_week = class_arrayFilter($array, 'DateWeek', $DateWeek_row['DateWeek'], '=');

    $results .= '<table id="example" class="table table-striped table-hover table-bordered nowrap">';
    $results .= '<tr>';
    $results .= '<td>DIA</td>';
    $results .= '<td>DETALLE</td>';
    $results .= '</tr>';

    foreach ($days as $days_key => $days_value) {

        $array_zone = class_arrayFilter($array_week['response'], 'DateDay', $days_value, '=');
        $zones      = class_arrayGroup($array_zone['response'], 'Zone');

        $results .= '<tr><td>';
        $results .= $days_key;
        $results .= '</td><td>';
        if ($array_zone['rows']) {

            $results .= '<ul>';
            foreach ($zones['response'] as $zones_row) {
                //zones
                $array_customer = class_arrayFilter($array_zone['response'], 'Zone', $zones_row['Zone'], '=');
                $customers      = class_arrayGroup($array_customer['response'], 'Customer');

                $results .= '<li>';
                if ($zones_row['Zone']) {
                    $results .= $zones_row['Zone'];
                } else {
                    $results .= 'Zona Desconocida';
                }
                $results .= '<ul>';
                foreach ($customers['response'] as $customers_row) {
                    //zones
                    $results .= '<li>';
                    $results .= $customers_row['Customer'];
                    $results .= '</li>';
                }
                $results .= ' </ul></li>';
            }
            $results .= ' </ul>';
        }
        $results .= ' </td></tr> ';
    }
    $results .= ' </table> ';
    $results .= '<hr>';
}
echo $results;