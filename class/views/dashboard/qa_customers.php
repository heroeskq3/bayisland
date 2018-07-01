<?php
$resume = null;
if (isset($_GET['resume'])) {
    $resume = $_GET['resume'];
}
//customers
$qacustomerslist = class_qaCustomersList();
if (!$row_userstypeinfo['Admin']) {
    $qacustomerslist = class_arrayFilter($qacustomerslist['response'], 'UsersId', $_SESSION['UserId'], '=');
}

$context = array();
foreach ($qacustomerslist['response'] as $key_qacustomerslist => $row_qacustomerslist) {

    //classes info
    if ($row_qacustomerslist['ClassesId']) {
        $qaclassesinfo     = class_qaClassesInfo($row_qacustomerslist['ClassesId']);
        $row_qaclassesinfo = $qaclassesinfo['response'][0];
    } else {
        $row_qaclassesinfo['Name'] = 'Undefined';
    }

    if ($row_qacustomerslist['LastVisit']) {
        $createdate = $row_qacustomerslist['CreateDate'];
        $lastvisit  = $row_qacustomerslist['LastVisit'];
    } else {
        $createdate = $row_qacustomerslist['CreateDate'];
        $lastvisit  = null;
    }

    //context
    $context_01 = class_qacustomerscontext($createdate, $lastvisit, $row_qaclassesinfo['Period'], 365);
    $context[]  = $context_01['response'];

}

//customers context
$qasuccess = class_arrayFilter($context, 'context', 'success', '=');
$qawarning = class_arrayFilter($context, 'context', 'warning', '=');
$qadanger  = class_arrayFilter($context, 'context', 'danger', '=');
$qaprimary = class_arrayFilter($context, 'context', 'primary', '=');

if ($qasuccess['rows']) {
    $qasuccess_color = "panel-green";
} else {
    $qasuccess_color = "panel-default";
}
if ($qawarning['rows']) {
    $qawarning_color = "panel-yellow";
} else {
    $qawarning_color = "panel-default";
}
if ($qadanger['rows']) {
    $qadanger_color = "panel-red";
} else {
    $qadanger_color = "panel-default";
}
if ($qaprimary['rows']) {
    $qaprimary_color = "panel-primary";
} else {
    $qaprimary_color = "panel-default";
}
?>
<div class="col-lg-3 col-md-12">
    <?php if ($qaprimary['rows']) {?>
<a href="reports_qacustomers.php?resume=<?php echo $resume; ?>&Estado=<?php echo CONTEXT_PRIMARY; ?>">
<?php } else {?>
    <a href="#">
<?php }?>
        <div class="panel <?php echo $qaprimary_color; ?>">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-star fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">
                            <?php echo $qaprimary['rows']; ?>
                        </div>
                        <div>Visitas para semana!</div>
                    </div>
                </div>
            </div>
                <div class="panel-footer">
                    <span class="pull-left"><?php echo LANG_VIEWDETAILS ?></span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
        </div>
        </a>
    </div>
    <div class="col-lg-3 col-md-6">
        <?php if ($qasuccess['rows']) {
    ?>
        <?php
$resume = null;
    if ($row_userstypeinfo['Admin']) {
        $resume = 'Agente';
    }
    ?>
        <a href="reports_qacustomers.php?resume=<?php echo $resume; ?>&Estado=<?php echo CONTEXT_SUCCESS; ?>">
        <?php } else {?>
            <a href="#">
        <?php }?>
        <div class="panel <?php echo $qasuccess_color; ?>">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-smile-o fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">
                            <?php echo $qasuccess['rows'] ?>
                        </div>
                        <div>Seguimiento al día!</div>
                    </div>
                </div>
            </div>

                <div class="panel-footer">
                    <span class="pull-left"><?php echo LANG_VIEWDETAILS ?></span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>

        </div>
        </a>
    </div>
    <div class="col-lg-3 col-md-6">
        <?php if ($qawarning['rows']) {?>
        <a href="reports_qacustomers.php?resume=<?php echo $resume; ?>&Estado=<?php echo CONTEXT_WARNING; ?>">
        <?php } else {?>
            <a href="#">
        <?php }?>
        <div class="panel <?php echo $qawarning_color; ?>">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-meh-o fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">
                            <?php echo $qawarning['rows'] ?>
                        </div>
                        <div>Falta de Atención!</div>
                    </div>
                </div>
            </div>

                <div class="panel-footer">
                    <span class="pull-left"><?php echo LANG_VIEWDETAILS ?></span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>

        </div>
        </a>
    </div>
    <div class="col-lg-3 col-md-6">
        <?php if ($qadanger['rows']) {?>
        <a href="reports_qacustomers.php?resume=<?php echo $resume; ?>&Estado=<?php echo CONTEXT_DANGER; ?>">
        <?php } else {?>
        <a href="#">
        <?php }?>
        <div class="panel <?php echo $qadanger_color; ?>">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-frown-o fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">
                            <?php echo $qadanger['rows'] ?>
                        </div>
                        <div>Caducado!</div>
                    </div>
                </div>
            </div>

                <div class="panel-footer">
                    <span class="pull-left"><?php echo LANG_VIEWDETAILS ?></span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>

        </div>
        </a>
    </div>