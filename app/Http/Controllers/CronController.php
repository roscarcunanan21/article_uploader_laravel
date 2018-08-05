<?php

namespace App\Http\Controllers;
use App\Http\Models\CronModel;
use Template;


class CronController extends Controller
{

	/**
	 * Clearing logs is very important 
	 * to prevent future issues regarding
	 * not enough disk/storage capacity.
	 *
	 * Must be run every 3 AM (low traffic hour)
	 *
	 * The script will check for logs
	 * last modified date that is already 1 week old.
	 *
	 * 		* 3 * * * 	to run the script every 3 AM
	 */
	public function clear_logs()
	{

		// Change this value to your
		// prefered days of checking.
		// Defaults to 7 Days (1 week) old file
		// to be deleted.
		$_DAYS = 7;
		$expiry = ((60 * 60) * 24) * $_DAYS;


		$storage_path = storage_path();
		

		// Log folders to scan through
		$log_folders = array(
			'framework/views',
			'logs'
		);


		// Log files to skip
		$log_except = array(
			'.',
			'..',
			'.gitignore'
		);


		// Total files deleted
		$total = 0;
		

		foreach ($log_folders as $folder) {

			$log_folder = "{$storage_path}/{$folder}";

			if (is_dir($log_folder)) {

				$scan_dir = scandir($log_folder);
				$scan_cls = array_diff($scan_dir, $log_except);

				if ($scan_cls) {

					foreach ($scan_cls as $filename) {

						$file = "{$log_folder}/{$filename}";

						$date_modified = filemtime($file);
						$date_today = strtotime(date(TIMESTAMP_FORMAT));
						$date_offset = $date_today - $date_modified;


						if ($date_offset >= $expiry) {
							unlink($file);

							$total++;
						}
					}
				}
			}
		}

		return array('total_files_cleared' => $total);
	}
}
