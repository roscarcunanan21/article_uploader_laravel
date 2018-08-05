<!DOCTYPE html>
<!--[if lt IE 9]>
<html lang="ja" class="no-js lt-ie9" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ja" class="no-js" prefix="og: http://ogp.me/ns#"><!--<![endif]-->

<head>
    <meta charset="UTF-8">
	<?php if(ENVIRONMENT === 'local'): ?>
	<title>Title (local)</title>
	<?php else: ?>
	<title>Title (Production)</title>
	<?php endif; ?>
    <meta name="description" content="sample text,sample tex">
    <meta name="keywords" content="word1,word2,word3">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="og:title" content="">
    <meta property="og:description" content="sample text,sample tex">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="">
    <meta property="og:type" content="blog">
    <meta property="fb:admins" content="">
    <meta property="og:image" content="<?php echo e(baseurl()); ?>/assets/images/common/ogp.png">

    <meta name="apple-mobile-web-app-title" content="">

    <link rel="shortcut icon" href="<?php echo e(baseurl()); ?>/assets/images/common/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="<?php echo e(baseurl()); ?>/images/common/apple-touch-icon-precomposed.png">
    <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/css/style.css">

    <script src="<?php echo e(baseurl()); ?>/assets/lib/modernizr.js"></script>

</head>
<body id="js-body">
<div id="fb-root"></div>

<noscript class="for-no-js">Javascriptを有効にしてください。</noscript>
<div class="for-old">お使いのOS・ブラウザでは、本サイトを適切に閲覧できない可能性があります。最新のブラウザをご利用ください。</div>

<input type="hidden" value="./" id="js-base-url">

<div class="l-wrap js-wrap">
    <!--start header-->
<header class="l-header  js-header">
    <div class="l-header-top u-clear">
        
            <div class="l-header-logo">
            
<div class="logo ">
    <img src="<?php echo e(baseurl()); ?>/assets/images/logo.png" width="253" height="28" alt="BLOG"/>
</div>

            </div>
            <div class="l-header-hamburger">
                <a href="#" class="hamburger js-hamburger " >
    <span class="hamburger-item"></span>
    <span class="hamburger-item"></span>
    <span class="hamburger-item"></span>
</a>
            </div>
        
    </div>
</header>
<!--end header-->

    <nav class="nav js-nav">
    <ul class="nav-list">
        <li class="nav-item">
            <a href="#" class="nav-link">TOP</a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">Facebook</a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">Twitter</a>
        </li>
    </ul>
</nav>

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <div class="archive">
                <ul class="archive-list" id="archive-list">                    
                </ul>
            </div>
            <a href="#" class="archive-button">
                <div class="button">
    <p class="button-text">More</p>
</div>
            </a>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

        <!--footer ここから-->
    <footer class="l-footer ">
        
            <div class="l-footer-button">
            <a class="page-top js-scroll" href="#js-body">
                <span class="page-top-arrow"></span>
            </a>
            </div>
            <div class="l-footer-copyright">
                <small class="copyright">&copy;copyright</small>
            </div>
        
    </footer>
    <!--footer ここまで-->
</div>

        <script>
            var __DATE_NOW = '<?php echo e(DATE_NOW); ?>';        
            var __BASE_URL = '<?php echo e(baseurl() . MODULE); ?>';
            var __AVATAR_URL = '<?php echo e(ASSET_AVATAR_URL); ?>';
            var __PRJ_INFO = [
                '<?php echo e(PROJECT_NAME); ?>',
                '<?php echo e(PROJECT_VERSION); ?>'
            ];
            console.log('%c'+__PRJ_INFO.join(' | '), 'padding: 0 14px; border-left: 7px solid #53082a; border-right: 7px solid #53082a; background: #d11569; color: #fff;');

        </script>
        
        <!--javascript ここから-->
        <script src="<?php echo e(baseurl()); ?>/assets/lib/jquery-3.1.1.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/build/vendors.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/js/plugins.js"></script>
        <script src="<?php echo e(MODULE_ASSETS_URL); ?>/js/app.js"></script>
        <!--javascript ここまで-->
    </body>
</html>
