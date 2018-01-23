<?php
$UserId        = $_SESSION['UserId'];
$usersInfo     = class_usersInfo($UserId);
$row_usersInfo = $usersInfo['response'][0];
?>
<li class="dropdown pmd-dropdown pmd-user-info visible-xs visible-md visible-sm visible-lg">
    <a aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media" data-sidebar="true" aria-expandedhref="javascript:void(0);">
        <div class="media-left">
            <!-- Primary circle button with ripple effect -->
            <button class="btn pmd-btn-fab pmd-ripple-effect btn-primary" type="button">
                <i class="pmd-sm"><img src="<?php echo PATH_RESOURCES . "profile/" . $row_usersInfo['Image']; ?>" alt="<?php echo $row_usersInfo['FullName']; ?>" width="60px" height="60px"></i>
            </button>
        </div>
        <div class="media-body media-middle">
            <?php echo $row_usersInfo['FullName']; ?>
        </div>
        <div class="media-right media-middle"><i class="dic-more-vert dic"></i></div>
    </a>
    <ul class="dropdown-menu">
        <li>
            <a href="profile.php">
                <?php echo LANG_PERFILEDIT; ?>
            </a>
        </li>
        <li>
            <a href="logout.php">
                <?php echo LANG_LOGOUT; ?>
            </a>
        </li>
    </ul>
</li>