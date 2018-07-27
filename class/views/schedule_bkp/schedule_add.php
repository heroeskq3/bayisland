    <?php
if ($form_add) {
    $debug = class_scheduleAdd($TypeId, $Tittle, $Description, $Details, $DateStart, $DateEnd, $Notice, $Status);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    die();
}

//Notice list
$array_notice   = array();
$array_notice[] = array('label' => 'Si', 'value' => '1', 'selected' => $Notice);
$array_notice[] = array('label' => 'No', 'value' => '0', 'selected' => $Notice);

//shedule Type LANG_LIST
$scheduletypeslist       = class_scheduleTypeList();
$scheduletypeslist       = class_arrayFilter($scheduletypeslist['response'], 'Status', 1, '=');
$array_scheduletypeslist = array();
foreach ($scheduletypeslist['response'] as $row_scheduletypeslist) {
    $array_scheduletypeslist[] = array('label' => $row_scheduletypeslist['Name'], 'value' => $row_scheduletypeslist['Id'], 'selected' => $TypeId);
}

$formFields = array(
    'form_add'     => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'form_add', 'value' => 1),
    'Tipo'         => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => true, 'position' => 1, 'name' => 'TypeId', 'value' => $array_scheduletypeslist),
    'Titulo'       => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => true, 'position' => 1, 'name' => 'Tittle', 'value' => $Tittle),
    'Descripción'  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'text', 'required' => false, 'position' => 1, 'name' => 'Description', 'value' => $Description),
    'Detalle'      => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'textarea', 'required' => false, 'position' => 1, 'name' => 'Details', 'value' => $Details),
    'Fecha Inicio' => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'datetime', 'required' => true, 'position' => 1, 'name' => 'DateStart', 'value' => $DateStart),
    'Fecha Final'  => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'datetime', 'required' => true, 'position' => 1, 'name' => 'DateEnd', 'value' => $DateEnd),
    'Aviso'        => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'select', 'required' => false, 'position' => 1, 'name' => 'Notice', 'value' => $array_notice),
    'Estado'       => array('addbutton' => null, 'placeholder' => null, 'inputType' => 'hidden', 'required' => false, 'position' => 0, 'name' => 'Status', 'value' => 1),
);

// define buttons for form
$formButtons = array(
    LANG_SUBMIT => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    'Cancel'    => array('buttonType' => 'back'),
);

// define buttons for form
$formButtons = array(
    LANG_SUBMIT => array('buttonType' => 'submit', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
    LANG_BACK   => array('buttonType' => 'cancel', 'disabled' => null, 'class' => null, 'name' => null, 'value' => null, 'action' => null),
);

//set params for form
$formParams = array(
    'name'    => LANG_ADD,
    'action'  => '',
    'method'  => 'post',
    'enctype' => '',
);

print class_formGenerator($formParams, $formFields, $formButtons);
