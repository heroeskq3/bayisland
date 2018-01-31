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
        $results .= '<input type="text" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
    }
    //TEXT AREA INPUT
    if ($inputType == 'textarea') {
        $results .= '<textarea class="form-control" name="' . $name . '" '.$required.'>' . $value . '</textarea>';
    }

    //SELECT INPUT
    if ($inputType == 'select') {
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
    }
    //CHECKBX INPUT
    if ($inputType == 'checkbox') {
        if($value){
           $checked = 'checked'; 
        }else{
            $checked = null;
        }
        $results .= '<label class="pmd-checkbox checkbox-pmd-ripple-effect">';
        $results .= '<input name="' . $name . '" type="checkbox" value="1" '.$checked.'>';
        $results .= '<span>' . $label . '</span>';
        $results .= '</label>';
    }
    //PHONE NUMBER INPUT
    if ($inputType=='tel') {
        $results .= '<input type="tel" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
    }
    //EMAIL INPUT
    if ($inputType=='email') {
        $results .= '<input type="email" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
    }
    //FILE INPUT
    if ($inputType=='file') {
        $results .= '<input type="file" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
    }

    //PASSWORD INPUT
    if ($inputType=='password') {
        $results .= '<input type="password" id="regular1" class="form-control" name="' . $name . '" value="' . $value . '" '.$required.'>';
    }

    return $results;
}
