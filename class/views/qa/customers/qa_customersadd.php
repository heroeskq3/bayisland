<?php
if ($form_add) {
    class_qaCustomersAdd($CategoryId, $UsersId, $ClassesId, $FullName, $Phone, $Phone2, $Contact, $Mobile, $Email, $Zone, null, $Status);
    header('Location: ' . $_SERVER['PHP_SELF']);
    die();
}

//users list
$userslist   = class_usersList($_SESSION['UserId']);
$array_users = array();
if ($userslist['rows']) {
    foreach ($userslist['response'] as $row_userslist) {
        $array_users[] = array('label' => $row_userslist['UserName'], 'value' => $row_userslist['Id'], 'selected' => $_SESSION['UserId']);
    }
}
//category list
$qacategorylist = class_qaCategoryList();
$array_category = array();
if ($qacategorylist['rows']) {
    foreach ($qacategorylist['response'] as $row_qacategorylist) {
        $array_category[] = array('label' => $row_qacategorylist['Name'], 'value' => $row_qacategorylist['Id'], 'selected' => $CategoryId);
    }
}
//classes list
$qaclasseslist = class_qaClassesList();
$array_classes = array();
if ($qaclasseslist['rows']) {
    foreach ($qaclasseslist['response'] as $row_qaclasseslist) {
        $array_classes[] = array('label' => $row_qaclasseslist['Name'], 'value' => $row_qaclasseslist['Id'], 'selected' => null);
    }
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Pendiente', 'value' => '2', 'selected' => $Status);
$array_status[] = array('label' => 'Active', 'value' => '1', 'selected' => $Status);
$array_status[] = array('label' => 'Inactive', 'value' => '0', 'selected' => $Status);

if ($row_userstypeinfo['Admin']) {
    $admin_status = array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'Status', 'value' => $array_status);
} else {
    $admin_status = array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => true, 'position' => 0, 'name' => 'Status', 'value' => 2);
}
if ($row_userstypeinfo['Admin']) {
    $admin_users = array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'UsersId', 'value' => $array_users);
} else {
    $admin_users = array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => true, 'position' => 0, 'name' => 'UsersId', 'value' => $_SESSION['UserId']);
}
//Form Generator
$formFields = array(
    'form_add'    => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'form_add', 'value' => 1),
    LANG_CATEGORY   => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'CategoryId', 'value' => $array_category),
    'Usuario'     => $admin_users,
    'Clase'       => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'ClassesId', 'value' => $array_classes),
    'Empresa'     => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 1, 'name' => 'FullName', 'value' => null),
    LANG_PHONE1    => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'tel', 'required' => false, 'position' => 1, 'name' => 'Phone', 'value' => null),
    LANG_PHONE2  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'tel', 'required' => false, 'position' => 1, 'name' => 'Phone2', 'value' => null),
    'Contacto'    => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'Contact', 'value' => null),
    'Celular'     => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'tel', 'required' => false, 'position' => 1, 'name' => 'Mobile', 'value' => null),
    'E-Mail'      => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'email', 'required' => false, 'position' => 1, 'name' => 'Email', 'value' => null),

    LANG_COUNTRY  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'Country', 'value' => null),
    LANG_STATE    => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'State', 'value' => null),
    LANG_CITY     => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'City', 'value' => null),
    LANG_ADDRESS => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'Address', 'value' => null),

    'Estado'      => $admin_status,
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    'Back'   => array('buttonType' => 'link', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => $_SERVER['PHP_SELF']),
);

//set params for form
$formParams = array(
    'name'    => 'Add',
    'action'  => '',
    'method'  => 'post',
    'enctype' => '',
    'addnew'  => null,
);

class_formGenerator($formParams, $formFields, $formButtons);
