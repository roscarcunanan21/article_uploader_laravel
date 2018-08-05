<?php $__env->startSection('content'); ?>

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <a href="<?php echo e(baseurl()); ?>admin/article/add" class="l-main-button">
                <div class="button">
    <p class="button-text">New Article</p>
</div>
            </a>
            <ul class="archive archive-admin">
            </ul>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin::layouts.general', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>