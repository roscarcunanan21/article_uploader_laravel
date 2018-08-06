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
        DB::table('user_type')->insertGetId(
			array('user_type'=>'administrator')
		);		
		
        DB::table('user')->insertGetId(
			array(
				'user_type_id' => 1,
				'firstname' => 'administrator',
				'lastname' => 'administrator',
				'email' => 'demo@gmail.com',
				'username' => 'demo',
				'password' => '$2y$10$QfpM2LqUv7hVoqPT6exN0Oh2ZfMHgBI3c8ycW./uobJr74cqHjHyC',
				'remember_token' => 'Qk5Pri5qO7enO4iPoK8h2bbbfaoZI3CpCpioh2edcCfsE8Zn9ypXbAeB7X0a',
				'avatar' => '',
				'is_active' => 1
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => 'THE BEST WII U GAMES OF 2016',
				'content' => "Nintendo's Wii U has a reputation as a bit of a video game industry punching bag. It's much less powerful than the competition, its tablet-like GamePad controller hasn't been utilized well in many games, and most games don't come out on the console.

All of those things, as well as the fact that plenty of people don't realize it's a whole new console, have made it Nintendo's least successful console. But the games that are exclusive to Wii U tend to be really, really good. To that end, we put together a list with the best games to play on the Wii U right now!:",
				'created' => 1474018589,
				'image' => 'sample1.jpg'
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => "VOTING FOR THE PEOPLE'S CHOICE BEST WII U GAME OF 2016!",
				'content' => "From IGN's Paper Mario: Color Splash Review: \"Paper Mario: Color Splash is a step in the right direction for the series after the 3DS’s Paper Mario: Sticker Star, continuing its shift from RPG to action-adventure game while also introducing some smart changes to its battle system. The beautiful Wii U graphics and playful humor stay true to the spirit of the Paper Mario franchise.\"",
				'created' => 1474018589,
				'image' => 'sample2.jpg'
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => "Gears of War film to rise like a Fenix thanks to Universal",
				'content' => "The idea of a Gears of War film has been thrown about Hollywood for years, dating back to 2007. It now looks like Universal Studios will be the one to take the franchise from your living room to the silver screen.

Names attached to the project, according to The Hollywood Reporter, are Scott Stuber, producer of comedies like \"Central Intelligence\", \"Ted\" and \"Role Models\", and Dylan Clark, producer of the recent \"Rise of the Planet of the Apes\" series.

A Gears of War flick was first attempted back in 2007 by New Line Cinema, though the project was beleaguered by budget cuts and rewrites. New Line seemingly gave up on the project in 2013, and there hasn't been much development, until now.

The news comes ahead of Gears of War 4, one of the biggest Xbox One games of the year, being released next week. The game follows J.D. Fenix, the son of franchise protagonist Marcus Fenix, 25 years after the events of Gears of War 3.",
				'created' => 1474018589,
				'image' => 'sample3.jpg'
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => "Trailer Roundup - October 5, 2016",
				'content' => "Today's trailer roundup features merchants trekking through the desert, a creeper creeping on his creepy neighbor, and vikings riding walruses to defeat their enemies.",
				'created' => 1474018589,
				'image' => 'sample4.jpg'
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => "PlayStation VR: A Hardcore Console Gamer’s Perspective",
				'content' => "The act of console gaming has always been evolving: controllers got more buttons, then they went from digital to analog control. Games were on cartridges and then CDs, before upgrading to DVDs and Blu-ray discs. The biggest change in recent years was the adoption of motion control: Nintendo Wii, PlayStation Move, and then Microsoft Kinect.

With the introduction of virtual reality to consoles comes the next step forward, but does PlayStation VR solidify virtual reality as an integral part of the future for gamers? Or will it be forgotten by the majority of players, like the Kinect?",
				'created' => 1474018589,
				'image' => 'sample5.jpg'
			)
		);			
		
        DB::table('article')->insertGetId(
			array(
				'title' => "Battlefield 1: The Kotaku Review",
				'content' => "Matthew McConaughey once said that sometimes you need to go back to move forward. The team at DICE must have been very moved by that sentiment. Taking it to heart and pushing the Battlefield series nearly 100 years back into World War I for this year’s release of Battlefield 1 was a gamble. It has largely paid off.

The Battlefield first-person shooter series has incrementally embraced modern warfare and its technology ever since 2005's Battlefield 2. Only smaller projects like Battlefield Vietnam explored the series’ potential for diverse historical settings. By 2013's Battlefield 4, players may have been exhausted with all the attack choppers, AK-47s, and Abrams tanks. Suffused in the same military fetishization gleefully exhibited by its rival series, Call of Duty, Battlefield was wasting away.",
				'created' => 1533540011,
				'image' => 'sample6.jpg'
			)
		);

		// delete all non default images from the assets/images folder
		// echo "current dir: ".getcwd();
		$path = "public/assets/images";		
		if ($handle = opendir($path)) {
		    while (false !== ($file = readdir($handle))) {
		        if ('.' === $file) continue;
		        if ('..' === $file) continue;
				if(substr( $file, 0, 4 ) === "IMG_"){
					unlink($path.'/'.$file);
				}
		        // do something with the file
		    }
		    closedir($handle);
		}
    }
}
