<?php
//Section Parameters
$section_tittle      = "Menu Manager";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once('header.php') ?>
<?php 
$privilegeslist = class_privilegesList();
class_debug($privilegeslist)
?>
		<section class="row component-section">
			<div class="col-md-9"> 
				<div class="component-box">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<?php foreach ($privilegeslist['response'] as $row_privilegeslist) { ?>
  						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="heading-<?php echo $row_privilegeslist['Id']?>">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-<?php echo $row_privilegeslist['Id']?>" aria-expanded="true" aria-controls="collapse-<?php echo $row_privilegeslist['Id']?>">
								  	<?php echo $row_privilegeslist['Id']?>
									</a>
							  	</h4>
							</div>
							<div id="collapse-<?php echo $row_privilegeslist['Id']?>" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									The word &quot;accordion&quot; typically conjures a mental image of your favorite polka band. However that’s not what we are talking about when referring to accordion menu. Although polka music can offer a rip-snorting good time, the term is associated with something different in the realm of web design. User interface accordions might refer to menus, widgets, or content areas which expand like the musical instrument. These interfaces have grown a lot more popular in recent years with the expansion of JavaScript.
							  	</div>
							</div>
						</div>
<?php } ?>
					</div>
					
				</div>
			</div>
		</section>

 <?php require_once('footer.php') ?>
<!-- Scripts Starts -->
<script src="assets/js/jquery-1.12.2.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/propeller.min.js"></script>
<script>
	$(document).ready(function() {
		var sPath=window.location.pathname;
		var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
		$(".pmd-sidebar-nav").each(function(){
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").addClass("open");
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").find('.dropdown-menu').css("display", "block");
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").find('a.dropdown-toggle').addClass("active");
			$(this).find("a[href='"+sPage+"']").addClass("active");
		});
		$(".auto-update-year").html(new Date().getFullYear());
	});
</script> 

<!-- Scripts Ends -->

</body>
</html>