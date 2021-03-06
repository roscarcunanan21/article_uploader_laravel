<?php

namespace Modules\Admin\Models;

use DB;
use Msg;


class AdminModel
{	
	public static function add_article( ){		
		
		// echo "filesize: ".$_FILES["file"]["size"];
		// print_r($_POST);
		
		$edit_mode = false;
		if(($_POST['article-id']) != ''){
			$edit_mode = true;
		}
		
		if(($_POST['article-title']) == ''){
			return Msg::response(400,'A title is required.');		
		}
		
		if(($_POST['article-content']) == ''){
			return Msg::response(400,'Content is required.');		
		}
		
		// echo getcwd() . "\n";
		$filename = '';
		// a file is passed
		if(isset($_FILES["file"]["type"]))
		{
			$validextensions = array("jpeg", "jpg", "png");
			$temporary = explode(".", $_FILES["file"]["name"]);
			$file_extension = end($temporary);
			if ((($_FILES["file"]["type"] == "image/png") || ($_FILES["file"]["type"] == "image/jpg") || ($_FILES["file"]["type"] == "image/jpeg")) && ($_FILES["file"]["size"] < 100000)&& in_array($file_extension, $validextensions)) {
				if ($_FILES["file"]["error"] > 0){
        			return Msg::response(400,$_FILES["file"]["error"]);
				}else{
					$filename = uniqid('IMG_') . '.' . $file_extension;
					// echo "filename: {$filename}\n";
					if (file_exists("assets/images/" . $filename)) {
        				return Msg::response(400,'filename exists');
					}else{
						$sourcePath = $_FILES['file']['tmp_name']; // Storing source path of the file in a variable
						$targetPath = "assets/images/".$filename; // Target path where file is to be stored
						move_uploaded_file($sourcePath,$targetPath) ; // Moving Uploaded file
					}
				}
			// passed file is 0, may occur if passing form without selecting file
			}else if (($_FILES["file"]["size"]==0) && !$edit_mode){
				return Msg::response(400,'An image is required.');				
			}else if(!$edit_mode){
				return Msg::response(400,'invalid file');
			}
		// a file is not passed and not in edit mode, return error
		}else if(!$edit_mode){		
			return Msg::response(400,'An image is required.');
		}
		// print_r($_FILES);
		$data = array(
			'title' 		=> $_POST['article-title'],
			'content' 		=> $_POST['article-content'],
			'created'		=> time()
		);
		if($filename != ''){
			$data['image'] = $filename;
		}
		
		if ($edit_mode){
			DB::table('article')
            ->where('id', $_POST['article-id'])
            ->update($data);
        	return Msg::response(200,'Article Updated');
		}else{
			DB::table('article')->insert($data);
        	return Msg::response(200,'New article saved');
		}
		// DB::table('article')->insert(array(
			// 'origin' 		=> $checksum_origin,
			// 'destination' 	=> $checksum_destination,
			// 'result' 		=> $api_response
		// ));
		
	}
}
