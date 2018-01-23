<?php
require_once 'header_signout.php'
?>
<?php
//LOGIN
if (isset($_POST['Password']) && isset($_POST['UserName'])) {

    $login           = class_login($_POST['UserName'], $_POST['Password']);
    $row_login       = $login['response'][0];
    $login_totalRows = $login['rows'];

    if ($login_totalRows) {

        if (!session_id()) {
            session_start();
        }

        $_SESSION['UserId'] = $row_login['Id'];

        header('Location: index.php');
        die();
    } else {
        $error = "login_failed";
    }
}
?>
    <style type="text/css">
        .logincard .alert {
        display: block;
        }
    </style>
<div class="logincard">
    <div class="pmd-card card-default pmd-z-depth">
        <div class="login-card">
            <form method="post" name="sigin">
                <div class="pmd-card-title card-header-border text-center">
                    <div class="loginlogo">
                        <a href="javascript:void(0);"><img src="themes/images/<?php echo CONFIG_LOGOICON; ?>" alt="Logo"></a>
                    </div>
                    <h3><?php echo LANG_SIGNIN; ?> <span><?php echo LANG_WITH; ?> <strong><?php echo LANG_SITETITTLE; ?></strong></span></h3>
                </div>
                <?php if (isset($error) == 'login_failed') {?>
                    <div class="alert alert-danger" role="alert"> <?php echo LANG_ONSNAP; ?> </div>
                    <?php }?>

                <div class="pmd-card-body">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_USERNAME; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">perm_identity</i></div>
                            <input type="text" class="form-control" id="UserName" name="UserName">
                        </div>
                    </div>
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_PASSWORD; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">lock_outline</i></div>
                            <input type="password" class="form-control" id="Password" name="Password">
                        </div>
                    </div>
                </div>
                <div class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
                    <div class="form-group clearfix">
                        <div class="checkbox pull-left">
                            <label class="pmd-checkbox checkbox-pmd-ripple-effect">
                                <input type="checkbox" checked="" value="">
                                <span class="pmd-checkbox"> <?php echo LANG_REMEMBERME; ?></span>
                            </label>
                        </div>
                        <span class="pull-right forgot-password">
                            <a href="javascript:void(0);"><?php echo LANG_FORGOTPASSWORD; ?>?</a>
                        </span>
                    </div>
                    <input type="submit" name="action" class="btn pmd-ripple-effect btn-primary btn-block" value="<?php echo LANG_LOGIN; ?>">
<!--                     <a href="index.php" type="submit" class="btn pmd-ripple-effect btn-primary btn-block"><?php echo LANG_LOGIN; ?></a>
 -->                    <p class="redirection-link"><?php echo LANG_DONTHAVEANACCOUNT; ?>? <a href="javascript:void(0);" class="login-register"><?php echo LANG_SIGNUP; ?></a>. </p>
                </div>
            </form>
        </div>
        <div class="register-card">
            <div class="pmd-card-title card-header-border text-center">
                <div class="loginlogo">
                    <a href="javascript:void(0);"><img src="themes/images/<?php echo CONFIG_LOGOICON; ?>" alt="Logo"></a>
                </div>
                <h3><?php echo LANG_SIGNUP; ?> <span><?php echo LANG_WITH; ?> <strong><?php echo LANG_SITETITTLE; ?></strong></span></h3>
            </div>
            <form>
                <div class="pmd-card-body">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_USERNAME; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">perm_identity</i></div>
                            <input type="text" class="form-control" id="exampleInputAmount">
                        </div>
                    </div>
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_EMAILADDRESS; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">email</i></div>
                            <input type="text" class="form-control" id="exampleInputAmount">
                        </div>
                    </div>
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_PASSWORD; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">lock_outline</i></div>
                            <input type="text" class="form-control" id="exampleInputAmount">
                        </div>
                    </div>
                </div>
                <div class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
                    <a href="index.php" type="button" class="btn pmd-ripple-effect btn-primary btn-block"><?php echo LANG_SIGNUP; ?></a>
                    <p class="redirection-link"><?php echo LANG_ALREADYHAVEANACCOUNT; ?> <a href="javascript:void(0);" class="register-login"><?php echo LANG_SIGNIN; ?></a>. </p>
                </div>
            </form>
        </div>
        <div class="forgot-password-card">
            <form>
                <div class="pmd-card-title card-header-border text-center">
                    <div class="loginlogo">
                        <a href="javascript:void(0);"><img src="themes/images/<?php echo CONFIG_LOGOICON; ?>"" alt="Logo"></a>
                    </div>
                    <h3><?php echo LANG_FORGOTPASSWORD; ?>?<br><span><?php echo LANG_SUBMITYOUREMAILADDRESS; ?>.</span></h3>
                </div>
                <div class="pmd-card-body">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label for="inputError1" class="control-label pmd-input-group-label"><?php echo LANG_EMAILADDRESS; ?></label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons md-dark pmd-sm">email</i></div>
                            <input type="text" class="form-control" id="exampleInputAmount">
                        </div>
                    </div>
                </div>
                <div class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
                    <a href="index.php" type="button" class="btn pmd-ripple-effect btn-primary btn-block"><?php echo LANG_SUBMIT; ?></a>
                    <p class="redirection-link"><?php echo LANG_ALREADYREGISTERED; ?> <a href="javascript:void(0);" class="register-login"><?php echo LANG_SIGNIN; ?></a></p>
                </div>
            </form>
        </div>
    </div>
</div>
<?php require 'footer_signout.php';?>