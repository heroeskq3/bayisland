<?php
if ($ActivityId) {
    foreach ($ActivityId as $key_activityid => $row_activityid) {
        class_qaActivityUpdate($row_activityid, 1);
    }
}

header('Location: ' . $_SERVER['HTTP_REFERER']);