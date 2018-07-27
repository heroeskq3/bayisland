<?php
if ($form_update) {
    $scheduleupdate = class_scheduleUpdate($Id, $TypeId, $Tittle, $Description, $Details, $DateStart, $DateEnd, $Notice, $Status);
    header('Location: ' . $_SERVER['PHP_SELF']);
    die();
}

//Users Info
$sheduleinfo     = class_scheduleInfo($Id);
$row_sheduleinfo = $sheduleinfo['response'][0];

//shedule Type LANG_LIST
$scheduletypeslist = class_scheduleTypeList();
$scheduletypeslist = class_arrayFilter($scheduletypeslist['response'], 'Status', 1, '=');
$array_types       = array();
foreach ($scheduletypeslist['response'] as $row_scheduletypeslist) {
    $array_types[] = array('label' => $row_scheduletypeslist['Name'], 'value' => $row_scheduletypeslist['Id'], 'selected' => $row_sheduleinfo['TypeId']);
}

//Notice list
$array_notice   = array();
$array_notice[] = array('label' => 'Si', 'value' => '1', 'selected' => $row_sheduleinfo['Notice']);
$array_notice[] = array('label' => 'No', 'value' => '0', 'selected' => $row_sheduleinfo['Notice']);

$formFields = array(
    'form_update'  => array('addbutton' => null, 'placeholder' => null, 'name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 0),
    'Tipo'         => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'TypeId', 'value' => $array_types),
    'Titulo'       => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 1, 'name' => 'Tittle', 'value' => $row_sheduleinfo['Tittle']),
    'Descripción'  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'Description', 'value' => $row_sheduleinfo['Description']),
    'Detalle'      => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'textarea', 'required' => false, 'position' => 1, 'name' => 'Details', 'value' => $row_sheduleinfo['Details']),
    'Fecha Inicio' => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 1, 'name' => 'DateStart', 'value' => $row_sheduleinfo['DateStart']),
    'Fecha Final'  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 1, 'name' => 'DateEnd', 'value' => $row_sheduleinfo['DateEnd']),
    'Aviso'        => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => false, 'position' => 1, 'name' => 'Notice', 'value' => $array_notice),
    'Estado'       => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'Status', 'value' => $row_sheduleinfo['Status']),
);

// define buttons for form
$formButtons = array(
    LANG_SUBMIT => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    LANG_BACK   => array('buttonType' => 'home', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
);

//set params for form
$formParams = array(
    'name'    => LANG_UPDATE,
    'action'  => '',
    'method'  => 'post',
    'enctype' => '',
);

class_formGenerator($formParams, $formFields, $formButtons);
