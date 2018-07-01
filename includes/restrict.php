<?php
if (!session_id()) {
    session_start();
}

if (!isset($_SESSION['UserId'])) {
    header("Location:login.php?error=1");
    die();
}
