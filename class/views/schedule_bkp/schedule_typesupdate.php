<?php
if ($form_update) {
    class_scheduleTypesUpdate($Id, $Name, $Status);
    header('Location: ' . $_SERVER['PHP_SELF']);
    die();
}

//Users Info
$sheduletypeinfo     = class_scheduleTypesInfo($Id);
$row_sheduletypeinfo = $sheduletypeinfo['response'][0];

//Status list
$array_status   = array();
$array_status[] = array('label' => LANG_ACTIVE, 'value' => '1', 'selected' => $row_sheduletypeinfo['Status']);
$array_status[] = array('label' => LANG_INACTIVE, 'value' => '0', 'selected' => $row_sheduletypeinfo['Status']);

$formFields = array(
    'form_update' => array('addbutton' => null, 'placeholder' => null, 'name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 0),
    LANG_NAME    => array('addbutton' => null, 'placeholder' => null, 'name' => 'Name', 'label' => LANG_NAME, 'value' => $row_sheduletypeinfo['Name'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    LANG_STATUS      => array('addbutton' => null, 'placeholder' => null, 'name' => 'Status', 'label' => LANG_STATUS, 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3),
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
