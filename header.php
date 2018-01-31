<?php
ob_start();
require_once 'includes/restrict.php';
require_once 'includes/config.php';
require_once 'includes/globals.php';
if (1) {
    //system debuggeer
    //HTML VIEWS
    ClassViews('class_html'); //html header
    ClassViews('class_asside'); //asside menu
    ClassViews('class_nav'); //nav bar
    class_scriptsLibrary(); //JS Scripts

    //error_reporting(0); //php error & warning on/off
    set_error_handler("class_phpError"); //php debugger
}

//determine home section
$array_url       = explode('/', $_SERVER['PHP_SELF']);
$section_url     = array_pop($array_url);
$sectioninfo     = class_menuInfoUrl($section_url);
$row_sectioninfo = $sectioninfo['response'][0];

//determine Partner menu
if ($sectioninfo['rows']) {
    $menuinfo     = class_menuInfo($row_sectioninfo['MenuId']);
    $row_menuinfo = $menuinfo['response'][0];
} else {
    $row_menuinfo = array('Name' => $section_tittle, 'Url' => isset($HTTP_REFERER));
}
?>
<?php if ($section_style) {?>
<!--content area start-->
<div id="content" class="pmd-content inner-page">
    <!--tab start-->
    <div class="container-fluid full-width-container about">
        <?php } else {?>
<!--content area start-->
<div id="content" class="pmd-content content-area dashboard">
    <div class="container-fluid">
        <div class="row" id="card-masonry">
<?php }?>
            <?php if ($section_searchbar) {?>
            <div class="pull-right table-title-top-action">
                <div class="pmd-textfield pull-left">
                  <input type="text" id="exampleInputAmount" class="form-control" placeholder="Search for...">
                </div>
                <a href="?action=search" class="btn btn-primary pmd-btn-raised add-btn pmd-ripple-effect pull-left">Search</a>
            </div>
            <?php }?>

            <?php if ($section_navbar) {?>
            <h1 class="section-title" id="services">
                <span><?php echo $section_tittle; ?></span>
            </h1>
            <ol class="breadcrumb text-left">
              <li><a href="index.php">Home</a></li>
              <li class="active"><a href="<?php echo $row_menuinfo['Url']; ?>"><?php echo $row_menuinfo['Name']; ?></a></li>
                <?php if ($sectioninfo['rows']) {?>
                    <li class="active"><a href="<?php echo $row_sectioninfo['Url']; ?>"><?php echo $row_sectioninfo['Name']; ?></a></li>
                <?php }?>
            </ol>
            <?php }?>



