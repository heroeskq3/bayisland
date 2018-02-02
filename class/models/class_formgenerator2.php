<?php
/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file
 * required = true or false
 * buttonType = previuos, next, submit or back
 * position = 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */
 
function class_formGenerator2($formParams, $formFields, $formButtons)
{

//contents start
    $results = '<div class="page-content profile-edit section-custom">';
    $results .= '<div class="pmd-card pmd-z-depth">';
    $results .= '<div class="pmd-card-body">';
    $results .= '<div class="row">';

//form start
    $results .= '<form id="validationForm" action="' . $formParams['action'] . '" method="' . $formParams['method'] . '" enctype="' . $formParams['enctype'] . '">';

    foreach ($formFields as $label => $row) {
        if ($row['inputType'] == 'image') {
            //form image action & col
            $results .= '<div data-provides="fileinput" class="fileinput fileinput-new col-lg-3">';

            //form image show preview
            $results .= '<div data-trigger="fileinput" class="fileinput-preview thumbnail img-circle img-responsive">';
            if($row['value']){
                $results .= '<img src="' . PATH_PROFILEPICTURE . $row['value'] . '" alt="' . $label . '">';
            }else{
                $results .= '<img src="' . PATH_PROFILEPICTURE . CONFIG_IMAGEPROFILEDEFAULT . '" alt="">';
            }
            $results .= '</div>';

            //change input
            $row['inputType'] = 'file';

            //form image button
            $results .= '<div class="action-button">';
            $results .= '<span class="btn btn-default btn-raised btn-file ripple-effect">';
            $results .= '<span class="fileinput-new"><i class="material-icons md-light pmd-xs">add</i></span>';
            $results .= '<span class="fileinput-exists"><i class="material-icons md-light pmd-xs">mode_edit</i></span>';
            $results .= '<input type="file" name="File">';

            //call input
            $results .= class_formInput('file', $row['name'], $label, $row['value'], $row['required']);
            $results .= class_formInput('hidden', $row['name'], $label, $row['value'], $row['required']);

            $results .= '</span>';
            $results .= '<a data-dismiss="fileinput" class="btn btn-default btn-raised btn-file ripple-effect fileinput-exists" href="javascript:void(0);"><i class="material-icons md-light pmd-xs">close</i></a>';
            $results .= '</div>';

            $results .= '</div>'; //end image col
        }
    } //foreach image end

//form 2 div start
    $results .= '<div class="col-lg-9 custom-col-9">';

//form heading

    $results .= '<div class="row">';
    $results .= '<div class="form-horizontal" >';
    $results .= '<fieldset>';

//foreach inputs start
    foreach ($formFields as $label => $row) {
    
        if ($row['inputType'] == 'label') {
            $results .= '<h3 class="heading">' . $label . '</h3>';
        }

        if ($row['inputType'] !== 'image') {
            if ($row['position']) {
                $results .= '<div class="form-group pmd-textfield">';
                
                if($row['inputType'] !== 'label'){
                    $results .= '<label class="col-sm-3 control-label" for="u_fname">' . $label . '</label>';
                }
                
                $results .= '<div class="col-sm-9">';

                //Show label when input is hidden and pos = 1
                if ($row['inputType'] == 'hidden') {
                    $results .= '<strong>' . $row['value'] . '</strong>';
                }
            } else {
                $row['inputType'] = 'hidden';
            }
            //call input
            $results .= class_formInput($row['inputType'], $row['name'], $label, $row['value'], $row['required']);

            if ($row['position']) {
                $results .= '</div>';
                $results .= '</div>';
            }
        }
    } //foreach inputs end

    $results .= '</div>';

    //form buttons
    $results .= '<div class="form-group btns margin-bot-30">';
    $results .= '<div class="col-sm-9 col-sm-offset-3">';
    $results .= '<div class="pmd-card-actions">';
    foreach ($formButtons as $key => $value) {
        $results .= class_formButtons($value['buttonType'], $key);
    }
    $results .= '</div>';
    $results .= '</div>';
    $results .= '</div>';



//form fieldset end
    $results .= '</fieldset>';
    $results .= '</div>';
    $results .= '</div>';

//form end
    $results .= '</form>';

//form 2 div start
    $results .= '<div class="row">';

//tabs end
    $results .= '</div>'; //cols
    $results .= '</div>';

//contents end
    $results .= '</div>';
    $results .= '</div>';
    $results .= '</div>';
    $results .= '</div>';

    //js scripts
    $results .= class_formScripts();

    return $results;
}
