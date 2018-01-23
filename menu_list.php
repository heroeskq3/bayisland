<?php require_once 'header.php';?>
<?php
//Update menu item
if ($action == "update") {
    header('Location: menu_update.php?Id=' . $Id);
    die();
}

//Delete menu item
if ($action == "delete") {
    class_menuDelete($Id);
    header('Location: menu_list.php');
    die();
}

$table_params = array(
	'searchbar' => true,
	'rowsbypage' => 10,
	'showactions' => true
);
$table_array = class_tableMenuList();

//generate table list
$tablegenerator = class_tableGenerator($table_array, $table_params);
?>
<!--content area start-->
<div id="content" class="pmd-content inner-page">
<!--tab start-->
    <div class="container-fluid full-width-container value-added-detail-page">
		<div>
			<div class="pull-right table-title-top-action">
				<div class="pmd-textfield pull-left">
				  <input type="text" id="exampleInputAmount" class="form-control" placeholder="Search for...">
				</div>
				<a href="javascript:void(0);" class="btn btn-primary pmd-btn-raised add-btn pmd-ripple-effect pull-left">Search</a>
				<a href="menu_add.php" class="btn btn-success pmd-btn-raised add-btn pmd-ripple-effect pull-left">Add</a>
			</div>
			<!-- Title -->
			<h1 class="section-title" id="services">
				<span>Menu Manager</span>
			</h1>
			<!-- End Title -->
			<!--breadcrum start-->
			<ol class="breadcrumb text-left">
			  <li><a href="index.html">Home</a></li>
			  <li class="active">Settings</li>
			  <li class="active">Menu Manager</li>
			  <li class="active"><a href="menu_list.php">Menu List</a></li>
			</ol><!--breadcrum end-->
		</div>
		<!-- Table -->
		<?php echo $tablegenerator; ?>
	</div>
</div>
<!--tab start-->
</div>
<!--content area end-->
<?php require_once 'footer.php';?>