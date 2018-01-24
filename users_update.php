<?php
//Section Parameters
$section_tittle      = "Users Update";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
if ($form_update) {
    $usersupdate = class_usersUpdate($Id, $Name, $Description, $Url, $Icon, $MenuId, $Order, $Status);
    header('Location: users_list.php');
    die();
}
//Info
$usersinfo     = class_usersInfo($Id);
$row_usersinfo = $usersinfo['response'][0]; //poner los info

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => 1, 'selected' => $row_usersinfo['Status']);
$array_status[] = array('label' => 'Inactive', 'value' => 0, 'selected' => $row_usersinfo['Status']);

/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file
 * required = true or false
 * buttonType = submit or back
 * position = 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */

$formFields = array(
    'form_update' => array('name' => 'form_update', 'label' => 'form_update', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Id'          => array('name' => 'Id', 'label' => 'Id', 'value' => $row_usersinfo['Id'], 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'FirstName'        => array('name' => 'FirstName', 'label' => 'FirstName', 'value' => $row_usersinfo['FirstName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'LastName'        => array('name' => 'LastName', 'label' => 'LastName', 'value' => $row_usersinfo['LastName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'MiddleName'        => array('name' => 'MiddleName', 'label' => 'MiddleName', 'value' => $row_usersinfo['MiddleName'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Email'        => array('name' => 'Email', 'label' => 'Email', 'value' => $row_usersinfo['Email'], 'dataType' => 'Str', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 1)
);

// define buttons for form
$formButtons = array(
    'Submit' => array('buttonType' => 'submit'),
    'Cancel' => array('buttonType' => 'back'),
);

//set params for form
$formParams = array(
    'action' => '',
    'method' => 'post',
);

$formUpdate = class_formGenerator($formParams, $formFields, $formButtons);
echo $formUpdate;
?>
<?php require_once 'footer.php';?>
<!-- Scripts Starts -->
<script>
$(document).ready(function() {
    var sPath = window.location.pathname;
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
    $(".pmd-sidebar-nav").each(function() {
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").addClass("open");
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").find('.dropdown-menu').css("display", "block");
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").find('a.dropdown-toggle').addClass("active");
        $(this).find("a[href='" + sPage + "']").addClass("active");
    });
    $(".auto-update-year").html(new Date().getFullYear());
});
</script>
<!-- Select2 js-->
<script type="text/javascript" src="components/select2/js/select2.full.js"></script>
<!-- Propeller Select2 -->
<script type="text/javascript">
$(document).ready(function() {
    <!-- Simple Selectbox -->
    $(".select-simple").select2({
        theme: "bootstrap",
        minimumResultsForSearch: Infinity,
    });
    <!-- Selectbox with search -->
    $(".select-with-search").select2({
        theme: "bootstrap"
    });
    <!-- Select Multiple Tags -->
    $(".select-tags").select2({
        tags: false,
        theme: "bootstrap",
    });
    <!-- Select & Add Multiple Tags -->
    $(".select-add-tags").select2({
        tags: true,
        theme: "bootstrap",
    });
});
</script>
<script type="text/javascript" src="components/select2/js/pmd-select2.js"></script>
<script>
$(document).ready(function() {
    var sPath = window.location.pathname;
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
    $(".pmd-sidebar-nav").each(function() {
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").addClass("open");
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").find('.dropdown-menu').css("display", "block");
        $(this).find("a[href='" + sPage + "']").parents(".dropdown").find('a.dropdown-toggle').addClass("active");
        $(this).find("a[href='" + sPage + "']").addClass("active");
    });
});
</script>
<!-- Scripts Ends -->