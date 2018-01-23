<?php
function class_formInput($inputType, $name, $label, $value, $required)
{
    $results = null;

    //HIDDEN INPUT
    if ($inputType == 'hidden') {
        $results .= '<input type="hidden" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '">';
    }
    //TEXT INPUT
    if ($inputType == 'text') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="text" id="regular1" class="form-control" ';
        if ($required) {
            $results .= "required";
        }
        $results .= ' name="' . $name . '" value="' . $value . '">';
        $results .= '</div>';
    }
    //TEXT AREA INPUT
    if ($inputType == 'textarea') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<textarea class="form-control" name="' . $name . '">' . $value . '</textarea>';
        $results .= '</div>';
    }
    //SELECT INPUT
    if ($inputType == 'select') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<select class="select-simple form-control pmd-select2" name="' . $name . '">';
        $results .= '<option></option>';
        foreach ($value as $row_option) {
            $results .= '<option value="' . $row_option['value'] . '" ';
            if ($row_option['value'] == $row_option['selected']) {
                $results .= 'selected';
            }
            $results .= '>' . $row_option['label'] . '</option>';
        }
        $results .= '</select>';
        $results .= '</div>';
    }
    //CHECKBX INPUT
    if ($inputType == 'checkbox') {
        $results .= '<div class="checkbox pmd-default-theme">';
        $results .= '<label class="pmd-checkbox checkbox-pmd-ripple-effect">';
        $results .= '<input type="checkbox" value="">';
        $results .= '<span>Save Details</span>';
        $results .= '</label>';
        $results .= '</div>';
    }
    return $results;
}
