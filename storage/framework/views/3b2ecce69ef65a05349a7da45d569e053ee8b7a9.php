<div id="messagebar">
    <div id="messagebar_content" class="messagebar-content">
        <div class="text-right">
            <span class="pull-left messagebar-title">Messaging</span>
            
            <button id="messagebar_close" class="btn btn-danger btn-fab btn-fab-close">
                <i class="material-icons">arrow_forward</i>
            </button>
        </div>

        <?php if(isset($sms_all) and $sms_all): ?>
            <?php foreach($sms_all as $sms_by_date): ?>
                <?php foreach($sms_by_date as $sms_by_cleaner): ?>
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object img-circle" src="../assets/images/avatar/<?php echo e($sms_by_cleaner[0]->emp_avatar); ?>" alt="avatar" width="50">
                        </a>
                    </div>
                    <div class="media-body">
                        <!-- <h4 class="media-heading">Friday June 30, 2017</h4> -->
                        
                        <p><b>Hi <?php echo e($sms_by_cleaner[0]->emp_fname); ?>, here's the schedule for <?php echo e($sms_by_cleaner[0]->booking_date); ?>:</b></p>

                        <?php foreach($sms_by_cleaner as $sms): ?>
                        <div class="sms-content">
                            <p><b><?php echo e($sms->cl_fname); ?></b> <?php echo e($sms->time_start); ?> to <?php echo e($sms->time_end); ?></p>
                            <p><?php echo e(isset($sms->cl_address) ? $sms->cl_address : 'Address was not indicated.'); ?></p>
                            <p><?php echo e(isset($sms->cl_contact) ? $sms->cl_contact : 'Contact number was not indicated.'); ?></p>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <?php endforeach; ?>
            <?php endforeach; ?>
        <?php else: ?>
            <h4 class="text-center">No active booking as of this moment.</h4>
        <?php endif; ?>

    </div>
</div>