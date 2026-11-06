<!-- Jquery Core Js --> 
<script src="admin/themes/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js ( jquery.v3.2.1, Bootstrap4 js) --> 
<script src="admin/themes/bundles/vendorscripts.bundle.js"></script> <!-- slimscroll, waves Scripts Plugin Js -->
<script src="admin/themes/plugins/momentjs/moment.js"></script> <!-- Moment Plugin Js --> 
<!-- Bootstrap Material Datetime Picker Plugin Js -->
<script src="admin/themes/bundles/datatablescripts.bundle.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="admin/themes/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>
<script src="admin/themes/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script> 
<script src="admin/themes/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
<script src="admin/themes/bundles/sparkline.bundle.js"></script> <!-- Sparkline Plugin Js -->
<script src="admin/themes/bundles/c3.bundle.js"></script>
<script src="admin/themes/plugins/dropify/js/dropify.min.js"></script>
<script src="admin/themes/bundles/mainscripts.bundle.js"></script>
<script src="admin/themes/js/pages/forms/editors.js"></script>
<script src="admin/themes/js/pages/index.js"></script>
<script src="admin/themes/js/pages/forms/basic-form-elements.js"></script>
<script src="admin/themes/js/pages/tables/jquery-datatable.js"></script>
<script src="admin/themes/js/pages/forms/dropify.js"></script>

<!-- Dark Mode & Theme Persistence Script -->
<script>
$(document).ready(function() {
    var mode = localStorage.getItem('admin_theme_mode');
    var skin = localStorage.getItem('admin_theme_skin');

    function applyTheme(isDark) {
        if (isDark) {
            $('html, body').addClass('theme-dark');
            $('#darktheme').prop('checked', true);
            $('#lighttheme').prop('checked', false);
            localStorage.setItem('admin_theme_mode', 'dark');
        } else {
            $('html, body').removeClass('theme-dark');
            $('#lighttheme').prop('checked', true);
            $('#darktheme').prop('checked', false);
            localStorage.setItem('admin_theme_mode', 'light');
            if (window.location.hash === '#dark') {
                history.replaceState(null, null, window.location.href.split('#')[0]);
            }
        }
    }

    if (mode === 'dark') {
        applyTheme(true);
    } else {
        applyTheme(false);
    }

    if (skin) {
        $('.right-sidebar .choose-skin li').removeClass('active');
        $('.right-sidebar .choose-skin li[data-theme="' + skin + '"]').addClass('active');
    }

    // Handle Dark/Light mode toggle
    $('.light_dark input').off('change').on('change', function() {
        if ($(this).val() === 'dark') {
            applyTheme(true);
        } else {
            applyTheme(false);
        }
    });

    // Handle Color skin selection
    $('.right-sidebar .choose-skin li').on('click', function() {
        var chosenSkin = $(this).data('theme');
        if (chosenSkin) {
            localStorage.setItem('admin_theme_skin', chosenSkin);
        }
    });
});
</script>
</body>
</html>
