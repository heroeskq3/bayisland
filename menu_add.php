<?php require_once 'header.php';?>
<?php
if ($form_add) {
    $menuadd = class_menuAdd($Name, $Description, $Url, $Icon, $MenuId, $Status);
    header('Location: menu_list.php');
    die();
}

//Menu List
$menulist       = class_menuList();
$array_menulist = array();
foreach ($menulist['response'] as $row_menulist) {
    $array_menulist[] = array('label' => $row_menulist['Name'], 'value' => $row_menulist['Id'], 'selected' => $MenuId);
}

//Icon List
$iconlist       = class_iconList();
$array_iconlist = array();
foreach ($iconlist['response'] as $row_iconlist) {
    $array_iconlist[] = array('label' => $row_iconlist, 'value' => $row_iconlist, 'selected' => $Icon);
}

//Status list
$array_status   = array();
$array_status[] = array('label' => 'Active', 'value' => '1', 'selected' => $Status);
$array_status[] = array('label' => 'Inactive', 'value' => '0', 'selected' => $Status);

/* * * * *
 * FORMS GENERATOR - Create Forms fields
 * value = use variable request or multiple values define array (value and label)
 * dataType = int, str, datetime, date, time, bool
 * inputType = hiddem, text, textarea, select, checkbox, email, datetime, datepick, jumpmenu, file
 * required = true or false
 * buttonType = submit or back
 * position = 0 = hidden, 1 = 1cols, 2 = 2cols, 3 = 3cols / based Materialized Framework
 * * * * */

//Form Generator
$formFields = array(
    'form_add'    => array('name' => 'form_add', 'label' => 'form_add', 'value' => 1, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Id'          => array('name' => 'Id', 'label' => 'Id', 'value' => $Id, 'dataType' => 'Int', 'inputType' => 'hidden', 'required' => false, 'position' => 1),
    'Name'        => array('name' => 'Name', 'label' => 'Name', 'value' => $Name, 'dataType' => 'Int', 'inputType' => 'text', 'required' => true, 'position' => 1),
    'Description' => array('name' => 'Description', 'label' => 'Description', 'value' => $Description, 'dataType' => 'Int', 'inputType' => 'textarea', 'required' => false, 'position' => 1),
    'Url'         => array('name' => 'Url', 'label' => 'Url', 'value' => $Url, 'dataType' => 'Int', 'inputType' => 'text', 'required' => false, 'position' => 1),
    'Icon'        => array('name' => 'Icon', 'label' => 'Icon', 'value' => $array_iconlist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Patern Menu' => array('name' => 'MenuId', 'label' => 'Patern Menu', 'value' => $array_menulist, 'dataType' => 'Int', 'inputType' => 'select', 'required' => false, 'position' => 3),
    'Status'      => array('name' => 'Status', 'label' => 'Status', 'value' => $array_status, 'dataType' => 'Int', 'inputType' => 'select', 'required' => true, 'position' => 3),
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

$formAdd = class_formGenerator($formParams, $formFields, $formButtons);
?>
<!--content area start-->
<div id="content" class="pmd-content inner-page">
    <!--tab start-->
    <div class="container-fluid full-width-container">
        <!-- Title -->
        <h1 class="section-title" id="services">
            <span>Menu Manager</span>
        </h1>
        <!-- End Title -->
        <!--breadcrum start-->
        <ol class="breadcrumb text-left">
            <li><a href="index.php">Settings</a></li>
            <li><a href="menu_list.php">Menu list</a></li>
            <li><a href="menu_add.php">Menu add</a></li>
        </ol>
        <!--breadcrum end-->
        <div class="section section-custom billinfo">
            <!--section-title -->
            <h2>Add new menu</h2>
            <!--section-title end -->
            <!-- section content start-->
            <?php echo $formAdd; ?>
                <!-- section content end -->
        </div>
    </div>
    <!-- tab end -->
</div>
<!-- content area end -->
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