<?php
// se debe buscar la forma para que quede position correctamente configurado en columnas.

function class_formGenerator($formParams, $formFields, $formButtons)
{
    $results = '<div class="container-fluid full-width-container">';
    $results .= '<div class="section section-custom billinfo">';
    if ($formParams['name']) {
        $results .= '<h2>' . $formParams['name'] . '</h2>'; //section-title
    }
    $results .= '<form id="validationForm" action="' . $formParams['action'] . '" method="' . $formParams['method'] . '" enctype="' . $formParams['enctype'] . '">';
    $results .= '<div class="pmd-card pmd-z-depth">';
    $results .= '<div class="pmd-card-body">';

    $i = 0;
    
    foreach ($formFields as $row) {
        //col position start
        $pos = $i++; //define end position for clearfix
        if ($pos == 0) {
            $results .= '<div class="group-fields clearfix row">'; //clearfix start
        }

        //start col
        if ($row['position'] == 0) {
            $results .= '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">';
        }
        if ($row['position'] == 1) {
            $results .= '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">';
        }
        if ($row['position'] == 2) {
            $results .= '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">';
        }
        if ($row['position'] == 3) {
            $results .= '<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">';
        }

        if($row['position']){

            if($row['inputType']=='checkbox'){ //label styles for checkbox input
                $results .= '<div class="checkbox pmd-default-theme">';
            }else{ //label styles for others inputs
                $results .= '<div class="form-group pmd-textfield pmd-textfield-floating-label">';
                $results .= '<label for="regular1" class="control-label">' . $row['label'] . '</label>';
            }
            
            if($row['inputType']=="hidden"){ //labels for hidden inputs & position 1
                $results .= '<p class="form-control-static"><strong>hola</strong></p>';
            }
        }else{
            $results .= '<div>';
            $row['inputType'] = 'hidden'; //define input hidden for all position = 0
        }
        
        
        /* INPUTS START */
        $results .= class_formInput($row['inputType'], $row['name'], $row['label'], $row['value'], $row['required']);

        $results .= '</div>';
        


        //col position end
        if ($row['position'] == 0) {
            $results .= '</div>';
            if ($pos == 0) {
                //clearfix end
                $results .= '</div>';
                $i = 0; //reset position
            }
        }
        if ($row['position'] == 1) {
            $results .= '</div>';
            if ($pos == 0) {
                //clearfix end
                $results .= '</div>';
                $i = 0; //reset position
            }
        }
        if ($row['position'] == 2) {
            $results .= '</div>';
            if ($pos == 1) {
                //clearfix end
                $results .= '</div>';
                $i = 0; //reset position
            }
        }
        if ($row['position'] == 3) {
            $results .= '</div>'; //col end
            if ($pos == 2) {
                //clearfix end
                $results .= '</div>';
                $i = 0; //reset position
            }
        }
    } //end foreach

    $results .= '</div>';

    //input - buttons
    $results .= '
        <div class="pmd-card-actions">
            <input type="submit" class="btn btn-primary next" value="Submit">
            <a href="' . isset($HTTP_REFERER) . '" class="btn btn-default">Cancel</a>
        </div>';

    $results .= '</div>'; //section content end
    $results .= '</form>';
    $results .= '</div>';
    $results .= '</div>';

    //js scripts
    $results .= class_formScripts();

    return $results;
}
