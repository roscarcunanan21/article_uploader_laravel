<?php

Route::group(array(
		'prefix' 		=> 'admin',
		'namespace' 	=> 'Modules\Admin\Controllers',
		'middleware' 	=> ['web']
	), function () {		

	    // AJAX Pages
		Route::get('/', 						'AdminController@index');
		Route::get('/article/edit/{article_id}','AdminController@edit_article_page');
		Route::get('/article/add',				'AdminController@add_article_page');
		Route::post('/article/add',				'AdminController@add_article');
	}
);
