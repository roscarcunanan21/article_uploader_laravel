<?php

namespace Modules\Article\Models;

use DB;
use Msg;


class ArticleModel
{
	/*!
	 * @return array
	 */
	public static function list_articles()
	{
		// $page = 0;
		// $page_length = 5;
		$page = null;
		$page_length = null;
		if (isset($_GET['page_length'])){
			$page_length = $_GET['page_length'];
		}
		if (isset($_GET['page'])){			
			$page = ($_GET['page'] - 1) * $page_length;
		}

		$rows = 	DB::table('article')
					->select('id')
					->get();
		
		// echo count($rows);
		$count = count($rows);

		$rows = 	array();
		
		if (!is_null($page) && !is_null($page_length)){
		$rows = 	DB::table('article')
					->orderBy('created', 'DESC')
					->select('*')
					->skip($page)
					->take($page_length)
					->get();
		}else if (!is_null($page) && is_null($page_length)){
		$rows = 	DB::table('article')
					->orderBy('created', 'DESC')
					->select('*')
					->take($page_length)
					->get();
		}else if (is_null($page) && !is_null($page_length)){
		$rows = 	DB::table('article')
					->orderBy('created', 'DESC')
					->select('*')
					->skip($page)
					->get();	
		}else{
		$rows = 	DB::table('article')
					->orderBy('created', 'DESC')
					->select('*')
					->get();		
		}
		
		// echo $baseurl;
		foreach($rows as &$row){
			if (!is_null($row->image)){
				if(!file_exists("assets/images/".$row->image)){
					$row->image = null;
				}
			}
		}
					
		$data = new \stdClass();
		$data->results = $rows;
		$data->count = $count;			

        Msg::response(200,'',$data);
	}	
	
	public static function get_article_data( $article_id ){

		$rows = 	DB::table('article')
					->select('*')
					->where('id', '=', $article_id)
					->get();				

        Msg::response(200,'',$rows[0]);
	}
}
