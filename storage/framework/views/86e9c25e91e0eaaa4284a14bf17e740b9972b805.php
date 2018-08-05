<!doctype html>
<html class="no-js" lang="<?php echo e(config('app.locale')); ?>">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>Rosie Admin</title>

        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>" />


        <!-- For IE 9 and below. ICO should be 32x32 pixels in size -->
        <!--[if IE]><link rel="shortcut icon" href="<?php echo e(baseurl()); ?>/assets/images/icons/favicon.ico"><![endif]-->

        <!-- Touch Icons - iOS and Android 2.1+ 180x180 pixels in size. --> 
        <link rel="apple-touch-icon-precomposed" href="<?php echo e(baseurl()); ?>/assets/images/icons/favicon180.png">

        <!-- Firefox, Chrome, Safari, IE 11+ and Opera. 196x196 pixels in size. -->
        <link rel="icon" href="<?php echo e(baseurl()); ?>/assets/images/icons/favicon192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="<?php echo e(baseurl()); ?>/assets/images/icons/favicon32.png">


        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">

        <?php if(ENVIRONMENT === 'local' and FORCE_MIN_ASSETS === false): ?>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/materialicons.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/timepicker/css/bootstrap-timepicker.min.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/datepicker/css/bootstrap-datepicker.min.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/materialize/css/bootstrap-material-design.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/materialize/css/ripples.min.css" />

        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/datatables/datatables.min.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.buttons.1.4.0.min.css"/>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.select.1.2.2.min.css"/>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.responsive.2.1.1.min.css"/>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/fileinput/css/fileinput.4.4.8.min.css"/>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/vendors/fileinput/css/fileinput-rtl.4.4.8.min.css"/>

        <link rel="stylesheet" href="<?php echo e(MODULE_ASSETS_URL); ?>/css/console.css" />
        <?php else: ?>
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/build/vendors.min.css" />
        <link rel="stylesheet" href="<?php echo e(baseurl()); ?>/assets/build/datatables.min.css" />
        <link rel="stylesheet" href="<?php echo e(MODULE_ASSETS_URL); ?>/build/console.min.css" />
        <?php endif; ?>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


        <!-- Main container -->
        <div class="main-container">
            
            <!-- Sidebar -->
            <?php echo $__env->make('admin::components.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <!-- End Sidebar -->


            <!-- Page content -->
            <div id="content" class="content">
                
                <!-- Navigation bar -->
                <?php echo $__env->make('admin::components.navibar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                <!-- End Navigation bar -->
                
                <div class="navbar-fix">
                    <div id="main_content" class="content-fix"></div>
                </div>

            </div>
            <!-- End Page content -->


            <!-- Messagebar -->
            <?php echo $__env->make('admin::components.messagebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <!-- End Messagebar -->

        </div>
        <!-- End Main container -->


        <?php echo $__env->yieldContent('content'); ?>


        <!-- Global Modal for Popup Notifications -->
        <div id="notif_modal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"> Title </h4>
                    </div>

                    <div class="modal-body">
                        <p> Message </p>
                    </div>

                    <div class="modal-footer">
                        <button id="modal_ok" type="button" class="btn btn-sm btn-raised btn-success" data-dismiss="modal">Okay</button>
                    </div>
                </div>
            </div>
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


        <?php if(ENVIRONMENT === 'local' and FORCE_MIN_ASSETS === false): ?>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/jquery/jquery-3.3.1.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/timepicker/js/bootstrap-timepicker.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/materialize/js/ripples.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/materialize/js/material.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/chartjs/Chart.2.6.0.min.js"></script>

        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datatables/datatables.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.altEditor.2.0.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.buttons.1.4.0.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.select.1.2.2.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/datatables/editor/dataTables.responsive.2.1.1.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/fileinput/js/fileinput.4.4.8min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/vendors/fileinput/js/purify.min.js"></script>


        <script src="<?php echo e(baseurl()); ?>/assets/js/plugins.js"></script>
        <script src="<?php echo e(MODULE_ASSETS_URL); ?>/js/helpers.js"></script>
        <script src="<?php echo e(MODULE_ASSETS_URL); ?>/js/crud.js"></script>
        <script src="<?php echo e(MODULE_ASSETS_URL); ?>/js/console.js"></script>
        <?php else: ?>        
        <script src="<?php echo e(baseurl()); ?>/assets/build/vendors.min.js"></script>
        <script src="<?php echo e(baseurl()); ?>/assets/build/datatables.min.js"></script>
        <script src="<?php echo e(MODULE_ASSETS_URL); ?>/build/console.min.js"></script>
        <?php endif; ?>
    </body>
</html>