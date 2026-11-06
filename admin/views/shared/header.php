<?php
$contacts = getRecord('contacts', 1);
global $userNav;
$userInfoNav = getRecord('users', $userNav) ?>
<!doctype html>
<html class="no-js " lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <title><?= isset($title) ? $title : 'Quản Trị - Bếp Nhà Hà Store'; ?></title>
    <link rel=icon href="<?= PATH_URL ?>public/img/<?= $contacts['favicon'] ?>" sizes="32x32">
    <link rel="stylesheet" href="admin/themes/plugins/bootstrap/css/bootstrap.min.css">
    <!-- JQuery DataTable Css -->
    <link rel="stylesheet" href="admin/themes/plugins/jquery-datatable/dataTables.bootstrap4.min.css">
    <!-- Bootstrap Material Datetime Picker Css -->
    <link href="admin/themes/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
    <!-- Bootstrap Select Css -->
    <link href="admin/themes/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
    <link rel="stylesheet" href="admin/themes/plugins/dropify/css/dropify.min.css">
    <link rel="stylesheet" href="admin/themes/css/style.min.css">
    <link rel="stylesheet" href="admin/themes/css/dark-mode.css">
    <script>
        (function() {
            // Clean up any old #dark hash in URL
            if (window.location.hash === '#dark') {
                history.replaceState(null, null, window.location.href.split('#')[0]);
            }
            var mode = localStorage.getItem('admin_theme_mode');
            if (mode === 'dark') {
                document.documentElement.classList.add('theme-dark');
            } else {
                document.documentElement.classList.remove('theme-dark');
            }
        })();
    </script>
</head>

<body class="theme-blush">
<script>
    (function() {
        var mode = localStorage.getItem('admin_theme_mode');
        var skin = localStorage.getItem('admin_theme_skin');
        if (skin) {
            document.body.className = document.body.className.replace(/theme-[a-z0-9_-]+/g, '').trim() + ' theme-' + skin;
        }
        if (mode === 'dark') {
            document.body.classList.add('theme-dark');
        } else {
            document.body.classList.remove('theme-dark');
        }
    })();
</script>
