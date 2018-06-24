<?php
if ($Id) {
    class_qaActivityUpdate($Id, 1);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    //header('Location: ' . $_SERVER['PHP_SELF']);
    //header('Location: index.php');
    die();
}