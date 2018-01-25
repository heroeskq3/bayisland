<?php
function class_formInput($inputType, $name, $label, $value, $required)
{
    $results = null;

    if ($required) {
        $required = "required";
    }

    //HIDDEN INPUT
    if ($inputType == 'hidden') {
        $results .= '<input type="hidden" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '">';
    }
    //TEXT INPUT
    if ($inputType == 'text') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="text" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
        $results .= '</div>';
    }
    //TEXT AREA INPUT
    if ($inputType == 'textarea') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<textarea class="form-control" name="' . $name . '" '.$required.'>' . $value . '</textarea>';
        $results .= '</div>';
    }

    //SELECT INPUT
    if ($inputType == 'select') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<select class="select-with-search form-control pmd-select2" name="' . $name . '" '.$required.'>';
        $results .= '<option></option>';
        if($value){
            foreach ($value as $row_option) {
                $results .= '<option value="' . $row_option['value'] . '" ';
                if ($row_option['value'] == $row_option['selected']) {
                    $results .= 'selected';
                }
                $results .= '>' . $row_option['label'] . '</option>';
            }
        }
        $results .= '</select>';
        $results .= '</div>';
    }
    //CHECKBX INPUT
    if ($inputType == 'checkbox') {
        if($value){
           $checked = 'checked'; 
        }else{
            $checked = null;
        }
        $results .= '<div class="checkbox pmd-default-theme">';
        $results .= '<label class="pmd-checkbox checkbox-pmd-ripple-effect">';
        $results .= '<input type="checkbox" value="' . $value . '" '.$checked.'>';
        $results .= '<span>' . $label . '</span>';
        $results .= '</label>';
        $results .= '</div>';
    }
    //PHONE NUMBER INPUT
    if ($inputType=='tel') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="tel" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
        $results .= '</div>';
    }
    //EMAIL INPUT
    if ($inputType=='email') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="email" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
        $results .= '</div>';
    }
    //FILE INPUT
    if ($inputType=='file') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="file" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
        $results .= '</div>';
    }
    //PASSWORD INPUT
    if ($inputType=='password') {
        $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
        $results .= '<label for="regular1" class="control-label">' . $label . '</label>';
        $results .= '<input type="password" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
        $results .= '</div>';
    }
    return $results;
}
