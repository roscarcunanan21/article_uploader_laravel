<?php

Route::group(array(
		'prefix' 		=> 'article',
		'namespace' 	=> 'Modules\Article\Controllers',
		'middleware' 	=> 'web'
	), function () {

		// Pages
		Route::get('/', 					'ArticleController@index');
		Route::get('/single/{article_id}', 	'ArticleController@get_article');
		Route::get('/archive', 				'ArticleController@get_archive');

		// API
		Route::get('/all', 					'ArticleController@list_articles');
		Route::get('/id/{article_id}', 		'ArticleController@get_article_data');
		Route::post('/add', 				'ArticleController@add_article');
	}
);
