<?php
//LOGOUT
session_start();
unset($_SESSION["userid"]);
unset($_SESSION['debug']);
header("Location: login.php");
?>