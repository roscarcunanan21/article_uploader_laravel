<div class="row row-fix">
	<div class="col-md-8 col-fix">
		<div class="panel panel-rosie">
			<div class="panel-heading">
				<h3 class="panel-title">Booking Statistics</h3>
			</div>
			<div class="panel-body">
				<?php if(isset($booking_stats) and $booking_stats): ?>
				<div class="chartjs" data-chartid="stats_booking" data-width="600" data-height="180" data-stats="<?php echo e($booking_stats); ?>"></div>
				<?php else: ?>
				<h4 class="text-center">No available data to display.</h4>
				<?php endif; ?>
			</div>
		</div>

		<div id="booking_summary" data-response="<?php echo e($top_clients); ?>"></div>
	</div>

	<div class="col-md-4 col-fix">
		<div class="panel panel-rosie">
			<div class="panel-heading">
				<h3 class="panel-title"><?php echo e($top_cleaner_title); ?></h3>
			</div>
			<div class="panel-body" id="top_cleaner" data-response="<?php echo e($top_cleaner); ?>"></div>

			<div class="form-group">
				<input type="text" readonly="" class="form-control" placeholder="Browse..." />
	        	<input type="file" id="avatar" name="avatar" />
			</div>
		</div>
	</div>
</div>