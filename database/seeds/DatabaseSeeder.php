<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	
        // $this->call(UserTableSeeder::class);
        DB::table('user_type2')->insertGetId(
			array('user_type'=>'administrator')
		);		
		
        DB::table('users2')->insertGetId(
			array(
				'user_type_id' => 1,
				'firstname' => 'administrator',
				'lastname' => 'administrator',
				'email' => 'demo@gmail.com',
				'username' => 'demo',
				'password' => '$2y$10$QfpM2LqUv7hVoqPT6exN0Oh2ZfMHgBI3c8ycW./uobJr74cqHjHyC',
				'remember_token' => 'Qk5Pri5qO7enO4iPoK8h2bbbfaoZI3CpCpioh2edcCfsE8Zn9ypXbAeB7X0a'
			)
		);
    }
}
