<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users2', function (Blueprint $table) {
            $table->increments('user_id');
            $table->integer('user_type_id');
            $table->string('firstname', 50);
            $table->string('lastname', 50);
            $table->string('email', 50)->unique();
            $table->string('username', 50);
            $table->text('password');
            $table->text('salt');
            $table->rememberToken();
            $table->timestamps();
        });
		
        Schema::create('user_type2', function (Blueprint $table) {
            $table->increments('user_type_id');
            $table->string('user_type', 20);
        });		
		
        Schema::create('article2', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title', 50);
            $table->text('content');
			$table->integer('created');
            $table->string('image', 30);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('users');
        Schema::drop('user_type2');
        Schema::drop('article2');
    }
}
