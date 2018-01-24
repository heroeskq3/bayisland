<?php
//Section Parameters
$section_tittle      = "Menu Update";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 0;
?>
<?php require_once 'header.php';?>
<?php
if ($form_update) {
    $menuupdate = class_menuUpdate($Id, $Name, $Description, $Url, $Icon, $MenuId, $Order, $Status);
    class_debug($menuupdate);
    header('Location: menu_list.php');
    die();
}
//Menu Info
$menuinfo     = class_menuInfo($Id);
$row_menuinfo = $menuinfo['response'][0]; //poner los info

//Menu List
$menulist       = class_menuList();
$array_menulist = array();
foreach ($menulist['response'] as $row_menulist) {
    $array_menulist[] = array('label' => $row_menulist['Name'], 'value' => $row_menulist['Id'], 'selected' => $row_menuinfo['MenuId']);
}

//Icon List
$iconlist       = class_iconList();
$array_iconlist = array();
foreach ($iconlist['response'] as $row_iconlist) {
    $array_iconlist[] = array('label' => $row_iconlist, 'value' => $row_iconlist, 'selected' => $row_menuinfo['Icon']);
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => 1, 'selected' => $row_menuinfo['Status']);
$array_status[] = array('label' => 'Inactive', 'value' => 0, 'selected' => $row_menuinfo['Status']);

//Order by list
$array_order   = array();
for ($i = 1; $i < 10; ++$i) {
    $array_order[] = array('label' => $i, 'value' => $i, 'selected' => $row_menuinfo['Order']);
}

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
    'Id'          => array('name' => 'Id', 'label' => 'Id', 'value' => $row_menuinfo['Id'], 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Name'        => array('name' => 'Name', 'label' => 'Name', 'value' => $row_menuinfo['Name'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Description' => array('name' => 'Description', 'label' => 'Description', 'value' => $row_menuinfo['Description'], 'dataType' => 'Int', 'inputType' => 'textarea', 'required' => false, 'position' => 1),
    'Url'         => array('name' => 'Url', 'label' => 'Url', 'value' => $row_menuinfo['Url'], 'dataType' => 'Int', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Icon'        => array('name' => 'Icon', 'label' => 'Icon', 'value' => $array_iconlist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'Patern Menu' => array('name' => 'MenuId', 'label' => 'Patern Menu', 'value' => $array_menulist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 2),
    'Order'      => array('name' => 'Order', 'label' => 'Order', 'value' => $array_order, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 2),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 2)
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