<?php

$user = $_SESSION['user'];
global $userNav;

require_once('admin/controllers/shared/statistics.php');

$title = 'Quản trị hệ thống - Bếp Nhà Hà Store';
$homeNav = 'class="active open"';

require('admin/views/home/index.php');
