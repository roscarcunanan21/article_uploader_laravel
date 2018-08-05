<?php echo $__env->make('admin::layouts.top', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

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

<?php echo $__env->make('admin::layouts.bottom', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>