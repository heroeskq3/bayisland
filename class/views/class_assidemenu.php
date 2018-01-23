<?php
$menuList = class_assideMenuList();
?>
    <?php if ($menuList['rows']) {
    ?>
    <?php foreach ($menuList['response'] as $row_menuList) {?>

                <?php
                $MenuId           = $row_menuList['Id'];
                $submenuList      = class_assidesubmenuList($MenuId);
                $submenu_totalRows = $submenuList['rows'];
                ?>

    <li class="dropdown pmd-dropdown">
        <?php if ($submenu_totalRows) {?>
        <a aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media" data-sidebar="true" >
                <i class="media-left media-middle material-icons md-light"><?php echo $row_menuList['Icon']; ?></i>
                    <span class="media-body"><?php echo $row_menuList['Name']; ?></span>
                <div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
            </a>
            <?php }else{ ?>
        <a  href="<?php echo $row_menuList['Url']; ?>">
                <i class="media-left media-middle material-icons md-light"><?php echo $row_menuList['Icon']; ?></i>
                    <span class="media-body"><?php echo $row_menuList['Name']; ?></span>
                <div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
            </a>
            <?php } ?>

            <?php if ($submenu_totalRows) {?>
            <ul class="dropdown-menu">
                <?php foreach ($submenuList['response'] as $row_submenuList) {?>
                <li>
                    <a href="<?php echo $row_submenuList['Url']; ?>">
                        <?php echo $row_submenuList['Name']; ?>
                    </a>
                </li>
                <?php }?>
            </ul>
            <?php }?>
    </li>
    <?php }?>
    </ul>
    <?php }?>