<?php
// se debe buscar la forma para que quede position correctamente configurado en columnas.

function class_formGenerator($formParams, $formFields, $formButtons)
{
    //FORM PARAMS
    $results = '<form id="validationForm" action="'.$formParams['action'].'" method="'.$formParams['method'].'">';
    $results .= '<div class="pmd-card pmd-z-depth">';
    $results .= '<div class="pmd-card-body">';

    $i = 0;
    foreach ($formFields as $row) {

        if ($row['position'] == 1) {
            $pos = 0;
            $results .= '<div class="group-fields clearfix row">'; //clearfix
            $results .= '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">'; //COLS
        }
        if ($row['position'] == 2) {
            $pos = $i++;
            if ($pos == 0) {
                $results .= '<div class="group-fields clearfix row">'; //clearfix
            }
            $results .= '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">'; //COLS
        }
        if ($row['position'] == 3) {
            $pos = $i++;
            if ($pos == 0) {
                $results .= '<div class="group-fields clearfix row">'; //clearfix
            }
            $results .= '<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">'; //COLS
        }
        /* INPUTS START */
        $results .= class_formInput($row['inputType'], $row['name'], $row['label'], $row['value'], $row['required']);

        /* INPUTS END */

        $results .= '</div>'; //cols end

        //break - salto de pagina para position
        if ($row['position'] == 1) {
            $results .= '</div>';
        }
        if ($row['position'] == 2) {
            if ($pos == 1) {
                $results .= '</div>';
            }
        }
        if ($row['position'] == 3) {
            if ($pos == 2) {
                $results .= '</div>';
            }
        }

    } //main foreach end
    $results .= '</div>'; //pmd-card-body"

    //BUTTONS INPUT
    $results .= '
        <div class="pmd-card-actions">
            <input type="submit" class="btn btn-primary next" value="Submit">
            <a href="#" class="btn btn-default">Cancel</a>
        </div>';

    $results .= '</div>'; //class="pmd-card pmd-z-depth"
    $results .= '</form>';

    return $results;
}
