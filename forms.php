<?php require_once 'header.php';?>
<?php
if($form_add){
    $menuadd = class_menuAdd($Name, $Description, $Url, $Icon, $MenuId, $Status);
    header('Location: menu_list.php');
    die();
}

//Menu List
$menulist = class_menuList();

//Icon List
$iconlist = class_iconList();
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
            <form id="validationForm" action="" method="post">
                <input type="hidden" value="1" name="form_add">
                <div class="pmd-card pmd-z-depth">
                    <div class="pmd-card-body">
                        <div class="group-fields clearfix row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label for="regular1" class="control-label">
                                        Name*
                                    </label>
                                    <input type="text" id="regular1" class="form-control" required name="Name" value="<?php echo $Name;?>">
                                </div>
                            </div>
                        </div>
                        <div class="group-fields clearfix row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label class="control-label">Description</label>
                                    <textarea class="form-control"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="group-fields clearfix row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label for="regular1" class="control-label">
                                        URL
                                    </label>
                                    <input type="text" id="regular1" class="form-control" name="Url" value="<?php echo $Url;?>">
                                </div>
                            </div>
                        </div>

                        <div class="group-fields clearfix row">

                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label>Patern Menu</label>
                                    <select class="select-simple form-control pmd-select2" name="MenuId">
                                        <option></option>
                                        <?php foreach ($menulist['response'] as $row_menulist) {?>
                                            <option value="<?php echo $row_menulist['Id']; ?>"><?php echo $row_menulist['Name']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label>Icon</label>
                                    <select class="select-simple form-control pmd-select2" name="Icon">
                                        <option></option>
                                        <?php foreach ($iconlist['response'] as $row_iconlist) {?>
                                        <option value="<?php echo $row_iconlist; ?>"><?php echo $row_iconlist; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                    <label>Status</label>
                                    <select class="select-simple form-control pmd-select2" name="Status" required>
                                        <option></option>
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <!--                    <div class="group-fields clearfix row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="checkbox pmd-default-theme">
                                <label class="pmd-checkbox checkbox-pmd-ripple-effect">
                                    <input type="checkbox" value="">
                                    <span>Save Details</span>
                                </label>
                            </div>
                        </div>
                    </div> -->
                    </div>
                    <div class="pmd-card-actions">
                        <input type="submit" class="btn btn-primary next" value="Submit">
                        <a href="javascript:void(0);" class="btn btn-default">Cancel</a>
                    </div>
                </div>
                <!-- section content end -->
            </form>
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