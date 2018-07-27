<?php
if (isset($_POST['delete']) && isset($_POST['id'])) {

    $id = $_POST['id'];

    class_calendarDelete($id);

} elseif (isset($_POST['title']) && isset($_POST['TypeId']) && isset($_POST['id'])) {

    $id    = $_POST['id'];
    $title = $_POST['title'];
    $TypeId = $_POST['TypeId'];

    if ($TypeId) {
        $calendartypesinfo     = class_calendarTypesInfo($TypeId);
        $row_calendartypesinfo = $calendartypesinfo['response'][0];
        $color                 = $row_calendartypesinfo['Color'];
    }
    class_calendarUpdateTittle($id, $title, $TypeId, $color, $Details);
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
