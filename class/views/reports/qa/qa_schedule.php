<?php
if (!isset($_GET['Semana'])) {
    $week_number    = @date(W);
    $week_year      = @date(Y);
    $weekiso        = class_weekIso($week_year, $week_number);
    $week_set       = $weekiso['date_start'] . " al " . $weekiso['date_end'];
    $_GET['Año']   = $week_year;
    $_GET['Semana'] = $week_set;
}

if (!$row_userstypeinfo['Admin']) {

    if (isset($_GET['Agente'])) {
        $_GET['Agente'] = $_GET['Agente'];
    } else {
        $_GET['Agente'] = $row_usersinfo['UserName'];
    }
}

if (isset($_GET['Agente'])) {
    $week_user = $_GET['Agente'];
} else {
    $week_user = 'Todos los agentes';
}

$tittle_week = $week_user . " Semana del <b>" . $_GET['Semana'] . "</b>";

//Schedule list
$qaschedulelist = class_qaScheduleList();

if (!$row_userstypeinfo['Admin']) {
    $qaschedulelist = class_arrayFilter($qaschedulelist['response'], 'UsersId', $_SESSION['UserId'], '=');
}

$array_qaschedulelist = array();
if ($qaschedulelist['rows']) {
    $i = 1;

    //$dateweek = $row_qaschedulelist['DateWeek'];

    foreach ($qaschedulelist['response'] as $row_qaschedulelist) {

        $qausersinfo     = class_usersInfo($row_qaschedulelist['UsersId']);
        $row_qausersinfo = $qausersinfo['response'][0];
        $infomonth       = class_infoMonth($row_qaschedulelist['DateMonth']);
        $infoday         = class_infoDay($row_qaschedulelist['DateDay']);
        $countweek       = $i++;
        $Date            = date_create($row_qaschedulelist['Date']);
        $DateWeek        = date_format($Date, "W");
        $DateYear        = date_format($Date, "Y");

        $weekiso  = class_weekIso($DateYear, $DateWeek);
        $week_set = $weekiso['date_start'] . " al " . $weekiso['date_end'];

        $array_qaschedulelist[] = array(

            //Define custom Patern Table Alias Keys => Values
            'Semana'      => $week_set,
            'Fecha'       => $row_qaschedulelist['Date'],
            'Año'         => $row_qaschedulelist['DateYear'],
            'Mes'         => $infomonth,
            'Día'         => $infoday,
            'Agente'      => $row_qausersinfo['UserName'],
            'Zona'        => $row_qaschedulelist['Zone'],
            'Cliente'     => $row_qaschedulelist['Customer'],
            LANG_CATEGORY => $row_qaschedulelist['Category'],
            'Cantidad'    => $row_qaschedulelist['Qnty'],

            //Define Index, Status, Childs
            'index'       => $row_qaschedulelist['CustomersId'],
            'status'      => null, //use = 1 or 0
            'context'     => null, //use bootsrap context (danger, warning, success, info)
            'childs'      => null,
        );
    }
}

$reportsParams = array(
    'title'     => $tittle_week,
    'searchbar' => true,
    'filterbar' => true,
    'filter'    => true,
    'search'    => true,
    'resume'    => true,
    'order'     => false,
    'table'     => true,
    'limit'     => 10,
    'hidecols'  => '',
    'add'       => false,
    'edit'      => false,
    'delete'    => false,
    'schedule'  => false,
    'transfer'  => false,
    'status'    => true,
);

//generate reports
print class_reportsGenerator($array_qaschedulelist, $reportsParams, null);
