<?php require_once('header.php'); ?>
<?php 
$menulist = class_menuList();
?>
<!--content area start-->
<div id="content" class="pmd-content inner-page">

	<!--tab start-->
	<div class="container-fluid full-width-container">
	
		<!-- Title -->
		<h1 class="section-title" id="services">
			<span>Menu Manager</span>
		</h1><!-- End Title -->
			
		<!--breadcrum start-->
		<ol class="breadcrumb text-left">
		  <li><a href="index.php">Settings</a></li>
		  <li><a href="menu_list.php">Menu list</a></li>
		  <li><a href="menu_add.php">Menu add</a></li>
		</ol><!--breadcrum end-->
	
		<div class="section section-custom billinfo"> 
			<!--section-title -->
			<h2>Add new user</h2><!--section-title end -->
			<!-- section content start-->
			<form id="validationForm" action="" method="post">
			<div class="pmd-card pmd-z-depth">
				<div class="pmd-card-body">
					<div class="group-fields clearfix row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">
								<label for="regular1" class="control-label">
									Name*
								</label>
								<input type="text" id="regular1" class="form-control">
							</div>
						</div>
					</div>
					<div class="group-fields clearfix row">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">       
								<label>City*</label>
								<select class="select-simple form-control pmd-select2">
									<option>None</option>
									<?php foreach ($menulist['response'] as $row_menulist) {?>
									<option value="<?php echo $row_menulist['Id']; ?>"><?php echo $row_menulist['Name']; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">       
								<label>State*</label>
								<select class="select-simple form-control pmd-select2">
									<option></option>
									<option>Dallas Cowboys</option>
									<option>New York Giants</option>
									<option>Philadelphia Eagles</option>
									<option>Washington Redskins</option>
									<option>Chicago Bears</option>
									<option>Detroit Lions</option>
									<option>Green Bay Packers</option>
									<option>Minnesota Vikings</option>
									<option>Arizona Cardinals</option>
									<option>St. Louis Rams</option>
									<option>San Francisco 49ers</option>
									<option>Seattle Seahawks</option>
									<option>Baltimore Ravens</option>
									<option>Cincinnati Bengals</option>
									<option>Cleveland Browns</option>
									<option>Pittsburgh Steelers</option>
									<option>Houston Texans</option>
									<option>Indianapolis Colts</option>
									<option>Jacksonville Jaguars</option>
									<option>Tennessee Titans</option>
									<option>Denver Broncos</option>
									<option>Kansas City Chiefs</option>
									<option>Oakland Raiders</option>
									<option>San Diego Chargers</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">
								<label for="regular1" class="control-label">
									Zip Code*
								</label>
								<input type="text" id="regular1" class="form-control">
							</div>
						</div>
					</div>
					<div class="group-fields clearfix row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">
							   <label for="regular1" class="control-label">
								 Phone*
							   </label>
							   <input type="text" id="regular1" class="form-control">
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						   <div class="form-group pmd-textfield pmd-textfield-floating-label">
							   <label for="regular1" class="control-label">
								 Email*
							   </label>
							   <input type="text" id="regular1" class="form-control">
							</div>
						</div>
					</div>
					<div class="group-fields clearfix row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group pmd-textfield pmd-textfield-floating-label">
							  <label class="control-label">Address</label>
							  <textarea required class="form-control"></textarea>
							</div>
						</div>
					</div>
<!-- 					<div class="group-fields clearfix row">
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
					<a href="javascript:void(0);" class="btn btn-primary next">Submit</a>
					<a href="javascript:void(0);" class="btn btn-default">Cancel</a>
				</div>
			</div> <!-- section content end -->  
			</form>
		</div>
			
	</div><!-- tab end -->
	
</div><!-- content area end -->
<?php require_once('footer.php'); ?>

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
<!-- login page sections show hide -->
<script type="text/javascript">
	$(document).ready(function(){
	 $('.app-list-icon li a').addClass("active");
		$(".login-for").click(function(){
			$('.login-card').hide()
			$('.forgot-password-card').show();
		});
		$(".signin").click(function(){
			$('.login-card').show()
			$('.forgot-password-card').hide();
		});
	});
</script>
<script type="text/javascript">
$(document).ready(function(){
		$(".login-register").click(function(){
			$('.login-card').hide()
			$('.forgot-password-card').hide();
			$('.register-card').show();
		});
		
		$(".register-login").click(function(){
			$('.register-card').hide()
			$('.forgot-password-card').hide();
			$('.login-card').show();
		});
		$(".forgot-password").click(function(){
			$('.login-card').hide()
			$('.register-card').hide()
			$('.forgot-password-card').show();
		});	
});
</script> 

<!-- Scripts Ends -->