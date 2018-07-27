<?php
if ($form_update) {
    class_calendarTypesUpdate($Id, $Name, $Color, $Status);
    header('Location: ' . $_SERVER['PHP_SELF']);
    die();
}

//Users Info
$sheduletypeinfo     = class_calendarTypesInfo($Id);
$row_sheduletypeinfo = $sheduletypeinfo['response'][0];

//Color list
$array_colors   = array();
$array_colors[] = array('label' => 'Azul oscuro', 'value' => '#0071c5', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Turquesa', 'value' => '#40E0D0', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Verde', 'value' => '#008000', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Amarillo', 'value' => '#FFD700', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Naranja', 'value' => '#FF8C00', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Rojo', 'value' => '#FF0000', 'selected' => $row_sheduletypeinfo['Color']);
$array_colors[] = array('label' => 'Negro', 'value' => '#000000', 'selected' => $row_sheduletypeinfo['Color']);

//Status list
$array_status   = array();
$array_status[] = array('label' => LANG_ACTIVE, 'value' => '1', 'selected' => $row_sheduletypeinfo['Status']);
$array_status[] = array('label' => LANG_INACTIVE, 'value' => '0', 'selected' => $row_sheduletypeinfo['Status']);

$formFields = array(
    'form_update' => array('addbutton' => null, 'placeholder' => null, 'name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 0),
    LANG_NAME     => array('addbutton' => null, 'placeholder' => null, 'name' => 'Name', 'label' => LANG_NAME, 'value' => $row_sheduletypeinfo['Name'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    LANG_COLOR    => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 2, 'name' => 'Color', 'value' => $array_colors),
    LANG_STATUS   => array('addbutton' => null, 'placeholder' => null, 'name' => 'Status', 'label' => LANG_STATUS, 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3),
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
