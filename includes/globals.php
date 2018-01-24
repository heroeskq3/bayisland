<?php
//USER SESSION
$UserId = null;
if (isset($_SESSION['UserId'])) {
    $UserId = $_SESSION['UserId'];
}

//DEBUGGER SESSION
$debug = null;
if (isset($_SESSION['debug'])) {
    $debug = $_SESSION['debug'];
}
$phperror = null;
if (isset($_SESSION['phperror'])) {
    $phperror = $_SESSION['phperror'];
}

//USERS
$UserId = $UserId;
if (isset($_POST['UserId'])) {
    $UserId = (int)$_POST['UserId'];
}

//USERS INFO
$FirstName = null;
if (isset($_POST['FirstName'])) {
    $FirstName = htmlspecialchars($_POST['FirstName']);
}
$LastName = null;
if (isset($_POST['LastName'])) {
    $LastName = htmlspecialchars($_POST['LastName']);
}
$Email = null;
if (isset($_POST['Email'])) {
    $Email = htmlspecialchars($_POST['Email']);
}
$Password = null;
if (isset($_POST['Password'])) {
    $Password = htmlspecialchars($_POST['Password']);
}
$Image = null;
if (isset($_POST['Image'])) {
    $Image = htmlspecialchars($_POST['Image']);
}

//FORM ACTIONS
$form_add = null;
if (isset($_POST['form_add'])) {
    $form_add = $_POST['form_add'];
}
$form_update = null;
if (isset($_POST['form_update'])) {
    $form_update = $_POST['form_update'];
}


//FILES UPLOAD
$File = null;
if (isset($_FILES['File'])) {
    $File = $_FILES['File'];
}
//ADMIN
$Id = null;
if (isset($_GET['Id'])) {
    $Id = $_GET['Id'];
}
$action = null;
if (isset($_GET['action'])) {
    $action = $_GET['action'];
}

//ADMIN - MENU ADD
$Name = null;
if (isset($_POST['Name'])) {
    $Name = $_POST['Name'];
} 
$Description = null;
if (isset($_POST['Description'])) {
    $Description = $_POST['Description'];
} 
$Url = null;
if (isset($_POST['Url'])) {
    $Url = $_POST['Url'];
} 
$MenuId = null;
if (isset($_POST['MenuId'])) {
    $MenuId = $_POST['MenuId'];
} 
$Icon = null;
if (isset($_POST['Icon'])) {
    $Icon = $_POST['Icon'];
} 
$Status = null;
if (isset($_POST['Status'])) {
    $Status = $_POST['Status'];
}
?>