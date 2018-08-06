<!DOCTYPE html>
<!--[if lt IE 9]>
<html lang="ja" class="no-js lt-ie9" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ja" class="no-js" prefix="og: http://ogp.me/ns#"><!--<![endif]-->

<head>
    <meta charset="UTF-8">
    <title>Title</title>
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
    <meta property="og:image" content="<?php echo e(asset('assets/images/common/ogp.png')); ?>">

    <meta name="apple-mobile-web-app-title" content="">

    <link rel="apple-touch-icon-precomposed" href="<?php echo e(asset('images/common/apple-touch-icon-precomposed.png')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/style.css')); ?>">
    

    <script src="<?php echo e(asset('assets/lib/modernizr.js')); ?>"></script>

</head>
<body id="js-body">
<div id="fb-root"></div>

<noscript class="for-no-js">Javascriptを有効にしてください。</noscript>
<div class="for-old">お使いのOS・ブラウザでは、本サイトを適切に閲覧できない可能性があります。最新のブラウザをご利用ください。</div>

<input type="hidden" value="./" id="js-base-url">

<div class="l-wrap js-wrap">
    <!--start header-->
<header class="l-header l-header-admin js-header">
    <div class="l-header-top u-clear">
        
            <div class="l-header-logo">
            
<a class="logo " href="<?php echo e(baseurl()); ?>article">
    <img src="<?php echo e(asset('assets/images/logo-admin.png')); ?>" width="138" height="28" alt="BLOG"/>
</a>

            </div>
            <div class="l-header-text">
                <p>ADMIN PAGE</p>
            </div>
        
    </div>
</header>
<!--end header-->
	
            	   <?php echo $__env->yieldContent('content'); ?>        
            	   
   <!--footer ここから-->
    <footer class="l-footer l-footer-admin">
        
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
        <script src="<?php echo e(asset('assets/lib/jquery-3.1.1.min.js')); ?>"></script>
        <script src="<?php echo e(asset('assets/build/vendors.min.js')); ?>"></script>
        <script src="<?php echo e(asset('assets/js/plugins.js')); ?>"></script>
        <script src="<?php echo e(asset('assets/js/app.js')); ?>"></script>
        <script src="<?php echo e(asset('modules/admin/js/app.js')); ?>"></script>
        <!--javascript ここまで-->
    </body>
</html>