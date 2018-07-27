<?php
if ($form_add) {
    class_calendarTypesAdd($Name, $Color, $Status);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    die();
}

//Color list
$array_colors   = array();
$array_colors[] = array('label' => 'Azul oscuro', 'value' => '#0071c5', 'selected' => $Color);
$array_colors[] = array('label' => 'Turquesa', 'value' => '#40E0D0', 'selected' => $Color);
$array_colors[] = array('label' => 'Verde', 'value' => '#008000', 'selected' => $Color);
$array_colors[] = array('label' => 'Amarillo', 'value' => '#FFD700', 'selected' => $Color);
$array_colors[] = array('label' => 'Naranja', 'value' => '#FF8C00', 'selected' => $Color);
$array_colors[] = array('label' => 'Rojo', 'value' => '#FF0000', 'selected' => $Color);
$array_colors[] = array('label' => 'Negro', 'value' => '#000000', 'selected' => $Color);

//Status list
$array_status   = array();
$array_status[] = array('label' => LANG_ACTIVE, 'value' => '1', 'selected' => $Status);
$array_status[] = array('label' => LANG_INACTIVE, 'value' => '0', 'selected' => $Status);

$formFields = array(
    'form_add'  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'form_add', 'value' => 1),
    LANG_NAME   => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 2, 'name' => 'Name', 'value' => $Name),
    LANG_COLOR  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 2, 'name' => 'Color', 'value' => $array_colors),
    LANG_STATUS => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 3, 'name' => 'Status', 'value' => $array_status),
);

// define buttons for form
$formButtons = array(
    LANG_SUBMIT => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    'Cancel'    => array('buttonType' => 'back'),
);

// define buttons for form
$formButtons = array(
    LANG_ADD  => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    LANG_BACK => array('buttonType' => 'cancel', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
);

//set params for form
$formParams = array(
    'name'    => LANG_ADD,
    'action'  => '',
    'method'  => 'post',
    'enctype' => '',
);

print class_formGenerator($formParams, $formFields, $formButtons);
