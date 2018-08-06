<?php

namespace Modules\Article\Controllers;

use Input;
use Modules\Article\Models\ArticleModel;
use Aes;
use Msg;


class ArticleController extends Controller
{

	/**
	 * Initial page loader
	 */
	public function index()
	{
		return view(MODULE . '::article.all');
	}

	public function list_articles()
	{
		return ArticleModel::list_articles();
	}

	public function get_article_data( $article_id )
	{
		return ArticleModel::get_article_data( $article_id );
	}
	
	public function get_article( $article_id )
	{
		return view(MODULE . '::article.single');
	}
	
	public function get_archive()
	{
		return view(MODULE . '::article.archive');
	}
}
