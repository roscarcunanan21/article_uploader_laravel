<?php $__env->startSection('content'); ?>

	<div class="preloader"></div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('article::layouts.article', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>