<?php
if (isset($_POST['Event'][0]) && isset($_POST['Event'][1]) && isset($_POST['Event'][2])) {

    $id    = $_POST['Event'][0];
    $start = $_POST['Event'][1];
    $end   = $_POST['Event'][2];

    class_calendarUpdate($id, $start, $end);

}
header('Location: '.$_SERVER['HTTP_REFERER']);
