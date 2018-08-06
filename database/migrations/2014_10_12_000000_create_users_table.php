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
        Schema::create('user', function (Blueprint $table) {
            $table->increments('user_id');
            $table->integer('user_type_id');
            $table->string('firstname', 50);
            $table->string('lastname', 50);
            $table->string('email', 50)->unique()->nullable();
            $table->string('username', 50)->nullable();
            $table->text('password')->nullable();
            $table->text('salt')->nullable();
            $table->string('avatar', 40)->nullable();
            $table->integer('is_active')->nullable()->default('1');
            $table->rememberToken()->nullable();
            $table->timestamps();
        });
		
        Schema::create('user_type', function (Blueprint $table) {
            $table->increments('user_type_id');
            $table->string('user_type', 20);
        });		
		
        Schema::create('article', function (Blueprint $table) {
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
        Schema::drop('user');
        Schema::drop('user_type');
        Schema::drop('article');
    }
}
