<?php
if ($TypeId) {
	$calendartypesinfo = class_calendarTypesInfo($TypeId);
	$row_calendartypesinfo = $calendartypesinfo['response'][0];
	$color = $row_calendartypesinfo['Color'];
}
$UsersId = $_SESSION['UserId'];
$calendaradd = class_calendarAdd($title, $TypeId, $start, $end, $color, $Details, $UsersId);
header('Location: ' . $_SERVER['HTTP_REFERER']);