<?php

namespace App\Http\Controllers;

class TemplateController extends Controller
{
	public function reset_password()
	{
		return view('mailer.reset_password', array(
			'logo' => ASSET_LOGO,
			'name' => 'John Doe',
			'link' => 'http://www.google.com',
		));
	}

	public function new_account()
	{
		return view('mailer.new_account', array(
			'logo' 		=> ASSET_LOGO,
			'username' => 'roscar',
			'password' 	=> 'xxxx'
		));
	}
}
