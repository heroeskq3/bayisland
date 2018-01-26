<?php
//Section Parameters
$section_tittle      = "Edit Profile";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
//Users Info
$usersinfo     = class_usersInfo($_SESSION['UserId']);
$row_usersinfo = $usersinfo['response'][0];

//Users Details Info
$usersdetailsinfo     = class_usersDetailsInfo($row_usersinfo['UsersIndex']);
$row_usersdetailsinfo = $usersdetailsinfo['response'][0];

//USERS INFO UPDATE
if (isset($_POST['form_usersInfoUpdate'])) {
    $usersInfoUpdate = class_usersDetailsUpdate($row_usersinfo['UsersIndex'], $FirstName, $LastName, $Email, $Image);
    header('Location: profile.php');
    die();
}
//FILE UPLOAD
if ($File["name"]) {
    $debug      = 0;
    $resource   = "profile";
    $fileUpload = class_filesUpload($File, $resource, $debug);
    $Image      = $File["name"];
}
//USERS PASSWORD UPDATE
if (isset($_POST['form_usersPasswordUpdate'])) {
    $usersPasswordUpdate = class_usersPasswordUpdate($_SESSION['UserId'], $Password);
    header('Location: profile.php');
    die();
}
?>
        <!--breadcrum end-->
        <div class="page-content profile-edit section-custom">
            <div class="pmd-card pmd-z-depth">
                <div class="pmd-card-body">
                    <div class="row">
                    <form id="form_usersInfoUpdate" method="post" action="" enctype="multipart/form-data">
                        <div data-provides="fileinput" class="fileinput fileinput-new col-lg-3">
                            <div data-trigger="fileinput" class="fileinput-preview thumbnail img-circle img-responsive">
                                <img src="<?php echo PATH_PROFILEPICTURE . $row_usersdetailsinfo['Image']; ?>" alt="<?php echo $row_usersdetailsinfo['Image']; ?>">
                            </div>
                            <div class="action-button">
                                <span class="btn btn-default btn-raised btn-file ripple-effect">
                                    <span class="fileinput-new"><i class="material-icons md-light pmd-xs">add</i></span>
                                <span class="fileinput-exists"><i class="material-icons md-light pmd-xs">mode_edit</i></span>
                                <input type="file" name="File">
                                </span>
                                <a data-dismiss="fileinput" class="btn btn-default btn-raised btn-file ripple-effect fileinput-exists" href="javascript:void(0);"><i class="material-icons md-light pmd-xs">close</i></a>
                            </div>
                        </div>

                        <div class="col-lg-9 custom-col-9">
                            <h3 class="heading">Personal Information</h3>
                            <div class="row">
                                <div class="form-horizontal" >
                                    <input type="hidden" name="form_usersInfoUpdate" value="1" id="form_usersInfoUpdate">
                                    <input type="hidden" name="Image" value="<?php echo $row_usersdetailsinfo['Image']; ?>" id="Image">
                                    <fieldset>
                                        <div class="form-group prousername pmd-textfield">
                                            <label class="control-label col-sm-3">Username</label>
                                            <div class="col-sm-9">
                                                <p class="form-control-static"><strong><?php echo $row_usersinfo['UserName']; ?></strong></p>
                                            </div>
                                        </div>
                                        <div class="form-group pmd-textfield">
                                            <label class="col-sm-3 control-label" for="u_fname">First Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control empty" id="FirstName" name="FirstName" value="<?php echo $row_usersdetailsinfo['FirstName']; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group pmd-textfield">
                                            <label class="col-sm-3 control-label" for="u_fname">Last Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control empty" id="LastName" name="LastName" value="<?php echo $row_usersdetailsinfo['LastName']; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group pmd-textfield">
                                            <label class="col-sm-3 control-label" for="u_fname">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" class="form-control empty" name="Email" value="<?php echo $row_usersdetailsinfo['Email']; ?>" id="Email" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group btns margin-bot-30">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <button type="submit" class="btn btn-primary pmd-ripple-effect">Update</button>
                                                <button class="btn btn-default btn-link pmd-ripple-effect">Cancel</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                            <h3 class="heading">Change Password</h3>
                            <div class="row">
                                <form class="form-horizontal" id="form_usersPasswordUpdate" method="post" action="">
                                <input type="hidden" name="form_usersPasswordUpdate" value="1" id="form_usersPasswordUpdate">
                                    <fieldset>
                                        <div class="form-group pmd-textfield">
                                            <label class="control-label col-sm-3" for="u_password">Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control empty" id="Password" name="Password" value="<?php echo $row_usersinfo['Password']; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group pmd-textfield">
                                            <label class="control-label col-sm-3" for="u_password"></label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control empty" id="PasswordRepeat" name="PasswordRepeat" value="<?php echo $row_usersinfo['Password']; ?>">
                                                <span class="help-text">Repeat password</span>
                                            </div>
                                        </div>
                                        <div class="form-group btns">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <button type="submit" class="btn btn-primary">Update</button>
                                                <button class="btn btn-default btn-link pmd-ripple-effect">Cancel</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<?php require_once 'footer.php';?>
<!-- Scripts Starts -->

<script src="components/file-upload/js/upload-image.js"></script>
<!-- Scripts Ends -->