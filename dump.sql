-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2018 at 11:38 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `rosie`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `created` int(11) NOT NULL,
  `image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `created`, `image`) VALUES
(1, 'THE BEST WII U GAMES OF 2016', 'Nintendo\'s Wii U has a reputation as a bit of a video game industry punching bag. It\'s much less powerful than the competition, its tablet-like GamePad controller hasn\'t been utilized well in many games, and most games don\'t come out on the console.\r\n\r\nAll of those things, as well as the fact that plenty of people don\'t realize it\'s a whole new console, have made it Nintendo\'s least successful console. But the games that are exclusive to Wii U tend to be really, really good. To that end, we put together a list with the best games to play on the Wii U right now!:', 1474018589, 'IMG_5b6740af6f5bb.jpg'),
(2, 'VOTING FOR THE PEOPLE\'S CHOICE BEST WII U GAME OF 2016!', 'From IGN\'s Paper Mario: Color Splash Review: \"Paper Mario: Color Splash is a step in the right direction for the series after the 3DS’s Paper Mario: Sticker Star, continuing its shift from RPG to action-adventure game while also introducing some smart changes to its battle system. The beautiful Wii U graphics and playful humor stay true to the spirit of the Paper Mario franchise.\"', 1474018589, 'sample2.jpg'),
(3, 'Gears of War film to rise like a Fenix thanks to Universal', 'The idea of a Gears of War film has been thrown about Hollywood for years, dating back to 2007. It now looks like Universal Studios will be the one to take the franchise from your living room to the silver screen.\r\n\r\nNames attached to the project, according to The Hollywood Reporter, are Scott Stuber, producer of comedies like \"Central Intelligence\", \"Ted\" and \"Role Models\", and Dylan Clark, producer of the recent \"Rise of the Planet of the Apes\" series.\r\n\r\nA Gears of War flick was first attempted back in 2007 by New Line Cinema, though the project was beleaguered by budget cuts and rewrites. New Line seemingly gave up on the project in 2013, and there hasn\'t been much development, until now.\r\n\r\nThe news comes ahead of Gears of War 4, one of the biggest Xbox One games of the year, being released next week. The game follows J.D. Fenix, the son of franchise protagonist Marcus Fenix, 25 years after the events of Gears of War 3.\r\n\r\n', 1474018589, 'sample3.jpg'),
(4, 'Trailer Roundup - October 5, 2016', 'Today\'s trailer roundup features merchants trekking through the desert, a creeper creeping on his creepy neighbor, and vikings riding walruses to defeat their enemies.', 1474018589, 'sample4.jpg'),
(5, 'PlayStation VR: A Hardcore Console Gamer’s Perspective', 'The act of console gaming has always been evolving: controllers got more buttons, then they went from digital to analog control. Games were on cartridges and then CDs, before upgrading to DVDs and Blu-ray discs. The biggest change in recent years was the adoption of motion control: Nintendo Wii, PlayStation Move, and then Microsoft Kinect.\r\n\r\nWith the introduction of virtual reality to consoles comes the next step forward, but does PlayStation VR solidify virtual reality as an integral part of the future for gamers? Or will it be forgotten by the majority of players, like the Kinect?', 1474018589, 'sample5.jpg'),
(6, 'article6', 'blablabla', 1474018589, NULL),
(7, 'article 7', 'bla bla bla', 0, 'asdasdasda'),
(8, 'article 8', 'bla bla bla', 0, 'asdadad'),
(9, 'article 9', 'bla bla bla', 0, 'asdasdasda'),
(10, 'article 10', 'bla bla bla', 0, 'asdadad'),
(11, 'article 11', 'bla bla bla', 0, 'asdasdasda'),
(12, 'article 12', 'bla bla bla', 0, 'asdadad'),
(13, 'The newest article', 'bla bla bla bla bla', 0, 'IMG_5b674ec55f4cf.jpg'),
(14, 'test', 'hi there', 0, 'IMG_5b681080ee9b4.jpg'),
(15, 'new time test', 'test', 0, 'IMG_5b6810c6a2b6e.jpg'),
(16, 'new time test', 'test', 0, 'IMG_5b6811194bbdb.jpg'),
(17, 'new time test', 'test', 1533546862, 'IMG_5b68116edf748.jpg'),
(18, 'ho ho ho', 'hey', 1533547001, 'IMG_5b6811f95fad9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0bcf5b95109b15f352c953a3835f05c20bc68413', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'YTo1OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MzoiaHR0cDovL2xvY2FsaG9zdC9saWcvcHVibGljL2FydGljbGUvYXJjaGl2ZSI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6Ill2WU9rZFdaQjJZOXE2eFBINndqRHRCTzI5am1yaHc1SzJQUjdBeHUiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MzM1NDcwNDQ7czoxOiJjIjtpOjE1MzM1NDQ2NDQ7czoxOiJsIjtzOjE6IjAiO319', 1533547044);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT 'Unique Email Address',
  `username` varchar(50) DEFAULT NULL COMMENT 'Unique Username',
  `password` text,
  `salt` text,
  `avatar` varchar(40) DEFAULT NULL COMMENT 'Cleaner''s avatar relative path',
  `is_active` int(11) DEFAULT '1' COMMENT '0 - Deleted/Inactive, 1 - Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cleaners Profile\n\n- first and last name is separated so there will be an option which can be displayed on cleaner info\nin booking confimation page';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_type_id`, `firstname`, `lastname`, `email`, `username`, `password`, `salt`, `avatar`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administrator', 'Administrator', 'demo@gmail.com', 'demo', '$2y$10$QfpM2LqUv7hVoqPT6exN0Oh2ZfMHgBI3c8ycW./uobJr74cqHjHyC', NULL, '', 1, 'ub5mBrJsYxfuFQo8wRUPRQ4n7aoGxd1XvKPBTGo1BJ8BlLTcAXfTALQFrwez', '2018-08-06 09:15:24', '2018-08-05 20:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`) VALUES
(1, 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
