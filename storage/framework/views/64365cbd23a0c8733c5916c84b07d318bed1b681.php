<?php $__env->startSection('content'); ?>


    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <form id="form-article" method="post" class="form" action="" enctype="multipart/form-data">
				<input type="hidden" id="article-id" name="article-id"/>
                <label for="file" class="form-title">EYE CATCH IMAGE
                    <div class="form-file u-clear">
                        <span class="form-file-button">UPLOAD</span>
                    </div>
                </label>
                <input type="file" id="file" name="file" class="input input-image">
                <label for="title" class="form-title">TITLE</label>
                <div class="form-body">
                    <input type="text" name="article-title" id="article-title" class="input input-text">
                </div>
                <label for="contents" class="form-title">CONTENTS</label>
                <div class="form-textarea">
                    <textarea name="article-content" id="article-content" cols="30" rows="10" class="input input-contents"></textarea>
                </div>
                <label for="submit" class="form-button">
                    <div class="button">
    <p class="button-text">Submit</p>
</div>
                </label>
                <input type="submit" id="submit" class="input input-submit">
                <a href="<?php echo e(baseurl()); ?>admin" class="form-button">
                    <div class="button">
    <p class="button-text">Back</p>
</div>
                </a>
            </form>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin::layouts.general', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>