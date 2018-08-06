<?php $__env->startSection('content'); ?>

<!--start l-contents-->
    <div class="l-container u-clear">

	<input type="hidden" id="pageNumber"/>
	
        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
                <div class="page-number">
                    Page <span  id="page-number-span">-/-</span>
                </div>
                <div class="archive">
                    <ul class="archive-list" id="archive-list">                        
                    </ul>
                </div>
                <div class="paginate" id="paginate-section">
                </div>
            </div>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('article::layouts.general', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>