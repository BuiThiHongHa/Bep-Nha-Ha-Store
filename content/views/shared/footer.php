</div>
<footer class="short" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <h4>Thông tin</h4>
                                <hr class="light">
                <div class="row">
                    <?php for ($column = 0; $column < 4; $column++): ?>
                        <?php
                        $links = array_slice(array_slice($footerMenu, 0, 12), $column * 3, 3);
                        $heading = $footerMenu[12 + $column]['menu_name'] ?? '';
                        if (empty($links) && $heading === '') {
                            continue;
                        }
                        ?>
                        <div class="col-md-3">
                            <?php if ($heading !== ''): ?>
                                <h5><?= htmlspecialchars($heading, ENT_QUOTES, 'UTF-8') ?></h5>
                            <?php endif; ?>
                            <ul class="list icons list-unstyled">
                                <?php foreach ($links as $item): ?>
                                    <li><i class="fa fa-caret-right"></i>
                                        <a href="<?= htmlspecialchars($item['menu_url'] ?? '', ENT_QUOTES, 'UTF-8') ?>"><?= htmlspecialchars($item['menu_name'] ?? '', ENT_QUOTES, 'UTF-8') ?></a>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
            <div class="col-md-3">
                <h5 class="short">LIÊN HỆ CHÚNG TÔI</h5>
                <span class="phone"><?= $phone ?></span>
                <p class="short">SĐT Phụ: <?= $phone2 ?></p>
                <ul class="list icons list-unstyled push-top">
                    <li><i class="fa fa-map-marker"></i> <strong>Địa chỉ:</strong> <?= $contactAddress ?></li>
                    <li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:<?= $contactEmail ?>"><?= $contactEmail ?></a></li>
                </ul>
                <div class="social-icons push-top">
                    <ul class="social-icons">
                        <li class="facebook"><a href="<?= $contactFacebook ?>" target="_blank" data-placement="bottom" data-tooltip title="Facebook">Facebook</a></li>
                        <li class="twitter"><a href="<?= $contactTwitter ?>" target="_blank" data-placement="bottom" data-tooltip title="Twitter">Twitter</a></li>
                        <li class="linkedin"><a href="<?= $contactLinkedin ?>" target="_blank" data-placement="bottom" data-tooltip title="Linkedin">Linkedin</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <p>© Copyright <script>
                        document.write(new Date().getFullYear().toString())
                    </script> - Phát triển bởi <span>Hà Bùi</span>.</p>
            </div>
        </div>
    </div>
</footer>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId: '517386205818335',
            xfbml: true,
            version: 'v6.0'
        });
        FB.AppEvents.logPageView();
    };

    (function(d, s, id) {
        let js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "https://connect.facebook.net/vi_VN/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<script src="public/vendor/jquery/jquery.js"></script>
<script src="public/vendor/jquery.appear/jquery.appear.js"></script>
<script src="public/vendor/jquery.easing/jquery.easing.js"></script>
<script src="public/vendor/jquery-cookie/jquery-cookie.js"></script>
<script src="public/vendor/bootstrap/bootstrap.min.js"></script>
<script src="public/vendor/common/common.js"></script>
<script src="public/vendor/jquery.validation/jquery.validation.min.js"></script>
<script src="public/vendor/jquery.stellar/jquery.stellar.js"></script>
<script src="public/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="public/vendor/jquery.gmap/jquery.gmap.js"></script>
<script src="public/vendor/isotope/jquery.isotope.js"></script>
<script src="public/vendor/owlcarousel/owl.carousel.min.js"></script>
<script src="public/vendor/jflickrfeed/jflickrfeed.js"></script>
<script src="public/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="public/vendor/vide/vide.js"></script>
<script src="public/js/theme.min.js"></script>
<script src="public/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="public/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="public/vendor/circle-flip-slideshow/js/jquery.flipshow.js"></script>
<script src="public/js/views/view.home.js"></script>
<script src="public/js/custom.js"></script>
<script src="public/js/theme.init.js"></script>
<script src="public/js/comment/ajax.js"></script>
</body>

</html>
