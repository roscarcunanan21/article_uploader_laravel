<?php

namespace Modules\Admin\Controllers;
use App\Http\Models\Auth\AuthModel;
use Modules\Admin\Models\AdminModel;
use Modules\Admin\Models\GraphModel;
use Validator;
use Session;
use Input;
use Msg;
use Aes;
use Template;

class AdminController extends Controller
{
	/**
	 * Initial page loader
	 */
	public function index()
	{
		return view(MODULE . '::admin.all');
	}
	
	public function __construct()
	{
		$this->middleware('auth');
	}
	
	public function edit_article_page( $article_id )
	{
		return view(MODULE . '::admin.single');
	}
		
	public function add_article_page( )
	{
		return view(MODULE . '::admin.single');
	}
		
	public function add_article( )
	{
		return AdminModel::add_article( );
	}
}
