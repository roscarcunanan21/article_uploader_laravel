-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2018 at 09:26 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
(13, 'The newest article', 'bla bla bla bla bla', 0, 'IMG_5b674ec55f4cf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` bigint(20) NOT NULL,
  `timetable_id` bigint(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `need_supplies` tinyint(1) NOT NULL DEFAULT '0',
  `instructions` text,
  `schedule_start` time NOT NULL,
  `schedule_end` time NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `payload` text NOT NULL COMMENT 'URL payload for booking confirmation link',
  `is_confirmed` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Email confirmation',
  `for_reminder` tinyint(1) NOT NULL DEFAULT '0',
  `for_review` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Flag to determine if the automation script has already sent the Review Email to client',
  `confirmed_at` datetime NOT NULL,
  `is_admin_generated` tinyint(1) NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `timetable_id`, `client_id`, `need_supplies`, `instructions`, `schedule_start`, `schedule_end`, `price`, `payload`, `is_confirmed`, `for_reminder`, `for_review`, `confirmed_at`, `is_admin_generated`, `is_paid`, `created_at`) VALUES
(11, 6, 17, 0, '', '09:30:00', '11:30:00', '50.00', '1aifADdvVtc4CHS968xZ%2FN1%2BDOMzNmaumKEV4yvDEPDpfXyLYeDCC%2BWyk9AzV5Tl%2BPhEU3zRyQ%3D%3D', b'1', 1, 1, '2017-09-05 11:21:19', 0, 0, '2017-10-28 00:30:13'),
(12, 6, 6, 0, '', '11:55:00', '14:25:00', '62.50', '1aifADdvVtc4CHS968hf%2BCumTEhzJQXPT5948MggrEX3BVolL3oTI%2F5h82tz73ZsZiQquEZ07Ha%2BsA%3D%3D', b'1', 1, 1, '2017-09-05 11:27:59', 0, 0, '2017-10-28 00:30:13'),
(13, 6, 5, 0, '', '14:55:00', '16:25:00', '37.50', '1aifADdvVtc4CHey68lf%2B2NF7%2F8xQx5vkVdKJKQQGqqtkf0%2B28WoO1RuhFDQjGbVoacA7MszfKOWxA%3D%3D', b'1', 1, 1, '2017-09-06 12:30:14', 0, 0, '2017-10-28 00:30:13'),
(14, 10, 18, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc4CHey6c9d%2FohRH3K1lmPuBFUy0yqNut96IGNCSSur4qBcO77JFSxeX2mifiWO2Bo%3D', b'1', 1, 1, '2017-09-06 12:49:05', 0, 0, '2017-10-28 00:30:13'),
(15, 10, 19, 0, '', '13:30:00', '16:00:00', '62.50', '1aifADdvVtc4CHey6c1b%2BeLiM2ZEc9aMC66KmeAsIeM5K5spLk1%2BfQ7KCij%2BwpQF3lIOkuiV%2BuMB4BoE', b'1', 1, 1, '2017-09-06 12:50:02', 0, 0, '2017-10-28 00:30:13'),
(16, 11, 8, 0, '', '09:00:00', '12:00:00', '90.00', '1aifADdvVtc4CHey7sZc9qr3lptcvAMmcANnfwPpCRrNLimLzXLqQgwrriSMzq2uGguSvzs8Aw%3D%3D', b'1', 1, 1, '2017-09-06 13:26:37', 0, 0, '2017-10-28 00:30:13'),
(17, 11, 20, 0, '', '12:55:00', '15:55:00', '75.00', '1aifADdvVtc4CHey78pY%2FTy1GUhErbZHYcNXdksd4RySnLOSdDvspJK2iq3ff7JHa2ViEbCqxYo%3D', b'1', 1, 1, '2017-09-06 13:25:30', 0, 0, '2017-10-28 00:30:13'),
(18, 17, 16, 0, '', '09:00:00', '12:00:00', '75.00', '1aifADdvVtc4CXKw7c1e%2BnQyCl6UQKAUplPjdYoZAqdH96R0NWAJda4bEe6SXk%2Bd6AQn6HCYUjo%3D', b'1', 1, 1, '2017-09-14 10:54:53', 0, 0, '2017-10-28 00:30:13'),
(19, 17, 11, 0, '', '12:25:00', '14:25:00', '50.00', '1aifADdvVtc4CXKw7ctb%2FoFkO74Jfr7nnFWYRG37ewYmMmHvKbXVPesDcqjJRcUzhc74kKdDGzA%3D', b'1', 1, 1, '2017-09-14 10:55:05', 0, 0, '2017-10-28 00:30:13'),
(20, 17, 4, 0, '', '15:15:00', '16:15:00', '25.00', '1aifADdvVtc4CXKw7chY%2FekFiMBaE1QKXkYU7JZDP2qs4BDjlHYP6xshOVLIs1SxVa7%2FPKWqjA%3D%3D', b'1', 1, 1, '2017-09-14 10:55:13', 0, 0, '2017-10-28 00:30:13'),
(21, 18, 9, 0, '', '17:00:00', '18:00:00', '25.00', '1aifADdvVtc4CXKw485Y9l8HH4%2B2%2F6RemNBZ1nIfo%2BDmUTmf2rmKuXwC8CL8FRO2EfXrl%2FhkOA%3D%3D', b'1', 1, 1, '2017-09-14 11:19:44', 0, 0, '2017-10-28 00:30:13'),
(22, 18, 14, 0, '', '14:00:00', '16:00:00', '50.00', '1aifADdvVtc4CXKw485c9%2BYLCkEpErZgj1sBv%2BB%2F9Nu2xDAtKV%2BCbbqfdMIzgwi3xz7%2B1%2FvnEiA%3D', b'1', 1, 1, '2017-09-14 11:20:13', 0, 0, '2017-10-28 00:30:13'),
(23, 21, 22, 0, '', '09:30:00', '12:00:00', '75.00', '1aifADdvVtc4CXKw48lY%2FtGHcjYw%2FxsMnPkO1lyEge%2F7ODqiC8G%2BH8aWld2RTmnTwPIsdSCESwZ7aA%3D%3D', b'1', 1, 1, '2017-09-14 11:31:59', 0, 0, '2017-10-28 00:30:13'),
(24, 19, 21, 0, '', '09:00:00', '11:00:00', '60.00', '1aifADdvVtc4CXKw48ZR9v1ApmCWQ4nq%2FPQig2nBLYWkjXiBgl3GI1AFD%2BkMhUyVi1N3bR9Wox0%3D', b'1', 1, 1, '2017-09-14 11:37:42', 0, 0, '2017-10-28 00:30:13'),
(26, 20, 23, 0, '', '14:30:00', '16:00:00', '45.00', '1aifADdvVtc4CXKz6sZZ%2BN45G4Gp%2BoEolZLRaSJ5rQTGDrHEyPP6wxNtBRz6G6FVATleTShKI9Btww%3D%3D', b'1', 1, 1, '2017-09-14 11:53:07', 0, 0, '2017-10-28 00:30:13'),
(27, 18, 24, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc4CXW1481a%2BTffHzMlMksvsCVWP%2FlS63ov9fO4rdmI%2FNOLlpZ1n8qh35swGBmGovM%3D', b'1', 1, 1, '2017-09-15 01:23:31', 0, 0, '2017-10-28 00:30:13'),
(28, 19, 2, 0, '', '11:30:00', '14:30:00', '75.00', '1aifADdvVtc4CXWx789d%2FOFFwxMuBPUJcIl6QYo1aSwbN5I%2B5ABHk4NF1CUVd%2FfUP5qkww0kUQ%3D%3D', b'1', 1, 1, '2017-09-15 11:27:36', 0, 0, '2017-10-28 00:30:13'),
(29, 19, 1, 0, '', '14:55:00', '15:55:00', '25.00', '1aifADdvVtc4CXS87M5Q94JQ1EqKv2vjTeFkwJ4DMOTecBFX0X6hByrlJl9M9s%2FU5BMzDhWsZw%3D%3D', b'1', 1, 1, '2017-09-15 11:27:36', 0, 0, '2017-10-28 00:30:13'),
(30, 22, 2, 0, '', '09:00:00', '12:30:00', '87.50', '1aifADdvVtc4CXiz4sxY%2F6suDg1QxIGtI5x0x1qbECY5JpbPfAB00TsmkRzFLsA8XrCBgiSzSyNV7HY%3D', b'1', 1, 1, '2017-09-21 12:35:02', 0, 0, '2017-10-28 00:30:13'),
(31, 24, 25, 0, '', '10:30:00', '11:30:00', '30.00', '1aifADdvVtc4CXiz4spQ%2FeAWWSOGhkVioCLFg7H%2BAMIzLjk0hmbYZ0Y2cQ6Y6Pp4LjTJCMINRWA%3D', b'1', 1, 1, '2017-09-21 12:36:24', 0, 0, '2017-10-28 00:30:13'),
(32, 24, 6, 0, '', '12:00:00', '14:30:00', '62.50', '1aifADdvVtc4CXiz4ste%2BCES%2FVk%2B6EQaRxO62BFcp9y3OnH%2BgVMXRVID7HLwrDlI%2BNs16Yqqm7U5wyA%3D', b'1', 1, 1, '2017-09-21 12:37:26', 0, 0, '2017-10-28 00:30:13'),
(33, 24, 26, 0, '', '15:10:00', '17:10:00', '50.00', '1aifADdvVtc4CXiz485Y%2FwX4r2GT4XFNH3Chf97vUN2k9JJ%2BJD9ukaEdlf5O5aaRGFlmXkG%2BuUY%3D', b'1', 1, 1, '2017-09-21 12:44:54', 0, 0, '2017-10-28 00:30:13'),
(34, 23, 13, 0, '', '11:30:00', '12:30:00', '30.00', '1aifADdvVtc4CXiz485f%2FE9bfbBDxoIcG3kj2REFpeFAZgu%2BzRLy6H44d8DHZtGRzxzKQcYHCpI%3D', b'1', 1, 1, '2017-09-21 12:46:57', 0, 0, '2017-10-28 00:30:13'),
(35, 23, 19, 0, '', '13:00:00', '15:30:00', '62.50', '1aifADdvVtc4CXiz48pd%2FY8%2B2dHmsjrwd41JdBePYLCrwhw4MWehmFFKaq8dp1LefvXc5VUNmFtNvHhF', b'1', 1, 1, '2017-09-21 12:52:33', 0, 0, '2017-10-28 00:30:13'),
(36, 25, 21, 0, '', '08:30:00', '10:30:00', '60.00', '1aifADdvVtc4CXiz48tb%2FXG544nCZbUg7mxsybeV4Mb1TeXCIVhuHwUQDIfbYRVzoONfT5T2AHY%3D', b'1', 1, 1, '2017-09-21 12:53:40', 0, 0, '2017-10-28 00:30:13'),
(37, 25, 8, 0, '', '11:00:00', '14:00:00', '75.00', '1aifADdvVtc4CXiz48hY%2FXZLaBA0XARZoki1pSpH4%2BBDgMXG%2BnGEWjxrYUCeS0WeigulgiGNlg%3D%3D', b'1', 1, 1, '2017-09-21 12:55:21', 0, 0, '2017-10-28 00:30:13'),
(38, 23, 20, 0, '', '08:00:00', '10:30:00', '62.50', '1aifADdvVtc4CnG26shd%2FdKF0YXBkJlUFvkZY2TaxRAem2vtecY7bMDP8ad2QKVJotqEKaZW8e%2BAlCHk', b'1', 1, 1, '2017-09-22 11:33:25', 0, 0, '2017-10-28 00:30:13'),
(39, 26, 17, 0, '', '09:30:00', '11:30:00', '50.00', '1aifADdvVtc4CnK86chY9qCHpf%2BnL8YuexdqhVh%2Fk6%2FZlw3ALeJylqP6RR5mLOssZqvCoZxBMfI%3D', b'1', 1, 1, '2017-09-26 10:41:35', 0, 0, '2017-10-28 00:30:13'),
(40, 26, 27, 0, '', '12:00:00', '14:00:00', '50.00', '1aifADdvVtc4CnK86cZe%2BLdr9jIgQsMt8kA6Ll6lpDwnfk89I8I8tfNRp7M5ma7orQ1hAhmHrWA%3D', b'1', 1, 1, '2017-09-26 10:45:46', 0, 0, '2017-10-28 00:30:13'),
(41, 26, 14, 0, '', '14:35:00', '16:35:00', '50.00', '1aifADdvVtc4CnK87s5Z%2BWj9T4EOrw5TDt6pk1HocwSR0CupNU4%2BDcCT%2BJkBvP4Qse4noMyVaFE%3D', b'1', 1, 1, '2017-09-26 10:48:57', 0, 0, '2017-10-28 00:30:13'),
(42, 27, 16, 0, '', '09:00:00', '12:00:00', '75.00', '1aifADdvVtc4CnK87s9R%2BuZ5NzW6rIGkiGf4%2BMdmgtI5bciFgCxZ9GEQP2YwBMWegNy0lCqgPC0%3D', b'1', 1, 1, '2017-09-26 10:51:01', 0, 0, '2017-10-28 00:30:13'),
(43, 27, 11, 0, '', '12:25:00', '14:25:00', '50.00', '1aifADdvVtc4CnK87sxQ%2B9%2FvJuyriW3AXaSoAaSb5rAfbUmbgChjcFfI9BSkmapWTR4iXuCxscc%3D', b'1', 1, 1, '2017-09-26 10:53:38', 0, 0, '2017-10-28 00:30:13'),
(44, 28, 15, 0, '', '09:00:00', '11:00:00', '60.00', '1aifADdvVtc4CnK87std%2BY4Bwmal22Ml%2BP8XPc9EiD14K5%2FkTeLHAMwxPy8UQkki8rUfNZDfqIc%3D', b'1', 1, 1, '2017-09-26 11:06:28', 0, 0, '2017-10-28 00:30:13'),
(45, 27, 24, 0, '', '14:45:00', '16:45:00', '50.00', '1aifADdvVtc4CnSy6Mxd%2FEVDUQDsaLpkcHmRWUd6ibt%2Fiy5it9l%2BrBChKzzec74iNyAtxMDTo1M%3D', b'1', 1, 1, '2017-09-28 12:18:45', 0, 0, '2017-10-28 00:30:13'),
(46, 29, 2, 0, '', '09:00:00', '12:00:00', '90.00', '1aifADdvVtc4CnSy6Mxf%2BDmMq7Qt8wRqWGiFzWIoi114DdzJohVWaMJ0z7MASRuWigHq6H9epA%3D%3D', b'1', 1, 1, '2017-09-28 12:19:49', 0, 0, '2017-10-28 00:30:13'),
(47, 28, 25, 0, '', '11:30:00', '12:30:00', '25.00', '1aifADdvVtc4CnSy6Mpe%2BwJhwbg%2BQXPQXyZBeqZuJJsfwY3YGggiVRG8y6SKl0Gc8Uh%2FiEJrFaI%3D', b'1', 1, 1, '2017-09-28 12:23:17', 0, 0, '2017-10-28 00:30:13'),
(48, 29, 2, 0, '', '12:20:00', '13:20:00', '25.00', '1aifADdvVtc4Cne178tc%2BPrQbNAPPf%2B9h69hTFS%2BRUYHwzLHYyHUVWJ8jS4kCL5LNeK4ThKzgw%3D%3D', b'1', 1, 1, '2017-09-28 21:35:59', 0, 0, '2017-10-28 00:30:13'),
(49, 30, 2, 0, '', '09:00:00', '14:00:00', '125.00', '1aifADdvVtc4C3Cy7Mpd%2BzhIaCSEY9W3mokwKKoscUvH%2BhdCNe4xasdS5d00EH9wRg8UKtfcHjg%3D', b'1', 1, 1, '2017-10-05 12:08:51', 0, 0, '2017-10-28 00:30:13'),
(50, 31, 4, 0, '', '13:30:00', '16:30:00', '90.00', '1aifADdvVtc4C3Cy7MpQ%2BvK7YLdkfTyAlHIoQ98sMJMZaRO2i0hs0lDE9jJyybml1zm4zXyt2g%3D%3D', b'1', 1, 1, '2017-10-05 12:09:23', 0, 0, '2017-10-28 00:30:13'),
(51, 31, 5, 0, '', '09:00:00', '10:00:00', '40.00', '1aifADdvVtc4C3Cy7MhQ%2FqEMwiNBkUXvG2bXHHjW8eaHk9Pa1fqNsCWZhwlS6BCfWic13MZS4A%3D%3D', b'1', 1, 1, '2017-10-05 12:13:01', 0, 0, '2017-10-28 00:30:13'),
(52, 32, 25, 0, '', '12:00:00', '13:00:00', '30.00', '1aifADdvVtc4C3Cy7MdR%2FToojrbsZ%2BseqdBt0koKzaIgku9Mpp4KLYoXfQbUxaCG7K%2B1TmsbFV8%3D', b'1', 1, 1, '2017-10-05 12:26:12', 0, 0, '2017-10-28 00:30:13'),
(53, 33, 5, 0, '', '09:00:00', '11:00:00', '60.00', '1aifADdvVtc4C3Kw68hR%2BWit1lcAgKzdSbBGuZi8gkBRMWKl0hZoAS97F4oSDEc%2FLdCBSqEaFQ%3D%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2017-10-07 04:48:07'),
(54, 33, 8, 0, '', '11:30:00', '14:30:00', '75.00', '1aifADdvVtc4C3Kw68lb%2FH1DF4YVGqp9bFJ3T7RPTcwgKAnBOrjVspJI%2BBLooeFk%2BFp%2FvhyZqg%3D%3D', b'1', 1, 1, '2017-10-07 13:58:55', 0, 0, '2017-10-28 00:30:13'),
(55, 34, 2, 0, '', '12:00:00', '14:30:00', '62.50', '1aifADdvVtc4BHGx6shQ%2FLhGpZid1s9tFTrYUwbvI49dZV%2FLRBxHvtrEdDMjT08doPH1jXsQC51oqOw%3D', b'1', 1, 1, '2017-10-15 12:27:12', 0, 0, '2017-10-28 00:30:13'),
(56, 35, 21, 0, '', '09:00:00', '11:00:00', '60.00', '1aifADdvVtc4BHGx6sdY%2BW%2BrSgM2SZnOfNKRx0wAeWI1Rst4PXsEbaZ0iebsQA2RUlf%2F0dfTnhA%3D', b'1', 1, 1, '2017-10-15 12:27:21', 0, 0, '2017-10-28 00:30:13'),
(57, 35, 25, 0, '', '11:30:00', '12:30:00', '25.00', '1aifADdvVtc4BHGx685c%2BWQWFbGmDta0Pnx0JjEnl6%2FsO%2Bme6knv1U1%2BMRn9ZHiWj%2BSBpJweFXQ%3D', b'1', 1, 1, '2017-10-15 12:27:32', 0, 0, '2017-10-28 00:30:13'),
(58, 35, 7, 0, '', '13:50:00', '15:20:00', '37.50', '1aifADdvVtc4BHGx68pb%2Flf4GIQcoOKnhIwMNIg%2F%2BtVf0etTgSD36yIAVC74rvGy%2BVP5w6lu5zsi7Ow%3D', b'1', 1, 1, '2017-10-15 12:26:41', 0, 0, '2017-10-28 00:30:13'),
(59, 35, 5, 0, '', '16:05:00', '17:05:00', '25.00', '1aifADdvVtc4BHGx68td9pIax%2FdV%2Bh1GijYB51lW3mgU23zs9jbV%2Bq9xVn73BmkCWRnyAtyURQ%3D%3D', b'1', 1, 1, '2017-10-15 12:28:10', 0, 0, '2017-10-28 00:30:13'),
(60, 36, 17, 0, '', '09:30:00', '11:30:00', '60.00', '1aifADdvVtc4BHG87M1a9pMcgJgXzwEhpuocXWZKlPWmvCRMKtxuZScu%2BPr4PEcHLRupaF2PvNI%3D', b'1', 1, 1, '2017-10-16 03:40:44', 0, 0, '2017-10-28 00:30:13'),
(61, 36, 6, 0, '', '11:55:00', '14:25:00', '62.50', '1aifADdvVtc4BHG87MlR9wQGQ3nmbad%2FODqzOSOk0EWZOavh0lWEjwAretYJp%2B5X6AL1NMG0wHiW%2FjY%3D', b'1', 1, 1, '2017-10-16 03:48:28', 0, 0, '2017-10-28 00:30:13'),
(62, 38, 19, 0, '', '10:00:00', '12:30:00', '75.00', '1aifADdvVtc4BHO84s5R%2FAgZKzwE8fzJw11N75fpxcqIuuvllA10VcrzpK2T6596xTbFUeMWjMEZVA%3D%3D', b'1', 1, 1, '2017-10-18 11:45:03', 0, 0, '2017-10-28 00:30:13'),
(63, 38, 24, 0, '', '12:55:00', '14:55:00', '50.00', '1aifADdvVtc4BHO84stb%2FEBfR0kkxcSVNwAqHSu1Z%2FilhkAGPeRFrSBHz%2Fq4J1Z%2Btrq6Ur8ubRc%3D', b'1', 1, 1, '2017-10-18 11:51:57', 0, 0, '2017-10-28 00:30:13'),
(64, 37, 2, 0, '', '10:00:00', '13:30:00', '105.00', '1aifADdvVtc4BHO84shc%2F%2BqTWZnhrPsXq%2FmEt1FnVOFADs9N7A%2BRLryEHsHeJrr6slsNpETO9OLrWg%3D%3D', b'1', 1, 1, '2017-10-18 11:52:10', 0, 0, '2017-10-28 00:30:13'),
(65, 37, 20, 0, '', '14:30:00', '17:30:00', '75.00', '1aifADdvVtc4BHO84sZd%2FGzQcMX7IiMzXP5lDmwT0IC8chdWfbm2IBGooIo7GCbGsjbsO%2BNep18%3D', b'1', 1, 1, '2017-10-18 11:58:22', 0, 0, '2017-10-28 00:30:13'),
(66, 36, 28, 0, '', '15:15:00', '16:45:00', '37.50', '1aifADdvVtc4BHK27sxe9rWIONCKtaBbL9SwACyg5EsA9cxMW4atad3d%2Ba0PBroc7ldlcutjoW0t9UKA', b'1', 1, 1, '2017-10-18 21:45:46', 0, 0, '2017-10-28 00:30:13'),
(67, 40, 8, 0, '', '13:30:00', '16:30:00', '75.00', '1aifADdvVtc4BHe97M5a%2BUSLhSq7Doa6gUodvVWKMPUCBdhxkIEHLATX2lnbyd1DtUSLT9hFPQ%3D%3D', b'1', 1, 1, '2017-10-23 00:05:45', 0, 0, '2017-10-28 00:30:13'),
(68, 44, 8, 0, '', '09:00:00', '10:00:00', '30.00', '1aifADdvVtc4BHe97c1R%2Bt3X9h6d6QD68oW2Uc0saIOwEOFLmwUmjq9HW4iLO3ShMk%2FwH0hIcw%3D%3D', b'1', 1, 1, '2017-10-23 00:05:54', 0, 0, '2017-10-28 00:30:13'),
(69, 44, 2, 0, '', '15:35:00', '16:35:00', '50.00', '1aifADdvVtc4BHe94s1a%2FW4vfozhHsegEXLvcDbi2910wlaI7vvR%2FiNAYg4czGqYM664O6NxtQ%3D%3D', b'1', 1, 1, '2017-10-23 00:06:50', 0, 0, '2017-10-28 00:30:13'),
(70, 44, 4, 0, '', '17:25:00', '18:25:00', '25.00', '1aifADdvVtc4BHe86slQ%2BbFV1s1JMaGa1O15qs87LtOvs2nFxdpqpiI3YMwBZAA4fdgrnJdIqQ%3D%3D', b'1', 1, 1, '2017-10-23 00:48:31', 0, 0, '2017-10-28 00:30:13'),
(71, 40, 29, 0, '', '17:15:00', '19:45:00', '62.50', '1aifADdvVtc4BHe868pf%2FZtCW2WZzFbX%2Bqv2QtDvDleMpNTfU5ZrPVx0NrQFsiKmP75EKfh7pvNh5FU4', b'1', 1, 1, '2017-10-23 01:01:54', 0, 0, '2017-10-28 00:30:13'),
(72, 41, 21, 0, '', '09:00:00', '11:00:00', '60.00', '1aifADdvVtc4BHa84sdd%2FW%2FQz%2FxnLUP43tAV2QaXfaN3FX2HErDnQKJobCw3fztC3TBe3GEht7w%3D', b'1', 1, 1, '2017-10-24 06:55:46', 0, 0, '2017-10-28 00:30:13'),
(73, 41, 30, 0, '', '14:00:00', '16:00:00', '60.00', '1aifADdvVtc4BHa8489c%2FRG3zZjFFMKvaRZRIJwfvmmNUv8kD7fmP2xp3EPQe2px5cQZbTFeRbc%3D', b'1', 1, 1, '2017-10-24 06:55:53', 0, 0, '2017-10-28 00:30:13'),
(74, 41, 31, 0, '', '16:30:00', '18:30:00', '50.00', '1aifADdvVtc4BHa8481R97e2wo1YMHeyBYZQ8RQjvu1McXX6TODIOzTpx%2BjJyKYmRst3%2BM0%2FN7A%3D', b'1', 1, 1, '2017-10-24 09:19:52', 0, 0, '2017-10-28 00:30:13'),
(75, 43, 4, 0, '', '13:30:00', '15:30:00', '60.00', '1aifADdvVtc4BHm14std%2FeIuVKGbK%2FDaC7RJowSGqvF%2FffSB6AENTD0LoLqbWJ3vs8VXgG7PWw%3D%3D', b'1', 1, 1, '2017-10-24 09:30:57', 0, 0, '2017-10-28 00:30:13'),
(76, 43, 7, 0, '', '15:55:00', '16:55:00', '25.00', '1aifADdvVtc4BHm14shd%2F1hizPqzBmM2K1zcCf02ByVkO4AaF3BgS%2FskwvTVcjXpJN25chMhjQ%3D%3D', b'1', 1, 1, '2017-10-24 09:32:41', 0, 0, '2017-10-28 00:30:13'),
(77, 45, 2, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc4BXCx7cta%2Fquvr3MeHcBz9Hl%2BPK6ys60gchJ6Di7pPXZiiILlZlFB7g7BTfEVEw%3D%3D', b'1', 1, 1, '2017-10-28 07:40:53', 0, 0, '2017-10-28 21:00:01'),
(78, 45, 8, 0, '', '11:35:00', '14:35:00', '75.00', '1aifADdvVtc4BXCx7ctf9kbbQtpx2tYoVKvd7Z4YoLqHr0l5v8cWimyXEgpL5%2BPP6byK6te%2BnQ%3D%3D', b'1', 1, 1, '2017-10-28 07:41:05', 0, 0, '2017-10-29 00:35:01'),
(79, 50, 32, 0, '', '09:30:00', '13:30:00', '100.00', '1aifADdvVtc4BXO8689Q9kr1xeqUObQvpYCYPJ6O4oolZiDu0LQHOX5xEQgVyknnZrU%2Fv1vR1FfD', b'1', 1, 1, '2017-10-29 23:38:33', 0, 0, '2017-11-01 23:30:02'),
(80, 50, 20, 0, 'This week includes basement ', '13:55:00', '17:55:00', '100.00', '1aifADdvVtc4BXO868Zf%2FXPHkcE0odi%2FKvqccTuv6ZmJdmzVvmM7E4Yy8tqnI7cox9h%2BrtX0lWGv', b'1', 1, 1, '2017-10-30 05:08:33', 0, 0, '2017-11-02 03:55:01'),
(82, 48, 2, 0, '', '12:30:00', '13:30:00', '30.00', '1aifADdvVtc4BXKy7MhY%2BlYE6IB5WMPOm7KHcqG4fFHyirnvw8lq5GZWAXbGASIOVgN5N%2F9TGQ%3D%3D', b'1', 1, 1, '2017-10-30 23:20:07', 0, 0, '2017-10-30 23:30:02'),
(83, 51, 33, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc4BXix7MlY%2FdJRRB5%2BCPyx0xcclMn8IRY2HUZ4VIkIzI6WpTYdrJhYRYJJQC%2BF3oU%3D', b'1', 1, 1, '2017-11-06 13:41:42', 0, 0, '2017-11-06 23:00:02'),
(84, 51, 34, 0, '', '13:30:00', '15:00:00', '37.50', '1aifADdvVtc4BXix7Mda%2B4iwOSJLc6iLFtqT1l%2F4cU53JgP1vbvJNl93snzBl68VYZteo%2FjXkK5ujRK%2B', b'1', 1, 1, '2017-11-06 13:47:10', 0, 0, '2017-11-07 01:00:01'),
(85, 51, 2, 0, '', '15:25:00', '16:25:00', '25.00', '1aifADdvVtc4BXix7Mdc%2BwuKOrIrm7jhfa6VsGW8opNCcGpR%2F84uQdzamfJBLx9nZ21Q8%2B4xng%3D%3D', b'1', 1, 1, '2017-11-06 13:47:21', 0, 0, '2017-11-07 02:25:01'),
(86, 51, 35, 0, '', '16:55:00', '18:55:00', '50.00', '1aifADdvVtc4BXix7c9e%2Bs7dxhByqPlveTQ2tpzXWpv5bkUQPjIWtHyVfvhGTA6L0sakxEFyxgQ%3D', b'1', 1, 1, '2017-11-06 13:47:34', 0, 0, '2017-11-07 04:55:02'),
(87, 52, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc4BXix7cxZ%2FtgbMR7OMpViIn8x6Sdj0lmMBOm3PFbQEa4gFPkDfUJDAxH5atxAEzQ%3D', b'1', 1, 1, '2017-11-06 13:48:47', 0, 0, '2017-11-07 21:00:03'),
(88, 52, 30, 0, '', '11:30:00', '13:30:00', '50.00', '1aifADdvVtc4BXix7cxb%2FbnTfbZCWJIlBpdeUjY7Z5TceHMUI%2FRIJQcwwD4h20%2FX9T0Y6SBZcAc%3D', b'1', 1, 1, '2017-11-06 13:48:14', 0, 0, '2017-11-07 23:30:02'),
(89, 53, 17, 0, '', '09:30:00', '11:30:00', '60.00', '1aifADdvVtc4BXix7c1R%2B8B%2FoePJponLEAmUivorMXT%2FxCgThvXSF4MsCteb8pgoZJLhnHxq124%3D', b'1', 1, 1, '2017-11-06 13:52:34', 0, 0, '2017-11-08 21:30:01'),
(90, 53, 15, 0, '', '12:00:00', '14:00:00', '50.00', '1aifADdvVtc4BXix7cpc%2FFArPUo2SCdbYQd1AgEFAfJJmwl3XVuB7xL%2Fc0Zx8AOzHVXRBqW3ahE%3D', b'1', 1, 1, '2017-11-06 13:52:43', 0, 0, '2017-11-09 00:00:02'),
(91, 53, 36, 0, '', '14:40:00', '16:40:00', '50.00', '1aifADdvVtc4BXix7ctd%2B%2FMahHl%2FOdANELsKcqwEc6VF3CmF%2FlXQ%2BLTAmRMSWfdYvAHkSxwTXP8%3D', b'1', 1, 1, '2017-11-06 13:54:01', 0, 0, '2017-11-09 02:40:02'),
(92, 54, 16, 0, '', '09:00:00', '12:00:00', '90.00', '1aifADdvVtc4BXix7chZ%2BFovw8K4MkqFixVx0VjgUdck%2Bgxeauj6RGtKmI%2FHo%2BT4%2FJ8jM0NhHuM%3D', b'1', 1, 1, '2017-11-06 13:55:23', 0, 0, '2017-11-09 22:00:03'),
(93, 54, 11, 0, '', '12:25:00', '14:25:00', '50.00', '1aifADdvVtc4BXix7chb937KqNYRzhWn7xYZisVXpym7shhorI5RzLYzM5rycLZrbGpLoyiApWc%3D', b'1', 1, 1, '2017-11-06 13:55:37', 0, 0, '2017-11-10 00:25:01'),
(94, 54, 14, 0, '', '15:05:00', '17:05:00', '50.00', '1aifADdvVtc5DHC07MhR%2FtQwz2BTGIoTscPhOm6HSXL8sSmEDQNjR6mKtlBjRmCo9EFHBqSgIcc%3D', b'1', 1, 1, '2017-11-08 12:53:05', 0, 0, '2017-11-10 03:05:01'),
(95, 56, 13, 0, '', '11:00:00', '12:00:00', '30.00', '1aifADdvVtc5DHC07Mle%2FteyC9OyGH3UTHaAwOMoUpRj79LhKR0UEfhckmCUTshxpJowhIpgoZg%3D', b'1', 1, 1, '2017-11-08 12:54:23', 0, 0, '2017-11-10 22:00:01'),
(96, 56, 2, 0, '', '12:30:00', '16:00:00', '87.50', '1aifADdvVtc5DHC07MZc%2FJAEzSk18V%2FRO4VJrZ3s5D%2Fix4KOJh0iPzEId5E4BWJ6mSox8QyAeCC5uPw%3D', b'1', 1, 1, '2017-11-08 12:56:43', 0, 0, '2017-11-11 02:00:02'),
(97, 58, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5DHSx7M9Z%2BLLXPj3KoRbioqoXykVgs8%2FRAusx2F67qw%2BUQOYRof0%2BBsWxTdj4BXc%3D', b'1', 1, 1, '2017-11-13 12:34:10', 0, 0, '2017-11-14 21:00:02'),
(99, 59, 32, 0, '', '09:45:00', '13:45:00', '120.00', '1aifADdvVtc5DHe3489Z%2FUzIedTRsveyL9X%2FEQYu2Om9LVOmOEAf30Yfc3xbzEiqT2sPDRSrOUE2', b'1', 1, 1, '2017-11-14 11:19:20', 0, 0, '2017-11-15 23:45:02'),
(100, 59, 20, 0, '', '14:10:00', '16:10:00', '50.00', '1aifADdvVtc5DHe3489f%2F9tTQg9MorRlBu42p%2F3FNfV%2Fpez8rAyaKHYvCTutDQNeoo7vKwefH8A%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2017-11-14 03:12:41'),
(101, 64, 18, 0, '', '12:00:00', '14:00:00', '50.00', '1aifADdvVtc5DXC06sdQ9gojYy1qCnN7cvM0EvpflokT7alBBIKCCwunHrALIf%2FJmo2EJ4te%2FOQ%3D', b'1', 1, 1, '2017-11-20 01:05:50', 0, 0, '2017-11-21 00:00:01'),
(102, 68, 2, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc5DXaz7stZ%2B6e3v%2F7LVPTjH8k0aHzayLnzkd0X7MF6561FB6sR4nKF2DuRWqz6nw%3D%3D', b'1', 1, 1, '2017-11-27 14:38:10', 0, 0, '2017-11-27 23:00:01'),
(103, 70, 32, 0, '', '09:45:00', '13:45:00', '120.00', '1aifADdvVtc5DXaz7sZc%2FNPlBJAs0aCJJMwPj9HeeD6D0Ph37kQRPSXH9q13REuQ%2BRG9JOd79wUd', b'1', 1, 1, '2017-11-27 14:43:12', 0, 0, '2017-11-29 23:45:01'),
(104, 70, 20, 0, '', '14:10:00', '17:10:00', '75.00', '1aifADdvVtc5DXaz7sdb%2FZg3u1%2Be%2BJzVK%2BMAO%2BVkY3Td27QLPp2fVCi5dM2194xhE2dfBV7pCdA%3D', b'1', 1, 1, '2017-11-27 21:30:26', 0, 0, '2017-11-30 03:10:01'),
(105, 74, 2, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5D3ez7M9e%2B7UPIolopqE65DIQ6qda4Tatugxatai2dK3dOZ%2BCZqIQKwI833tZ%2Bw%3D%3D', b'1', 1, 1, '2017-12-19 14:51:55', 0, 0, '2017-12-20 21:00:02'),
(106, 74, 6, 0, '', '12:00:00', '02:30:00', '62.50', '', b'0', 0, 0, '0000-00-00 00:00:00', 1, 0, '2017-12-19 06:55:08'),
(107, 75, 16, 0, '', '09:00:00', '12:00:00', '90.00', '1aifADdvVtc5D3a9681a%2Ff4zWlwILLeRv0RWdtv6T%2BuVVNjVR8w0%2BWnkWEzubR%2B8Xkpuy2fq4b4%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2017-12-20 14:48:53'),
(108, 76, 2, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5D3iz4s5a%2FDmGdbVcUiZyMOA9O6CVKi9Ty2Qhtyrs3u7LPWLySSXXmjAb5icVug%3D%3D', b'1', 1, 1, '2017-12-23 02:44:09', 0, 0, '2017-12-23 21:00:01'),
(109, 76, 11, 0, '', '11:25:00', '13:25:00', '50.00', '1aifADdvVtc5D3iz4s1Z%2Fg8ZhBhbgyoTTpPzyTp70Zl4fpiZ5fMxb8h7ygXWER4RuyeMDjwOa6w%3D', b'1', 1, 1, '2017-12-23 02:46:17', 0, 0, '2017-12-23 23:25:02'),
(110, 84, 2, 0, '', '09:00:00', '10:00:00', '25.00', '1aifADdvVtc5CnS96shf%2Bcvd7LlHZq1fwq%2FeooTcKZ2MNaWZF2xRLH0kioQ2pE5x6tkMm03C6A%3D%3D', b'1', 1, 1, '2018-01-22 08:26:19', 0, 0, '2018-01-22 20:00:01'),
(111, 88, 11, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5Cnm178la9k2gIsjtDqkeB1VZaNeYIPoIqDeSrqoPED5Fz2MxOqjzXyKIv9wgHyw%3D', b'1', 1, 1, '2018-01-24 22:57:19', 0, 0, '2018-01-25 21:00:01'),
(112, 88, 2, 0, '', '11:25:00', '12:25:00', '25.00', '1aifADdvVtc5Cnm17M1f%2Bn9mMPN1LYmgSVF77Vb0NuVDt36STSsI9V3I3%2F3rX5SbpmLCuZxCNA%3D%3D', b'1', 1, 1, '2018-01-24 23:07:38', 0, 0, '2018-01-25 22:25:02'),
(113, 91, 2, 0, '', '09:00:00', '10:00:00', '25.00', '1aifADdvVtc5C3az7MpR%2F6nr6fiqlMHbJwGKoBcka1hM59gWwvqrK95w12A1jNUjpICqQZtjHA%3D%3D', b'1', 1, 1, '2018-02-05 01:49:41', 0, 0, '2018-02-05 20:00:02'),
(114, 91, 2, 0, '', '10:20:00', '11:20:00', '25.00', '1aifADdvVtc5C3az7c5f%2FmLq4e4eEiX55koHoosiPeuzT5rqbCrMW5oZ1JDa3nnXVMKDoljAzg%3D%3D', b'1', 1, 1, '2018-02-05 02:08:29', 0, 0, '2018-02-05 21:20:03'),
(115, 91, 6, 0, '', '11:50:00', '14:20:00', '62.50', '1aifADdvVtc5C3az4sZf%2FNyJCxcvHAGE0t7FZqGUkKgP7GVrmq0YZ%2FGIKG9m5anDu7%2FRVOVKUV1zS40%3D', b'1', 1, 1, '2018-02-05 02:29:05', 0, 0, '2018-02-06 00:20:02'),
(116, 91, 11, 0, '', '15:00:00', '17:00:00', '45.00', '1aifADdvVtc5C3az489e9jKQf5Zpo0EJCVgVy1MiT3vy0P%2BchnXr8cNLxQY50QbxyGVNHdMa2F%2Bj0A%3D%3D', b'1', 1, 1, '2018-02-05 02:35:58', 1, 0, '2018-02-06 03:00:03'),
(117, 93, 2, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc5C3iy78lc%2BMO5vakz9kNKiyb%2FpEQF6uW%2FaZsdwDAdtU%2BlReJJc5dn7CxYrJslkA%3D%3D', b'1', 1, 1, '2018-02-07 11:57:27', 0, 0, '2018-02-07 23:00:02'),
(118, 93, 15, 0, '', '13:35:00', '14:35:00', '31.00', '1aifADdvVtc5C3iy7c9Q9%2BYgQv1KxGAg4pW53vc0eDvIuxrElN32WMY%2BAEOLWvSj3JUBr9i9304%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-02-07 04:19:59'),
(119, 98, 2, 0, '', '10:00:00', '11:00:00', '25.00', '1aifADdvVtc5BHO04s1d%2BNyHLVKi9AVp4K37PkBCwCUBwMsyDYTDYzHKBA1q1NOKLRa5%2FY7wjQ%3D%3D', b'1', 1, 1, '2018-02-10 07:21:02', 0, 0, '2018-02-11 21:00:02'),
(120, 98, 11, 0, '', '11:25:00', '13:25:00', '50.00', '1aifADdvVtc5BHO04std%2BnoO2N4ftfvkdqAytGokcX1O8l3ai%2F41Kh6sN2rWlw7zo3mGW%2FRGu9k%3D', b'1', 1, 1, '2018-02-10 07:23:36', 0, 0, '2018-02-11 23:25:04'),
(121, 98, 4, 0, '', '14:20:00', '15:50:00', '43.50', '1aifADdvVtc5BHO04shQ%2BQaoTuQJXf8rNVdh5mtxG9V1tpIAUifI3Sqb7vKsf3%2B40OK%2FBjtAnx%2FTHsY%3D', b'1', 1, 1, '2018-02-10 07:26:26', 0, 0, '2018-02-12 01:50:02'),
(122, 97, 2, 0, '', '17:00:00', '18:00:00', '25.00', '1aifADdvVtc5BHO0485b%2FtCJLx8ltW6g5FBBHtfpo3zoQQT0yWNLwY3rz0lCG%2FyvT0kyxoV4YQ%3D%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-02-09 23:30:20'),
(123, 99, 20, 0, '', '13:30:00', '17:00:00', '70.00', '1aifADdvVtc5BHKy48Zc%2FD36wrpfp9l%2Bvln%2B3XCf8iILgHxHgw3cH43Kp6dZdJeNXiXuhM1UAlqOKdB1', b'1', 1, 1, '2018-02-12 05:23:52', 1, 0, '2018-02-15 03:00:02'),
(124, 100, 23, 0, '', '15:00:00', '16:30:00', '45.00', '1aifADdvVtc5BHK96s9c%2F%2F0rVaqyWwPabap14kinkEmTjC3elvDFeDxmXHxsXv4f%2Fx5t5JI29hXexpo%3D', b'1', 1, 1, '2018-02-12 04:17:28', 0, 0, '2018-02-13 02:30:01'),
(125, 100, 9, 0, '', '16:55:00', '18:25:00', '37.50', '1aifADdvVtc5BHK96spR%2BwMXkG0tXmY54PaHXnhZyiqSvJGYM7abO%2BkAJVjeAom2OyFxQ0EVl4m2%2Fk3x', b'1', 1, 1, '2018-02-12 04:23:04', 0, 0, '2018-02-13 04:25:02'),
(126, 101, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5BHWx7s1e9g3vr3drx2b0wpHJEYC8V%2FO%2FiaCd7pciThIjABnudnOYs6Sn%2FZb9r78GvNc%3D', b'1', 1, 1, '2018-02-12 23:20:24', 1, 0, '2018-02-13 21:00:03'),
(127, 101, 30, 0, '', '11:30:00', '13:30:00', '50.00', '1aifADdvVtc5BHWx489Y%2FdKUnGMBMj82nHDGKOBreOFHQc38pHfm0e6EqAmkkEPX3hMVHCvaXJ9x', b'1', 1, 1, '2018-02-12 23:56:25', 0, 0, '2018-02-13 23:30:03'),
(128, 101, 37, 0, '', '14:30:00', '16:30:00', '50.00', '1aifADdvVtc5BHW848lc%2FskBylJooIm4TSTKkdEhNNgqjtjpwPciwv5yWGxpaKP5pIKmrOKlfUg1dpY%3D', b'1', 1, 1, '2018-02-13 13:57:34', 1, 0, '2018-02-14 02:30:02'),
(129, 105, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc5BHm978dR%2F8uHU6auWvGdn0H6YDa7j6nBBeIndBUprhXkXOo2PYdI7rjHk6nHe%2FUR', b'1', 1, 1, '2018-02-18 01:08:57', 0, 0, '2018-02-20 21:00:03'),
(130, 105, 38, 0, '', '11:20:00', '13:20:00', '50.00', '1aifADdvVtc5BHm97c1b%2BfThb%2Bhvw7OjFtnYPMPSjyg5ObPAkl14CqqdOnWJc2xkDPbPDOOiJQNn', b'1', 1, 1, '2018-02-18 01:14:19', 0, 0, '2018-02-20 23:20:02'),
(131, 105, 39, 0, '', '13:45:00', '15:45:00', '50.00', '1aifADdvVtc5BHm94s9a%2BJYzWq%2BGjBg%2BCR3Si0L7RVPoSkOXCdbOO7SEjoFaW0R8QK%2F832pPMEISOuA%3D', b'1', 1, 1, '2018-02-18 01:24:20', 1, 0, '2018-02-21 01:45:01'),
(132, 109, 17, 0, '', '09:30:00', '11:30:00', '50.00', '1aifADdvVtc5BHm94sZf%2BLjbObIJBClgYKk%2BZfukvC7SZPZ%2FOdCWWzNIat05%2F5CFPwXhIKTpuDWgrtM%3D', b'1', 1, 1, '2018-02-18 01:35:39', 1, 0, '2018-02-21 21:30:02'),
(133, 109, 14, 0, '', '14:30:00', '16:30:00', '50.00', '1aifADdvVtc5BHm948pb%2FoUzYbdyu4HONoQIDXelSOOjG2U3AUVhsDkkYjBzLGLgUA4RTSYdR%2BA6vy8%3D', b'1', 1, 1, '2018-02-18 01:44:55', 1, 0, '2018-02-22 02:30:01'),
(134, 107, 40, 0, '', '11:30:00', '13:30:00', '50.00', '1aifADdvVtc5BHm86s1Y%2BOHf7%2BrNOXmRq8fCxvwxn2Bp4o2C217Qu%2FeYkapGb3q%2BOsGA8L8egzFvJAI%3D', b'1', 1, 1, '2018-02-18 01:59:50', 1, 0, '2018-02-22 23:30:01'),
(135, 104, 2, 0, '', '09:00:00', '10:00:00', '30.00', '1aifADdvVtc5BHm86stf%2FoYW4nddFSJEE9fXAuIvjXvX5gWhBy9oVpsyK%2Bfb%2BVqz0m2mD8labO8%3D', b'1', 1, 1, '2018-02-18 02:03:47', 0, 0, '2018-02-19 20:00:01'),
(136, 104, 17, 0, '', '10:25:00', '11:55:00', '37.50', '1aifADdvVtc5BHm86slQ%2BYsVsfxw%2BEpzv2EFT957rvQninx9vY93QDRZq3FhKbu1UkTNQt9ELRxaszi0Og%3D%3D', b'1', 1, 1, '2018-02-18 02:07:56', 0, 0, '2018-02-19 21:55:03'),
(137, 106, 2, 0, '', '10:00:00', '11:00:00', '30.00', '1aifADdvVtc5BXGz7clQ%2FEn9VN1boXaCyYUglgG0cV7o2g9RH3AgoigIuLKsmv6Q6gHaV67o6dk%3D', b'1', 1, 1, '2018-02-20 03:19:58', 0, 0, '2018-02-21 21:00:04'),
(138, 106, 14, 0, '', '11:50:00', '12:50:00', '31.00', '1aifADdvVtc5BXGz7cdR%2BwcRexEGqQ%2FNkQh6hB0kk1uFR6kyVpVLIEDBFhSsKRModO2xqlEWY1Tu', b'1', 1, 1, '2018-02-20 03:23:41', 0, 0, '2018-02-21 22:50:02'),
(139, 106, 14, 0, '', '13:10:00', '14:10:00', '25.00', '1aifADdvVtc5BXGz4s1Z%2BuOYaJcSPpCtgJE%2BDBPvtM11UoGRKfBtLtSZIFJr7cXZHlHhFWH8QevC', b'1', 1, 1, '2018-02-20 03:27:11', 0, 0, '2018-02-22 00:10:01'),
(140, 110, 2, 0, '', '12:00:00', '13:00:00', '25.00', '1aifADdvVtc5BXWx48hb%2Fwa%2BP%2FzoVL2fE%2FW8TyDZcCL45auRfOGcS%2FqSEIW1oEoBGyQxCFU6Jq8%3D', b'1', 1, 1, '2018-02-24 13:25:11', 0, 0, '2018-02-26 23:00:02'),
(141, 113, 6, 0, '', '12:00:00', '14:30:00', '62.50', '1aifADdvVtc5BXWw6s5c%2F7ly2BhY05N230u0lCTyesar%2BjdrtaORyE7ShfFatRFOEWxkhfAiDMul%2FPjSAKC4', b'1', 1, 1, '2018-02-24 13:28:43', 1, 0, '2018-03-01 00:30:02'),
(142, 114, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc6DHS97sZQ9%2BXunCfHmYqt4PHycscqX9m%2BA0dqVRtS0zFgrU4yYREoKUwOH8C9Bs1y', b'1', 1, 1, '2018-03-09 16:44:04', 0, 0, '2018-03-13 21:00:02'),
(143, 117, 21, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc6DXW87spY9wyi2u1xJnCDSkZMYeBsys9dQbAFtm8U8W5zH7%2BiNGFuXrZjKiiJLSQ6', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-03-19 21:20:19'),
(144, 117, 38, 0, '', '11:00:00', '13:00:00', '50.00', '1aifADdvVtc6DXW84s9R91ZJONbN4LVf4JBEOl2QuYdumT5jZvjI3VDaNQAKSrMAH%2BqFnJPgyAFq', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-03-19 22:23:09'),
(145, 120, 2, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc6DnC06M1Y%2FxykvzDabeovTZ1N%2Fkx%2BVa13cS%2FVyYxmvwdOTbsUmQRDA4tQ8qaOSlY%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-03-27 00:58:31'),
(146, 122, 1, 0, '', '09:00:00', '11:00:00', '50.00', '1aifADdvVtc6D3Kz6Mpf9xohFwmziEtqMAod0bKdj0pTQdeKsPoMUak04wm4mq%2Be4XmFVnA4vtM%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-04-10 12:14:29'),
(147, 124, 2, 0, '', '09:00:00', '10:00:00', '25.00', '1aifADdvVtc6D3Wz68lc%2B0gJ0nhG%2FbPTFxlHEebqwBXefGF%2BG75XmaQs3jd2ev%2FFFGQL8npxHlQ%3D', b'0', 0, 0, '0000-00-00 00:00:00', 0, 0, '2018-04-11 15:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `address` text COMMENT 'Billing Address of the Client',
  `latitude` varchar(50) DEFAULT NULL COMMENT 'Latitude of the Billing Address to be used for Google Matrix API',
  `longitude` varchar(50) DEFAULT NULL COMMENT 'Longitude of the Billing Address to be used for Google Matrix API',
  `contact_number` varchar(25) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1' COMMENT '0 - Deleted/Inactive, 1 - Active',
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Client Profile';

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `fullname`, `username`, `email`, `password`, `salt`, `address`, `latitude`, `longitude`, `contact_number`, `is_active`, `stripe_customer_id`, `date_registered`) VALUES
(1, 'Roscar Cunanan', 'roscar', 'roscarcunanan@yahoo.com', '66f2471c3047eb36103ad0759b6efbb74760fd07', '7579e3e478bf8de175197e9e8ae3c26ebee173c7', NULL, '43.669678', '-79.380413', NULL, 1, NULL, '2018-08-05 08:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `name`, `value`, `description`) VALUES
(1, 'PRICE_RATE_PER_HOUR', '25', 'Default price per hour. In CAD.'),
(2, 'PRICE_RATE_INCREMENT', '5', 'Price increase for each time slot away from existing booking. In CAD.'),
(3, 'SCHEDULE_RANGE', '7', 'Maximum number of days to display on schedule page from today. In DAYS.'),
(4, 'SCHEDULE_PADDING', '1200', 'Default time padding per slot. In SECONDS.'),
(5, 'APIKEY_GMATRIX', 'AIzaSyCU5wpz2moZT47Ij4IHw_Hh2UL4e6iIB48', 'Google Distance Matrix API Key.'),
(6, 'SCHEDULE_PADDING_2KM', '600', 'Additional time padding per slot if the distance between booked locations is greater than 2km. In SECONDS.'),
(7, 'TRAVEL_FEE', '6', 'Additional fee if booking next to an appointment where the travel time is greater than TRAVEL_FEE_TIME. In CAD.'),
(8, 'TRAVEL_FEE_TIME', '2100', 'Travel time threshold for the application of TRAVEL_FEE. In SECONDS.'),
(9, 'BOOKING_REMINDER_TIME', '48', 'Scheduled reminder email for upcoming booking. In HOURS.'),
(10, 'EMAIL_CONFIRM_BCC', 'info.rosieservices@gmail.com', 'BCC recipient for Booking Confirmation emails.'),
(11, 'EMAIL_REMINDER_BCC', 'info.rosieservices@gmail.com', 'BCC recipient for advance booking reminder emails.'),
(12, 'EMAIL_RATING_BCC', 'info.rosieservices@gmail.com', 'BCC recipient for after service review emails.'),
(13, 'APIKEY_STRIPE_SKEY', 'sk_test_FHGJYKxFl7IJhfybv3fsFowe', 'Stripe Secret Key.'),
(14, 'APIKEY_STRIPE_PKEY', 'pk_test_0jzVuD7SOuMu8R0d2uwIp64w', 'Stripe Public Key.');

-- --------------------------------------------------------

--
-- Table structure for table `distance_map`
--

CREATE TABLE `distance_map` (
  `map_id` bigint(20) NOT NULL,
  `origin` varchar(32) DEFAULT NULL COMMENT 'Origin request checksum',
  `destination` varchar(32) DEFAULT NULL COMMENT 'Destination request checksum',
  `result` int(11) NOT NULL COMMENT 'API Response',
  `date_requested` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance_map`
--

INSERT INTO `distance_map` (`map_id`, `origin`, `destination`, `result`, `date_requested`) VALUES
(1, 'c7e6db2bdba69b335bab3ecb7425df43', '9696d76f36be81a6b864370f1380c52e', 2910, '2017-09-23 02:57:22'),
(2, 'd117b457e8447c3bfea06eb8696c0f2c', '9696d76f36be81a6b864370f1380c52e', 1875, '2017-09-23 02:57:22'),
(3, '519c0cdbb9b57bb1842e260f6caf7c4d', '9696d76f36be81a6b864370f1380c52e', 2493, '2017-09-23 02:44:54'),
(4, '37351125fa96bb91b9085f6b5817f69e', '9696d76f36be81a6b864370f1380c52e', 1725, '2017-09-23 02:17:53'),
(5, 'c7e6db2bdba69b335bab3ecb7425df43', '6cf2194d199f0e9f85054e6746c476e6', 3642, '2018-02-11 21:09:37'),
(6, 'd117b457e8447c3bfea06eb8696c0f2c', '6cf2194d199f0e9f85054e6746c476e6', 1322, '2017-09-23 02:43:50'),
(7, '519c0cdbb9b57bb1842e260f6caf7c4d', '6cf2194d199f0e9f85054e6746c476e6', 4234, '2018-01-09 03:09:29'),
(8, '37351125fa96bb91b9085f6b5817f69e', '6cf2194d199f0e9f85054e6746c476e6', 1910, '2018-01-09 03:09:26'),
(9, '34981d5bd049b0c2bbf1fde5595a284c', '34981d5bd049b0c2bbf1fde5595a284c', 1200, '2017-09-26 02:41:35'),
(10, '34981d5bd049b0c2bbf1fde5595a284c', '91d857392f9d17728856187557c83fd2', 1702, '2017-09-26 02:44:20'),
(11, '91d857392f9d17728856187557c83fd2', '91d857392f9d17728856187557c83fd2', 1200, '2017-09-26 02:45:46'),
(12, '91d857392f9d17728856187557c83fd2', '8a4476d87b99900651ba61625ac3a51a', 1875, '2017-09-26 02:46:10'),
(13, '8a4476d87b99900651ba61625ac3a51a', '8a4476d87b99900651ba61625ac3a51a', 1200, '2017-09-26 02:48:57'),
(14, '8a4476d87b99900651ba61625ac3a51a', '6cf2194d199f0e9f85054e6746c476e6', 2762, '2018-02-21 20:10:28'),
(15, '6cf2194d199f0e9f85054e6746c476e6', '6cf2194d199f0e9f85054e6746c476e6', 1200, '2017-09-26 02:51:01'),
(16, '8a4476d87b99900651ba61625ac3a51a', 'a3604ab95470cfec6d28eb69d84a62ab', 2419, '2017-09-26 02:51:20'),
(17, '6cf2194d199f0e9f85054e6746c476e6', 'a3604ab95470cfec6d28eb69d84a62ab', 1322, '2017-09-26 02:51:20'),
(18, 'a3604ab95470cfec6d28eb69d84a62ab', 'a3604ab95470cfec6d28eb69d84a62ab', 1200, '2017-09-26 02:53:38'),
(19, '8a4476d87b99900651ba61625ac3a51a', '5ddff0fee282092487a4dbbdd5c6679b', 2277, '2017-09-26 02:55:38'),
(20, '6cf2194d199f0e9f85054e6746c476e6', '5ddff0fee282092487a4dbbdd5c6679b', 1842, '2017-09-26 02:55:39'),
(21, 'a3604ab95470cfec6d28eb69d84a62ab', '5ddff0fee282092487a4dbbdd5c6679b', 1812, '2017-09-26 02:55:39'),
(22, '5ddff0fee282092487a4dbbdd5c6679b', '5ddff0fee282092487a4dbbdd5c6679b', 1200, '2017-09-26 03:06:29'),
(23, 'a3604ab95470cfec6d28eb69d84a62ab', '6cf2194d199f0e9f85054e6746c476e6', 1321, '2017-09-28 04:13:33'),
(24, '5ddff0fee282092487a4dbbdd5c6679b', '6cf2194d199f0e9f85054e6746c476e6', 1843, '2018-01-09 03:27:34'),
(25, '8a4476d87b99900651ba61625ac3a51a', 'd5db971a5c54b1a97f3e341cc9982116', 2419, '2017-09-28 04:17:15'),
(26, '6cf2194d199f0e9f85054e6746c476e6', 'd5db971a5c54b1a97f3e341cc9982116', 1322, '2017-09-28 04:17:15'),
(27, 'a3604ab95470cfec6d28eb69d84a62ab', 'd5db971a5c54b1a97f3e341cc9982116', 1200, '2017-09-28 04:17:15'),
(28, '5ddff0fee282092487a4dbbdd5c6679b', 'd5db971a5c54b1a97f3e341cc9982116', 1804, '2017-09-28 04:17:16'),
(29, 'd5db971a5c54b1a97f3e341cc9982116', '6cf2194d199f0e9f85054e6746c476e6', 1322, '2017-09-28 04:17:34'),
(30, 'd5db971a5c54b1a97f3e341cc9982116', 'd5db971a5c54b1a97f3e341cc9982116', 1200, '2017-09-28 04:18:45'),
(31, '8a4476d87b99900651ba61625ac3a51a', '286e5d37bc743010252d6ab3e17b7227', 2359, '2017-09-28 04:20:59'),
(32, '6cf2194d199f0e9f85054e6746c476e6', '286e5d37bc743010252d6ab3e17b7227', 1303, '2017-09-28 04:21:00'),
(33, 'a3604ab95470cfec6d28eb69d84a62ab', '286e5d37bc743010252d6ab3e17b7227', 1424, '2017-09-28 04:21:00'),
(34, 'd5db971a5c54b1a97f3e341cc9982116', '286e5d37bc743010252d6ab3e17b7227', 1424, '2017-09-28 04:21:00'),
(35, '5ddff0fee282092487a4dbbdd5c6679b', '286e5d37bc743010252d6ab3e17b7227', 1744, '2017-09-28 04:21:01'),
(36, '286e5d37bc743010252d6ab3e17b7227', '286e5d37bc743010252d6ab3e17b7227', 1200, '2017-09-28 04:23:17'),
(37, '286e5d37bc743010252d6ab3e17b7227', '6cf2194d199f0e9f85054e6746c476e6', 1296, '2017-09-28 13:12:50'),
(38, '6cf2194d199f0e9f85054e6746c476e6', '3837d622cd8c0232294f738e528615ce', 3280, '2018-02-17 18:04:26'),
(39, '3837d622cd8c0232294f738e528615ce', '6cf2194d199f0e9f85054e6746c476e6', 3278, '2018-02-11 21:09:37'),
(40, '3837d622cd8c0232294f738e528615ce', '3837d622cd8c0232294f738e528615ce', 1200, '2017-10-05 04:09:23'),
(41, '6cf2194d199f0e9f85054e6746c476e6', '9696d76f36be81a6b864370f1380c52e', 1688, '2017-10-05 04:10:47'),
(42, '3837d622cd8c0232294f738e528615ce', '9696d76f36be81a6b864370f1380c52e', 2847, '2017-10-05 04:10:48'),
(43, '9696d76f36be81a6b864370f1380c52e', '9696d76f36be81a6b864370f1380c52e', 1200, '2017-10-05 04:13:01'),
(44, '9696d76f36be81a6b864370f1380c52e', '286e5d37bc743010252d6ab3e17b7227', 1702, '2017-10-05 04:15:07'),
(45, '3837d622cd8c0232294f738e528615ce', '286e5d37bc743010252d6ab3e17b7227', 2897, '2017-10-05 04:15:07'),
(46, '286e5d37bc743010252d6ab3e17b7227', '9696d76f36be81a6b864370f1380c52e', 1693, '2017-10-07 04:47:58'),
(47, '286e5d37bc743010252d6ab3e17b7227', '37351125fa96bb91b9085f6b5817f69e', 1796, '2017-10-07 04:48:27'),
(48, '9696d76f36be81a6b864370f1380c52e', '37351125fa96bb91b9085f6b5817f69e', 1490, '2017-10-07 05:58:57'),
(49, '37351125fa96bb91b9085f6b5817f69e', '37351125fa96bb91b9085f6b5817f69e', 1200, '2017-10-07 05:58:57'),
(50, '6cf2194d199f0e9f85054e6746c476e6', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1666, '2017-10-15 04:14:49'),
(51, '8ce1d9e3fc27590cb6f8d6307acdbc37', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1200, '2017-10-15 04:15:20'),
(52, '8ce1d9e3fc27590cb6f8d6307acdbc37', '286e5d37bc743010252d6ab3e17b7227', 1561, '2017-10-15 04:16:57'),
(53, '6cf2194d199f0e9f85054e6746c476e6', '093a6e7e765324db691c0e9b9119b859', 4391, '2018-01-24 15:12:42'),
(54, '8ce1d9e3fc27590cb6f8d6307acdbc37', '093a6e7e765324db691c0e9b9119b859', 2980, '2017-10-24 01:30:13'),
(55, '286e5d37bc743010252d6ab3e17b7227', '093a6e7e765324db691c0e9b9119b859', 4702, '2017-10-15 04:23:33'),
(56, '8ce1d9e3fc27590cb6f8d6307acdbc37', '9696d76f36be81a6b864370f1380c52e', 1382, '2017-10-15 04:24:47'),
(57, '093a6e7e765324db691c0e9b9119b859', '9696d76f36be81a6b864370f1380c52e', 2457, '2017-10-15 04:24:47'),
(58, '8ce1d9e3fc27590cb6f8d6307acdbc37', '6cf2194d199f0e9f85054e6746c476e6', 1662, '2017-10-15 04:26:10'),
(59, '9696d76f36be81a6b864370f1380c52e', '6cf2194d199f0e9f85054e6746c476e6', 1687, '2017-10-15 04:26:10'),
(60, '9696d76f36be81a6b864370f1380c52e', '093a6e7e765324db691c0e9b9119b859', 3062, '2017-10-15 04:26:41'),
(61, '9696d76f36be81a6b864370f1380c52e', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1385, '2017-10-15 04:27:21'),
(62, '093a6e7e765324db691c0e9b9119b859', '286e5d37bc743010252d6ab3e17b7227', 3148, '2017-10-15 04:27:32'),
(63, '6cf2194d199f0e9f85054e6746c476e6', '34981d5bd049b0c2bbf1fde5595a284c', 1447, '2017-10-15 19:38:39'),
(64, '8ce1d9e3fc27590cb6f8d6307acdbc37', '34981d5bd049b0c2bbf1fde5595a284c', 1460, '2017-11-06 05:49:36'),
(65, '9696d76f36be81a6b864370f1380c52e', '34981d5bd049b0c2bbf1fde5595a284c', 1440, '2017-10-15 19:38:40'),
(66, '6cf2194d199f0e9f85054e6746c476e6', '5a243be5e1119d2676cb3ff5a6462cc8', 1704, '2018-02-24 05:26:24'),
(67, '8ce1d9e3fc27590cb6f8d6307acdbc37', '5a243be5e1119d2676cb3ff5a6462cc8', 1388, '2017-10-15 19:45:46'),
(68, '9696d76f36be81a6b864370f1380c52e', '5a243be5e1119d2676cb3ff5a6462cc8', 1574, '2017-10-15 19:45:46'),
(69, '34981d5bd049b0c2bbf1fde5595a284c', '5a243be5e1119d2676cb3ff5a6462cc8', 1492, '2017-10-15 19:45:47'),
(70, '5a243be5e1119d2676cb3ff5a6462cc8', '6cf2194d199f0e9f85054e6746c476e6', 1705, '2018-01-09 03:27:28'),
(71, '8ce1d9e3fc27590cb6f8d6307acdbc37', 'd117b457e8447c3bfea06eb8696c0f2c', 1665, '2017-10-18 03:37:28'),
(72, '286e5d37bc743010252d6ab3e17b7227', 'd117b457e8447c3bfea06eb8696c0f2c', 1419, '2017-10-18 03:37:29'),
(73, '9696d76f36be81a6b864370f1380c52e', 'd117b457e8447c3bfea06eb8696c0f2c', 1851, '2017-10-18 03:37:29'),
(74, '5a243be5e1119d2676cb3ff5a6462cc8', 'd117b457e8447c3bfea06eb8696c0f2c', 1665, '2017-10-18 03:37:30'),
(75, '8ce1d9e3fc27590cb6f8d6307acdbc37', 'd5db971a5c54b1a97f3e341cc9982116', 1666, '2017-10-18 03:41:36'),
(76, '286e5d37bc743010252d6ab3e17b7227', 'd5db971a5c54b1a97f3e341cc9982116', 1418, '2017-10-18 03:41:37'),
(77, '9696d76f36be81a6b864370f1380c52e', 'd5db971a5c54b1a97f3e341cc9982116', 1852, '2017-10-18 03:47:50'),
(78, '5a243be5e1119d2676cb3ff5a6462cc8', 'd5db971a5c54b1a97f3e341cc9982116', 1666, '2017-10-18 03:41:37'),
(79, 'd117b457e8447c3bfea06eb8696c0f2c', 'd5db971a5c54b1a97f3e341cc9982116', 1201, '2017-10-18 03:41:38'),
(80, '8ce1d9e3fc27590cb6f8d6307acdbc37', 'c7e6db2bdba69b335bab3ecb7425df43', 3444, '2017-11-14 03:11:52'),
(81, '9696d76f36be81a6b864370f1380c52e', 'c7e6db2bdba69b335bab3ecb7425df43', 3401, '2017-10-18 03:52:56'),
(82, '5a243be5e1119d2676cb3ff5a6462cc8', 'c7e6db2bdba69b335bab3ecb7425df43', 3383, '2017-10-18 03:52:57'),
(83, 'd117b457e8447c3bfea06eb8696c0f2c', 'c7e6db2bdba69b335bab3ecb7425df43', 3494, '2017-10-18 03:52:57'),
(84, 'd5db971a5c54b1a97f3e341cc9982116', 'c7e6db2bdba69b335bab3ecb7425df43', 3495, '2017-10-18 03:52:58'),
(86, '5a243be5e1119d2676cb3ff5a6462cc8', '7f37442a1036c3ad56ea6e19b7885e3d', 2754, '2017-10-18 13:42:34'),
(87, 'd117b457e8447c3bfea06eb8696c0f2c', '7f37442a1036c3ad56ea6e19b7885e3d', 3036, '2017-10-18 13:42:35'),
(88, 'd5db971a5c54b1a97f3e341cc9982116', '7f37442a1036c3ad56ea6e19b7885e3d', 3037, '2017-10-18 13:42:35'),
(89, 'c7e6db2bdba69b335bab3ecb7425df43', '7f37442a1036c3ad56ea6e19b7885e3d', 2959, '2017-10-18 13:42:36'),
(90, '37351125fa96bb91b9085f6b5817f69e', '3837d622cd8c0232294f738e528615ce', 2918, '2017-10-22 16:46:14'),
(91, '37351125fa96bb91b9085f6b5817f69e', 'c7e6db2bdba69b335bab3ecb7425df43', 3875, '2017-10-28 14:36:53'),
(92, '37351125fa96bb91b9085f6b5817f69e', '081b0aa61bd4672843ff77d7449dbfe6', 2655, '2017-10-22 16:56:47'),
(93, '3837d622cd8c0232294f738e528615ce', '081b0aa61bd4672843ff77d7449dbfe6', 1746, '2017-10-22 16:56:47'),
(94, '37351125fa96bb91b9085f6b5817f69e', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1572, '2017-10-22 17:39:57'),
(110, '6cf2194d199f0e9f85054e6746c476e6', 'c7e6db2bdba69b335bab3ecb7425df43', 4599, '2017-11-27 06:38:48'),
(111, '07f33d8ee0ae220be6d681d40a092692', 'c7e6db2bdba69b335bab3ecb7425df43', 1201, '2017-10-29 15:33:33'),
(112, 'c7e6db2bdba69b335bab3ecb7425df43', 'c7e6db2bdba69b335bab3ecb7425df43', 1200, '2017-10-29 15:44:38'),
(113, '73f0f02a79affb212668e7301234693d', 'c8633e9383712db0057c7734fc3e7161', 1755, '2017-11-06 05:42:08'),
(114, '73f0f02a79affb212668e7301234693d', '6cf2194d199f0e9f85054e6746c476e6', 1647, '2017-11-06 05:42:29'),
(115, 'c8633e9383712db0057c7734fc3e7161', '6cf2194d199f0e9f85054e6746c476e6', 1308, '2017-11-06 05:42:29'),
(116, '73f0f02a79affb212668e7301234693d', '3bab74af085d1f91e9b05439ff07ca79', 1798, '2017-11-06 05:46:09'),
(117, 'c8633e9383712db0057c7734fc3e7161', '3bab74af085d1f91e9b05439ff07ca79', 1552, '2017-11-06 05:46:09'),
(118, '6cf2194d199f0e9f85054e6746c476e6', '3bab74af085d1f91e9b05439ff07ca79', 1529, '2017-11-06 05:46:09'),
(119, '73f0f02a79affb212668e7301234693d', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1463, '2017-11-06 05:46:31'),
(120, '3bab74af085d1f91e9b05439ff07ca79', '8ce1d9e3fc27590cb6f8d6307acdbc37', 1611, '2017-11-06 05:46:32'),
(121, '73f0f02a79affb212668e7301234693d', '6da39f32d375ad547f970865ec6aec80', 1649, '2017-11-06 05:46:55'),
(122, 'c8633e9383712db0057c7734fc3e7161', '6da39f32d375ad547f970865ec6aec80', 1307, '2017-11-06 05:46:56'),
(123, '6cf2194d199f0e9f85054e6746c476e6', '6da39f32d375ad547f970865ec6aec80', 1201, '2017-11-06 05:46:56'),
(124, '3bab74af085d1f91e9b05439ff07ca79', '6da39f32d375ad547f970865ec6aec80', 1545, '2017-11-06 05:46:56'),
(125, '8ce1d9e3fc27590cb6f8d6307acdbc37', '6da39f32d375ad547f970865ec6aec80', 1663, '2017-11-06 05:46:56'),
(126, '73f0f02a79affb212668e7301234693d', '34981d5bd049b0c2bbf1fde5595a284c', 1401, '2017-11-06 05:49:36'),
(127, '3bab74af085d1f91e9b05439ff07ca79', '34981d5bd049b0c2bbf1fde5595a284c', 1711, '2017-11-06 05:49:36'),
(128, '6da39f32d375ad547f970865ec6aec80', '34981d5bd049b0c2bbf1fde5595a284c', 1448, '2017-11-06 05:49:36'),
(129, '73f0f02a79affb212668e7301234693d', '5ddff0fee282092487a4dbbdd5c6679b', 1706, '2017-11-06 05:50:44'),
(130, 'c8633e9383712db0057c7734fc3e7161', '5ddff0fee282092487a4dbbdd5c6679b', 1827, '2017-11-06 05:50:44'),
(131, '3bab74af085d1f91e9b05439ff07ca79', '5ddff0fee282092487a4dbbdd5c6679b', 2388, '2017-11-06 05:50:44'),
(132, '8ce1d9e3fc27590cb6f8d6307acdbc37', '5ddff0fee282092487a4dbbdd5c6679b', 1509, '2017-11-06 05:50:45'),
(133, '6da39f32d375ad547f970865ec6aec80', '5ddff0fee282092487a4dbbdd5c6679b', 1843, '2017-11-06 05:50:45'),
(134, '34981d5bd049b0c2bbf1fde5595a284c', '5ddff0fee282092487a4dbbdd5c6679b', 1612, '2017-11-06 05:50:45'),
(135, '73f0f02a79affb212668e7301234693d', '8544f27a1f81092df1113a6549c62b6b', 2299, '2017-11-06 05:52:13'),
(136, '3bab74af085d1f91e9b05439ff07ca79', '8544f27a1f81092df1113a6549c62b6b', 2290, '2017-11-06 05:52:13'),
(137, '8ce1d9e3fc27590cb6f8d6307acdbc37', '8544f27a1f81092df1113a6549c62b6b', 2102, '2017-11-06 05:52:14'),
(138, '6da39f32d375ad547f970865ec6aec80', '8544f27a1f81092df1113a6549c62b6b', 2436, '2017-11-06 05:52:14'),
(139, '5ddff0fee282092487a4dbbdd5c6679b', '8544f27a1f81092df1113a6549c62b6b', 2278, '2017-11-06 05:52:14'),
(140, '6da39f32d375ad547f970865ec6aec80', '6cf2194d199f0e9f85054e6746c476e6', 1201, '2017-11-06 05:53:17'),
(141, '8544f27a1f81092df1113a6549c62b6b', '6cf2194d199f0e9f85054e6746c476e6', 3724, '2018-01-09 03:09:35'),
(142, '73f0f02a79affb212668e7301234693d', 'a3604ab95470cfec6d28eb69d84a62ab', 1769, '2017-11-06 05:53:39'),
(143, 'c8633e9383712db0057c7734fc3e7161', 'a3604ab95470cfec6d28eb69d84a62ab', 1214, '2017-11-06 05:53:39'),
(144, '3bab74af085d1f91e9b05439ff07ca79', 'a3604ab95470cfec6d28eb69d84a62ab', 1584, '2017-11-06 05:53:40'),
(145, '8ce1d9e3fc27590cb6f8d6307acdbc37', 'a3604ab95470cfec6d28eb69d84a62ab', 1667, '2017-11-06 05:53:40'),
(146, '6da39f32d375ad547f970865ec6aec80', 'a3604ab95470cfec6d28eb69d84a62ab', 1321, '2017-11-06 05:53:40'),
(147, '8544f27a1f81092df1113a6549c62b6b', 'a3604ab95470cfec6d28eb69d84a62ab', 2437, '2017-11-06 05:53:40'),
(148, '8ce1d9e3fc27590cb6f8d6307acdbc37', '8a4476d87b99900651ba61625ac3a51a', 2065, '2017-11-08 04:48:09'),
(149, '6da39f32d375ad547f970865ec6aec80', '8a4476d87b99900651ba61625ac3a51a', 2399, '2017-11-08 04:48:10'),
(150, '8544f27a1f81092df1113a6549c62b6b', '8a4476d87b99900651ba61625ac3a51a', 1295, '2017-11-08 04:48:10'),
(151, '6cf2194d199f0e9f85054e6746c476e6', '8a4476d87b99900651ba61625ac3a51a', 2719, '2018-02-19 19:17:05'),
(152, 'a3604ab95470cfec6d28eb69d84a62ab', '8a4476d87b99900651ba61625ac3a51a', 2368, '2017-11-08 04:48:11'),
(153, '8ce1d9e3fc27590cb6f8d6307acdbc37', '7e28ea4cc29cc35028b8dd150ad85ca9', 1516, '2017-11-08 04:51:54'),
(154, '6da39f32d375ad547f970865ec6aec80', '7e28ea4cc29cc35028b8dd150ad85ca9', 1779, '2017-11-08 04:51:54'),
(155, '8544f27a1f81092df1113a6549c62b6b', '7e28ea4cc29cc35028b8dd150ad85ca9', 2842, '2017-11-08 04:51:54'),
(156, '6cf2194d199f0e9f85054e6746c476e6', '7e28ea4cc29cc35028b8dd150ad85ca9', 1780, '2017-11-08 04:51:55'),
(157, '8a4476d87b99900651ba61625ac3a51a', '7e28ea4cc29cc35028b8dd150ad85ca9', 2782, '2017-11-08 04:51:55'),
(158, '7e28ea4cc29cc35028b8dd150ad85ca9', '6cf2194d199f0e9f85054e6746c476e6', 1787, '2018-01-09 03:09:35'),
(159, '8ce1d9e3fc27590cb6f8d6307acdbc37', '07f33d8ee0ae220be6d681d40a092692', 3400, '2017-11-14 03:10:02'),
(160, 'c7e6db2bdba69b335bab3ecb7425df43', '07f33d8ee0ae220be6d681d40a092692', 1201, '2017-11-14 03:02:42'),
(161, 'beaa932a1175b13433ee2daab0892c73', 'beaa932a1175b13433ee2daab0892c73', 1200, '2017-11-19 17:03:22'),
(162, '6cf2194d199f0e9f85054e6746c476e6', '07f33d8ee0ae220be6d681d40a092692', 4600, '2017-11-27 06:39:30'),
(163, '5a243be5e1119d2676cb3ff5a6462cc8', 'a3604ab95470cfec6d28eb69d84a62ab', 1666, '2018-02-24 05:29:26'),
(164, '34981d5bd049b0c2bbf1fde5595a284c', '6cf2194d199f0e9f85054e6746c476e6', 1447, '2018-01-09 03:09:24'),
(165, 'beaa932a1175b13433ee2daab0892c73', '6cf2194d199f0e9f85054e6746c476e6', 1843, '2018-01-17 05:17:55'),
(166, '0ff83b79662a664a47e895a6f3d6bd7c', '6cf2194d199f0e9f85054e6746c476e6', 3792, '2018-02-11 21:09:37'),
(167, 'f8e419ba90527af0e8e627e911e851d2', '6cf2194d199f0e9f85054e6746c476e6', 1927, '2018-01-17 05:26:12'),
(168, '4775f926fc036ce13b364348087f3705', '6cf2194d199f0e9f85054e6746c476e6', 1207, '2018-01-09 03:09:29'),
(169, '7f37442a1036c3ad56ea6e19b7885e3d', '6cf2194d199f0e9f85054e6746c476e6', 4239, '2018-01-09 03:09:32'),
(170, '081b0aa61bd4672843ff77d7449dbfe6', '6cf2194d199f0e9f85054e6746c476e6', 4009, '2018-01-09 03:09:33'),
(171, '6704cd3a1ad5ea05bd247d63f80cbe7c', '6cf2194d199f0e9f85054e6746c476e6', 1603, '2018-01-09 03:09:33'),
(172, '093a6e7e765324db691c0e9b9119b859', '6cf2194d199f0e9f85054e6746c476e6', 4236, '2018-01-17 05:26:19'),
(173, '3bab74af085d1f91e9b05439ff07ca79', '6cf2194d199f0e9f85054e6746c476e6', 1546, '2018-01-09 03:09:34'),
(174, '34981d5bd049b0c2bbf1fde5595a284c', '4775f926fc036ce13b364348087f3705', 1453, '2018-01-11 10:03:50'),
(175, '5a243be5e1119d2676cb3ff5a6462cc8', '4775f926fc036ce13b364348087f3705', 1712, '2018-01-20 05:11:53'),
(176, '9696d76f36be81a6b864370f1380c52e', '4775f926fc036ce13b364348087f3705', 1694, '2018-01-20 05:11:54'),
(177, 'beaa932a1175b13433ee2daab0892c73', '4775f926fc036ce13b364348087f3705', 1812, '2018-01-20 05:11:54'),
(178, 'd117b457e8447c3bfea06eb8696c0f2c', '4775f926fc036ce13b364348087f3705', 1316, '2018-01-11 10:03:51'),
(179, '37351125fa96bb91b9085f6b5817f69e', '4775f926fc036ce13b364348087f3705', 1917, '2018-01-20 05:11:55'),
(180, 'c7e6db2bdba69b335bab3ecb7425df43', '4775f926fc036ce13b364348087f3705', 4198, '2018-01-20 05:11:55'),
(181, '6cf2194d199f0e9f85054e6746c476e6', '4775f926fc036ce13b364348087f3705', 1207, '2018-01-11 10:03:52'),
(182, 'a3604ab95470cfec6d28eb69d84a62ab', '4775f926fc036ce13b364348087f3705', 1315, '2018-01-11 10:03:52'),
(183, '3837d622cd8c0232294f738e528615ce', '4775f926fc036ce13b364348087f3705', 4249, '2018-01-20 05:11:56'),
(184, 'd5db971a5c54b1a97f3e341cc9982116', '4775f926fc036ce13b364348087f3705', 1315, '2018-01-11 10:03:53'),
(185, '0ff83b79662a664a47e895a6f3d6bd7c', '4775f926fc036ce13b364348087f3705', 4458, '2018-01-20 05:11:56'),
(186, 'f8e419ba90527af0e8e627e911e851d2', '4775f926fc036ce13b364348087f3705', 1921, '2018-01-20 05:11:57'),
(187, '8ce1d9e3fc27590cb6f8d6307acdbc37', '4775f926fc036ce13b364348087f3705', 1669, '2018-01-20 05:11:57'),
(188, '4775f926fc036ce13b364348087f3705', '4775f926fc036ce13b364348087f3705', 1200, '2018-01-11 10:03:54'),
(189, '519c0cdbb9b57bb1842e260f6caf7c4d', '4775f926fc036ce13b364348087f3705', 4241, '2018-01-20 05:11:58'),
(190, '8a4476d87b99900651ba61625ac3a51a', '4775f926fc036ce13b364348087f3705', 3671, '2018-01-20 05:11:58'),
(191, '5ddff0fee282092487a4dbbdd5c6679b', '4775f926fc036ce13b364348087f3705', 1850, '2018-01-20 05:12:00'),
(192, '286e5d37bc743010252d6ab3e17b7227', '4775f926fc036ce13b364348087f3705', 1302, '2018-01-11 10:03:56'),
(193, '7f37442a1036c3ad56ea6e19b7885e3d', '4775f926fc036ce13b364348087f3705', 4246, '2018-01-20 05:12:01'),
(194, '081b0aa61bd4672843ff77d7449dbfe6', '4775f926fc036ce13b364348087f3705', 4016, '2018-01-20 05:12:01'),
(195, '6704cd3a1ad5ea05bd247d63f80cbe7c', '4775f926fc036ce13b364348087f3705', 1610, '2018-01-11 10:03:57'),
(196, '093a6e7e765324db691c0e9b9119b859', '4775f926fc036ce13b364348087f3705', 4443, '2018-01-20 05:12:02'),
(197, '73f0f02a79affb212668e7301234693d', '4775f926fc036ce13b364348087f3705', 1654, '2018-01-11 10:03:57'),
(198, 'c8633e9383712db0057c7734fc3e7161', '4775f926fc036ce13b364348087f3705', 1301, '2018-01-11 10:03:57'),
(199, '3bab74af085d1f91e9b05439ff07ca79', '4775f926fc036ce13b364348087f3705', 1540, '2018-01-11 10:03:58'),
(200, '6da39f32d375ad547f970865ec6aec80', '4775f926fc036ce13b364348087f3705', 1205, '2018-01-11 10:03:58'),
(201, '8544f27a1f81092df1113a6549c62b6b', '4775f926fc036ce13b364348087f3705', 3814, '2018-01-20 05:12:04'),
(202, '7e28ea4cc29cc35028b8dd150ad85ca9', '4775f926fc036ce13b364348087f3705', 1780, '2018-01-11 11:04:19'),
(203, 'a3604ab95470cfec6d28eb69d84a62ab', '093a6e7e765324db691c0e9b9119b859', 5077, '2018-01-24 15:37:05'),
(204, 'a3604ab95470cfec6d28eb69d84a62ab', '3837d622cd8c0232294f738e528615ce', 3273, '2018-02-09 23:24:16'),
(205, 'c7e6db2bdba69b335bab3ecb7425df43', '3837d622cd8c0232294f738e528615ce', 3636, '2018-02-11 20:15:10'),
(206, '3837d622cd8c0232294f738e528615ce', '0ff83b79662a664a47e895a6f3d6bd7c', 1484, '2018-02-11 20:18:14'),
(207, 'a3604ab95470cfec6d28eb69d84a62ab', '0ff83b79662a664a47e895a6f3d6bd7c', 3968, '2018-02-11 20:21:20'),
(208, 'c7e6db2bdba69b335bab3ecb7425df43', '0ff83b79662a664a47e895a6f3d6bd7c', 3445, '2018-02-11 20:21:20'),
(209, '3837d622cd8c0232294f738e528615ce', '8ce1d9e3fc27590cb6f8d6307acdbc37', 3014, '2018-02-12 14:09:57'),
(210, '0ff83b79662a664a47e895a6f3d6bd7c', '8ce1d9e3fc27590cb6f8d6307acdbc37', 2628, '2018-02-12 14:09:58'),
(211, 'c7e6db2bdba69b335bab3ecb7425df43', '8ce1d9e3fc27590cb6f8d6307acdbc37', 3223, '2018-02-12 14:09:58'),
(212, '3837d622cd8c0232294f738e528615ce', '6da39f32d375ad547f970865ec6aec80', 3339, '2018-02-12 15:23:20'),
(213, '0ff83b79662a664a47e895a6f3d6bd7c', '6da39f32d375ad547f970865ec6aec80', 3728, '2018-02-12 15:23:21'),
(214, 'c7e6db2bdba69b335bab3ecb7425df43', '6da39f32d375ad547f970865ec6aec80', 3695, '2018-02-12 15:23:21'),
(215, '1c1aa32ecd5c13be4cea6d7c5f861127', '1c1aa32ecd5c13be4cea6d7c5f861127', 1200, '2018-02-17 17:04:58'),
(216, '1c1aa32ecd5c13be4cea6d7c5f861127', 'f1c4a515e443b39d4e19d89dff99da3e', 1579, '2018-02-17 17:19:10'),
(217, '1c1aa32ecd5c13be4cea6d7c5f861127', '6cf2194d199f0e9f85054e6746c476e6', 1653, '2018-03-09 08:45:22'),
(218, 'f1c4a515e443b39d4e19d89dff99da3e', '6cf2194d199f0e9f85054e6746c476e6', 2007, '2018-02-19 19:36:11'),
(219, '1c1aa32ecd5c13be4cea6d7c5f861127', '34981d5bd049b0c2bbf1fde5595a284c', 1457, '2018-02-17 17:33:49'),
(220, 'f1c4a515e443b39d4e19d89dff99da3e', '34981d5bd049b0c2bbf1fde5595a284c', 1810, '2018-02-17 18:05:45'),
(221, '1c1aa32ecd5c13be4cea6d7c5f861127', '8a4476d87b99900651ba61625ac3a51a', 2389, '2018-02-19 19:17:06'),
(222, 'f1c4a515e443b39d4e19d89dff99da3e', '8a4476d87b99900651ba61625ac3a51a', 2661, '2018-02-19 19:17:06'),
(223, '34981d5bd049b0c2bbf1fde5595a284c', '8a4476d87b99900651ba61625ac3a51a', 2489, '2018-02-19 19:17:05'),
(224, '1c1aa32ecd5c13be4cea6d7c5f861127', '3837d622cd8c0232294f738e528615ce', 2950, '2018-02-17 18:04:26'),
(225, 'f1c4a515e443b39d4e19d89dff99da3e', '3837d622cd8c0232294f738e528615ce', 3222, '2018-02-17 18:04:27'),
(226, '34981d5bd049b0c2bbf1fde5595a284c', '3837d622cd8c0232294f738e528615ce', 3050, '2018-02-17 18:04:27'),
(227, '8a4476d87b99900651ba61625ac3a51a', '3837d622cd8c0232294f738e528615ce', 1888, '2018-02-17 18:09:46'),
(228, '8a4476d87b99900651ba61625ac3a51a', '34981d5bd049b0c2bbf1fde5595a284c', 2508, '2018-02-17 18:05:45'),
(229, '6cf2194d199f0e9f85054e6746c476e6', '1c1aa32ecd5c13be4cea6d7c5f861127', 1669, '2018-02-24 05:31:03'),
(230, '5a243be5e1119d2676cb3ff5a6462cc8', '1c1aa32ecd5c13be4cea6d7c5f861127', 1377, '2018-02-24 05:31:04'),
(231, '1c1aa32ecd5c13be4cea6d7c5f861127', '5a243be5e1119d2676cb3ff5a6462cc8', 1443, '2018-03-09 08:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text,
  `rating` decimal(3,1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `booking_id`, `client_id`, `user_id`, `comment`, `rating`, `timestamp`) VALUES
(17, 49, 49, 2, 'dasdasdasdasdasd', '5.0', '2017-10-06 23:56:12'),
(18, 12, 12, 3, 'asdasdasdasdasd', '4.0', '2017-10-07 00:18:25'),
(19, 52, 52, 3, 'Great', '5.0', '2017-10-07 00:25:13'),
(20, 51, 51, 3, 'Soso', '2.0', '2017-10-07 00:29:08'),
(21, 47, 47, 3, 'Test', '3.0', '2017-10-07 00:31:14'),
(22, 32, 32, 3, 'Test', '3.0', '2017-10-07 00:31:35'),
(23, 41, 41, 3, '', '4.0', '2017-10-07 00:31:56'),
(24, 28, 28, 2, 'So so ok ', '1.0', '2017-10-07 00:46:24'),
(25, 27, 27, 2, 'Test', '3.0', '2017-10-07 00:46:42'),
(26, 42, 42, 2, 'Good stuff here!!!', '4.0', '2017-10-07 00:46:56'),
(27, 34, 34, 2, '', '3.0', '2017-10-07 00:47:04'),
(28, 29, 29, 2, 'testing review', '4.0', '2017-10-07 14:29:54'),
(29, 54, 54, 2, 'She was great!', '5.0', '2017-10-08 03:16:38'),
(30, 55, 55, 2, 'Great', '5.0', '2017-10-17 00:34:40'),
(31, 56, 56, 2, '', '5.0', '2017-10-18 01:38:41'),
(32, 57, 57, 2, '', '5.0', '2017-10-18 01:39:10'),
(33, 58, 58, 2, '', '5.0', '2017-10-18 01:39:17'),
(34, 60, 60, 2, 'Test', '4.0', '2017-10-19 01:25:38'),
(35, 62, 62, 3, 'Tn123 . %## .           %$$$', '4.0', '2017-10-19 01:26:00'),
(36, 61, 61, 2, 'sjfdl . slakjfljasf slf . ljflsjf l lsjflsj lkj l lkjsdf\n\n-a-sfsfa\n\n-as-dfa-sf\na-s-fsaf', '3.0', '2017-10-19 01:26:22'),
(37, 63, 63, 3, 'asfsf . 45 3 453 45 345 . *****', '2.0', '2017-10-19 01:26:42'),
(38, 66, 66, 2, 'So great. Lorum ipsum\norem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '5.0', '2017-10-19 04:10:46'),
(39, 64, 64, 2, 'Test', '4.0', '2017-10-20 05:17:59'),
(40, 65, 65, 2, 'Test', '4.0', '2017-10-20 05:18:15'),
(41, 68, 68, 2, '', '5.0', '2017-10-27 23:39:45'),
(42, 67, 67, 2, '', '5.0', '2017-10-27 23:39:53'),
(43, 71, 71, 2, '', '5.0', '2017-10-27 23:40:02'),
(44, 69, 69, 2, '', '5.0', '2017-10-27 23:40:11'),
(45, 70, 70, 2, '', '5.0', '2017-10-27 23:40:19'),
(46, 73, 73, 2, '', '5.0', '2017-10-27 23:40:29'),
(47, 76, 76, 2, '', '5.0', '2017-10-27 23:40:39'),
(48, 77, 77, 2, '', '5.0', '2017-10-29 01:47:08'),
(49, 78, 78, 2, '', '5.0', '2017-10-29 01:47:27'),
(50, 82, 82, 2, '', '5.0', '2017-10-31 02:09:12'),
(51, 79, 79, 2, '', '5.0', '2017-11-02 01:54:40'),
(52, 83, 83, 2, '', '5.0', '2017-11-07 02:28:34'),
(53, 84, 84, 2, '', '5.0', '2017-11-07 02:28:41'),
(54, 85, 85, 2, '', '5.0', '2017-11-07 02:28:47'),
(55, 86, 86, 2, '', '5.0', '2017-11-07 05:20:00'),
(56, 87, 87, 2, '', '5.0', '2017-11-07 23:06:28'),
(57, 88, 88, 2, '', '5.0', '2017-11-08 05:15:45'),
(58, 89, 89, 3, '', '5.0', '2017-11-09 01:11:34'),
(59, 90, 90, 3, '', '5.0', '2017-11-09 01:11:39'),
(60, 91, 91, 3, '', '5.0', '2017-11-09 03:45:23'),
(61, 92, 92, 2, '', '5.0', '2017-11-09 22:18:10'),
(62, 93, 93, 2, '', '5.0', '2017-11-10 02:45:32'),
(63, 94, 94, 2, '', '5.0', '2017-11-10 05:52:36'),
(64, 95, 95, 2, '', '5.0', '2017-11-11 00:48:02'),
(65, 96, 96, 2, '', '5.0', '2017-11-11 03:29:30'),
(66, 97, 97, 2, '', '5.0', '2017-11-15 00:06:04'),
(67, 99, 99, 2, '', '5.0', '2017-11-15 23:49:19'),
(68, 101, 101, 2, '', '5.0', '2017-11-21 01:20:32'),
(69, 102, 102, 2, '', '5.0', '2017-11-28 00:29:39'),
(70, 103, 103, 2, '', '5.0', '2017-11-30 04:31:56'),
(71, 105, 105, 2, '', '5.0', '2017-12-21 05:50:51'),
(72, 113, 113, 2, '', '5.0', '2018-02-06 03:55:34'),
(73, 114, 114, 2, '', '5.0', '2018-02-06 03:55:43'),
(74, 115, 115, 2, '', '5.0', '2018-02-06 03:55:54'),
(75, 116, 116, 2, '', '5.0', '2018-02-06 03:56:03'),
(76, 117, 117, 2, '', '5.0', '2018-02-08 04:50:00'),
(77, 119, 119, 2, 'Awesome!', '5.0', '2018-02-11 21:05:54'),
(78, 120, 120, 2, '', '5.0', '2018-02-11 23:44:32'),
(79, 121, 121, 2, 'She was great!', '5.0', '2018-02-12 03:11:58'),
(80, 124, 124, 2, 'Great', '5.0', '2018-02-13 04:32:44'),
(81, 125, 125, 2, 'Great', '5.0', '2018-02-13 04:32:54'),
(82, 126, 126, 2, '', '5.0', '2018-02-14 01:28:53'),
(83, 127, 127, 2, '', '5.0', '2018-02-14 01:29:01'),
(84, 128, 128, 2, 'Great!', '5.0', '2018-02-14 14:10:22'),
(85, 135, 135, 2, '', '5.0', '2018-02-19 20:15:54'),
(86, 136, 136, 2, '', '5.0', '2018-02-20 03:44:11'),
(87, 129, 129, 2, '', '5.0', '2018-02-21 04:37:11'),
(88, 130, 130, 2, '', '5.0', '2018-02-21 04:37:22'),
(89, 131, 131, 2, '', '5.0', '2018-02-21 04:37:32'),
(90, 137, 137, 2, '', '5.0', '2018-02-21 23:25:59'),
(91, 138, 138, 2, '', '5.0', '2018-02-21 23:26:09'),
(92, 132, 132, 3, '', '5.0', '2018-02-21 23:32:43'),
(93, 139, 139, 2, '', '5.0', '2018-02-22 00:34:23'),
(94, 133, 133, 3, '', '5.0', '2018-02-22 03:33:40'),
(95, 134, 134, 2, '', '5.0', '2018-02-23 00:11:51'),
(96, 140, 140, 2, 'She was super great!', '5.0', '2018-02-27 15:56:12'),
(97, 141, 141, 3, '', '5.0', '2018-03-01 19:12:07'),
(98, 142, 142, 2, '', '5.0', '2018-03-14 06:11:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `schedule`
-- (See below for the actual view)
--
CREATE TABLE `schedule` (
);

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
('6501c23d69e5a80d23e7c366bdb0b4bd08aab0fb', 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'YTo1OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NjoiaHR0cDovL2xvY2FsaG9zdC9yb3NpZXMvcHVibGljL2FydGljbGUvYXJjaGl2ZSI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6ImoxZGY5MDNzc2dOVmYzcURrNzdSUHpyR1VXMUtOemx3M1cwemxkZWgiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MzM0OTcwNjg7czoxOiJjIjtpOjE1MzM0OTQzNDA7czoxOiJsIjtzOjE6IjAiO319', 1533497068);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_available` date NOT NULL COMMENT 'Date of availability',
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `user_id`, `date_available`, `time_in`, `time_out`, `created_at`) VALUES
(1, 1, '2017-08-31', '08:00:00', '12:00:00', '2017-08-27 14:08:48'),
(2, 2, '2017-08-31', '16:30:00', '19:30:00', '2017-08-27 14:09:17'),
(3, 3, '2017-08-31', '09:00:00', '17:00:00', '2017-08-27 14:09:25'),
(4, 1, '2017-09-05', '08:00:00', '12:00:00', '2017-09-05 03:01:36'),
(5, 1, '2017-09-06', '08:00:00', '12:00:00', '2017-08-27 14:12:07'),
(6, 3, '2017-09-06', '09:30:00', '17:00:00', '2017-09-05 03:13:03'),
(7, 1, '2017-09-07', '08:00:00', '12:00:00', '2017-08-27 14:13:59'),
(8, 3, '2017-09-07', '09:00:00', '17:00:00', '2017-08-27 14:16:06'),
(9, 1, '2017-09-08', '08:00:00', '12:00:00', '2017-08-27 14:18:13'),
(10, 2, '2017-09-08', '09:00:00', '19:30:00', '2017-08-27 14:18:50'),
(11, 2, '2017-09-09', '09:00:00', '16:30:00', '2017-08-27 14:19:38'),
(12, 2, '2017-09-10', '09:00:00', '16:30:00', '2017-08-27 14:20:08'),
(13, 2, '2017-08-29', '09:00:00', '21:00:00', '2017-08-27 14:04:45'),
(14, 3, '2017-08-30', '09:00:00', '17:00:00', '2017-08-27 14:07:32'),
(15, 1, '2017-08-30', '08:00:00', '12:00:00', '2017-08-27 14:06:42'),
(16, 2, '2017-08-30', '16:30:00', '19:30:00', '2017-08-27 14:07:03'),
(17, 3, '2017-09-14', '09:00:00', '16:30:00', '2017-09-14 02:48:26'),
(18, 2, '2017-09-15', '09:00:00', '18:00:00', '2017-09-14 02:48:58'),
(19, 2, '2017-09-16', '09:00:00', '16:30:00', '2017-09-14 02:50:27'),
(20, 2, '2017-09-17', '09:00:00', '16:30:00', '2017-09-14 02:51:06'),
(21, 1, '2017-09-15', '09:00:00', '12:00:00', '2017-09-14 03:25:33'),
(22, 4, '2017-09-21', '09:00:00', '17:00:00', '2017-09-21 04:24:17'),
(23, 2, '2017-09-22', '08:00:00', '17:30:00', '2017-09-21 04:25:47'),
(24, 3, '2017-09-22', '10:00:00', '17:30:00', '2017-09-21 04:26:48'),
(25, 2, '2017-09-23', '08:00:00', '17:00:00', '2017-09-21 04:27:12'),
(26, 3, '2017-09-27', '09:00:00', '17:30:00', '2017-09-26 02:37:35'),
(27, 2, '2017-09-28', '09:00:00', '17:30:00', '2017-09-26 02:38:05'),
(28, 3, '2017-09-29', '09:00:00', '17:30:00', '2017-09-26 02:55:16'),
(29, 4, '2017-09-28', '09:00:00', '15:00:00', '2017-09-28 04:13:13'),
(30, 2, '2017-10-05', '09:00:00', '17:00:00', '2017-10-05 04:05:11'),
(31, 3, '2017-10-05', '09:00:00', '17:00:00', '2017-10-05 04:05:33'),
(32, 3, '2017-10-06', '09:00:00', '17:00:00', '2017-10-05 04:15:38'),
(33, 2, '2017-10-07', '09:00:00', '18:00:00', '2017-10-07 04:47:20'),
(34, 2, '2017-10-16', '09:00:00', '19:00:00', '2017-10-15 04:06:56'),
(35, 2, '2017-10-17', '09:00:00', '19:00:00', '2017-10-15 04:07:36'),
(36, 2, '2017-10-18', '09:00:00', '19:00:00', '2017-10-15 04:07:54'),
(37, 2, '2017-10-19', '09:00:00', '19:00:00', '2017-10-15 04:08:12'),
(38, 3, '2017-10-18', '10:00:00', '18:00:00', '2017-10-18 03:39:32'),
(39, 3, '2017-10-20', '09:30:00', '18:00:00', '2017-10-18 03:40:01'),
(40, 2, '2017-10-23', '09:00:00', '21:00:00', '2017-10-22 15:24:24'),
(41, 2, '2017-10-24', '09:00:00', '21:00:00', '2017-10-22 15:25:39'),
(42, 3, '2017-10-25', '09:00:00', '17:00:00', '2017-10-22 15:26:31'),
(43, 2, '2017-10-25', '09:00:00', '21:00:00', '2017-10-22 15:26:59'),
(44, 2, '2017-10-22', '09:00:00', '21:00:00', '2017-10-22 15:49:25'),
(45, 2, '2017-10-28', '09:00:00', '18:00:00', '2017-10-27 23:30:37'),
(46, 2, '2017-10-29', '09:00:00', '18:00:00', '2017-10-27 23:30:54'),
(47, 3, '2017-10-29', '09:00:00', '18:00:00', '2017-10-27 23:38:29'),
(48, 2, '2017-10-30', '09:00:00', '20:00:00', '2017-10-29 15:19:05'),
(49, 2, '2017-10-31', '09:00:00', '20:00:00', '2017-10-29 15:19:23'),
(50, 2, '2017-11-01', '09:00:00', '20:00:00', '2017-10-29 15:19:42'),
(51, 2, '2017-11-06', '11:00:00', '20:00:00', '2017-11-06 05:34:25'),
(52, 2, '2017-11-07', '09:00:00', '17:00:00', '2017-11-06 05:34:43'),
(53, 3, '2017-11-08', '09:00:00', '19:00:00', '2017-11-08 04:50:42'),
(54, 2, '2017-11-09', '09:00:00', '19:00:00', '2017-11-08 04:50:36'),
(55, 3, '2017-11-10', '09:00:00', '19:00:00', '2017-11-08 04:50:47'),
(56, 2, '2017-11-10', '11:00:00', '19:00:00', '2017-11-08 04:52:31'),
(57, 2, '2017-11-13', '09:00:00', '18:00:00', '2017-11-13 03:19:20'),
(58, 2, '2017-11-14', '09:00:00', '18:00:00', '2017-11-13 03:23:44'),
(59, 2, '2017-11-15', '09:00:00', '18:00:00', '2017-11-13 03:24:17'),
(60, 2, '2017-11-16', '09:00:00', '18:00:00', '2017-11-13 03:24:17'),
(61, 2, '2017-11-17', '09:00:00', '18:00:00', '2017-11-13 04:05:21'),
(62, 3, '2017-11-15', '09:00:00', '17:30:00', '2017-11-13 04:05:56'),
(63, 3, '2017-11-17', '09:00:00', '17:30:00', '2017-11-13 04:06:10'),
(64, 2, '2017-11-20', '09:00:00', '18:00:00', '2017-11-19 16:56:27'),
(65, 2, '2017-11-21', '09:00:00', '18:00:00', '2017-11-19 16:57:09'),
(66, 2, '2017-11-22', '09:00:00', '18:00:00', '2017-11-19 16:57:09'),
(67, 2, '2017-11-24', '09:00:00', '18:00:00', '2017-11-19 16:57:48'),
(68, 2, '2017-11-27', '09:00:00', '19:00:00', '2017-11-27 06:34:21'),
(69, 2, '2017-11-28', '09:00:00', '19:00:00', '2017-11-27 06:34:21'),
(70, 2, '2017-11-29', '09:00:00', '19:00:00', '2017-11-27 06:37:54'),
(71, 2, '2017-11-30', '09:00:00', '19:00:00', '2017-11-27 06:37:54'),
(72, 2, '2017-12-01', '09:00:00', '19:00:00', '2017-11-30 04:20:36'),
(73, 2, '2017-12-12', '09:00:00', '19:00:00', '2017-12-19 06:47:23'),
(74, 2, '2017-12-20', '09:00:00', '19:00:00', '2017-12-19 06:47:36'),
(75, 2, '2017-12-21', '09:00:00', '19:00:00', '2017-12-19 06:48:39'),
(76, 2, '2017-12-23', '09:00:00', '19:00:00', '2017-12-19 06:48:49'),
(77, 2, '2017-12-24', '09:00:00', '19:00:00', '2017-12-22 18:45:37'),
(78, 3, '2017-12-25', '09:00:00', '19:00:00', '2017-12-22 18:45:59'),
(79, 2, '2018-01-10', '09:00:00', '19:00:00', '2018-01-09 03:07:52'),
(80, 3, '2018-01-10', '09:00:00', '19:00:00', '2018-01-09 03:07:52'),
(81, 2, '2018-01-12', '09:00:00', '19:00:00', '2018-01-09 03:08:32'),
(82, 3, '2018-01-12', '09:00:00', '19:00:00', '2018-01-09 03:08:32'),
(83, 2, '2018-01-19', '09:00:00', '19:00:00', '2018-01-17 05:16:35'),
(84, 2, '2018-01-22', '09:00:00', '19:00:00', '2018-01-22 00:16:46'),
(85, 2, '2018-01-23', '09:00:00', '19:00:00', '2018-01-22 00:16:46'),
(86, 2, '2018-01-24', '09:00:00', '19:00:00', '2018-01-22 00:17:55'),
(87, 3, '2018-01-24', '09:00:00', '19:00:00', '2018-01-22 00:22:48'),
(88, 2, '2018-01-25', '09:00:00', '19:00:00', '2018-01-24 14:53:35'),
(89, 2, '2018-01-26', '09:00:00', '19:00:00', '2018-01-24 14:53:35'),
(90, 2, '2018-02-04', '09:00:00', '19:00:00', '2018-02-03 04:14:47'),
(91, 2, '2018-02-05', '09:00:00', '19:00:00', '2018-02-03 04:14:47'),
(92, 2, '2018-02-06', '09:00:00', '19:00:00', '2018-02-04 17:23:42'),
(93, 2, '2018-02-07', '09:00:00', '19:00:00', '2018-02-04 17:23:42'),
(94, 2, '2018-02-08', '09:00:00', '19:00:00', '2018-02-04 17:50:34'),
(95, 2, '2018-02-09', '09:00:00', '19:00:00', '2018-02-07 03:59:06'),
(96, 3, '2018-02-09', '09:00:00', '19:00:00', '2018-02-07 03:59:44'),
(97, 2, '2018-02-10', '09:00:00', '19:00:00', '2018-02-09 23:17:59'),
(98, 2, '2018-02-11', '09:00:00', '19:00:00', '2018-02-09 23:18:32'),
(99, 2, '2018-02-14', '09:00:00', '19:00:00', '2018-02-11 20:07:27'),
(100, 2, '2018-02-12', '09:00:00', '19:00:00', '2018-02-11 20:07:43'),
(101, 2, '2018-02-13', '09:00:00', '19:00:00', '2018-02-11 20:07:58'),
(102, 2, '2018-02-15', '09:00:00', '19:00:00', '2018-02-11 20:08:17'),
(103, 2, '2018-02-16', '09:00:00', '19:00:00', '2018-02-11 20:08:38'),
(104, 2, '2018-02-19', '09:00:00', '19:00:00', '2018-02-17 16:39:52'),
(105, 2, '2018-02-20', '09:00:00', '19:00:00', '2018-02-17 16:40:21'),
(106, 2, '2018-02-21', '09:00:00', '19:00:00', '2018-02-17 16:40:44'),
(107, 2, '2018-02-22', '09:00:00', '19:00:00', '2018-02-17 16:42:57'),
(108, 2, '2018-02-23', '09:00:00', '19:00:00', '2018-02-17 16:43:18'),
(109, 3, '2018-02-21', '09:30:00', '17:30:00', '2018-02-17 17:37:39'),
(110, 2, '2018-02-26', '09:00:00', '19:00:00', '2018-02-24 05:18:20'),
(111, 2, '2018-02-27', '09:00:00', '19:00:00', '2018-02-24 05:18:43'),
(112, 2, '2018-02-28', '09:00:00', '19:00:00', '2018-02-24 05:19:01'),
(113, 3, '2018-02-28', '09:00:00', '19:00:00', '2018-02-24 05:25:37'),
(114, 2, '2018-03-13', '09:00:00', '19:00:00', '2018-03-09 08:24:30'),
(115, 2, '2018-03-14', '09:00:00', '19:00:00', '2018-03-09 08:27:46'),
(116, 3, '2018-03-14', '10:00:00', '16:00:00', '2018-03-09 08:41:12'),
(117, 2, '2018-03-20', '09:00:00', '20:00:00', '2018-03-19 21:18:31'),
(118, 2, '2018-03-21', '09:00:00', '20:00:00', '2018-03-19 21:19:08'),
(119, 3, '2018-03-21', '09:00:00', '17:00:00', '2018-03-19 21:19:20'),
(120, 2, '2018-03-28', '09:00:00', '19:00:00', '2018-03-27 00:44:36'),
(121, 2, '2018-03-29', '09:00:00', '19:00:00', '2018-03-27 00:44:45'),
(122, 4, '2018-04-10', '09:00:00', '19:00:00', '2018-04-10 12:14:12'),
(123, 3, '2018-04-10', '09:00:00', '19:00:00', '2018-04-10 14:20:20'),
(124, 3, '2018-04-12', '09:00:00', '19:00:00', '2018-04-11 15:47:14'),
(125, 6, '2018-08-05', '09:00:00', '19:00:00', '2018-08-05 08:55:38');

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
(5, 1, 'Administrator', 'Administrator', 'demo@gmail.com', 'demo', '$2y$10$QfpM2LqUv7hVoqPT6exN0Oh2ZfMHgBI3c8ycW./uobJr74cqHjHyC', NULL, '', 1, '7G3hSw4tFIN5VF2nqisDFRo1itiJKiEcTyYlfGtM2DxnEYPNMxdogl2GlKk5', '2018-08-05 19:13:38', '2018-08-05 06:13:38'),
(6, 2, 'Asdasd', 'Asdasda', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-08-01 17:44:11', '2018-08-01 17:44:11');

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
(1, 'administrator'),
(2, 'cleaner');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_booking_stats`
-- (See below for the actual view)
--
CREATE TABLE `view_booking_stats` (
`client_id` int(11)
,`confirmed` decimal(23,0)
,`pending` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Structure for view `schedule`
--
DROP TABLE IF EXISTS `schedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`adminrosie`@`localhost` SQL SECURITY DEFINER VIEW `schedule`  AS  select `b`.`booking_id` AS `booking_id`,`c`.`fullname` AS `client`,`c`.`address` AS `address`,`e`.`firstname` AS `cleaner`,`t`.`date_available` AS `date`,`b`.`schedule_start` AS `schedule_start`,`b`.`schedule_end` AS `schedule_end`,`b`.`price` AS `price`,`b`.`need_supplies` AS `need_supplies`,`b`.`instructions` AS `instructions`,`b`.`is_confirmed` AS `is_confirmed`,`b`.`for_review` AS `for_review`,`b`.`confirmed_at` AS `confirmed_at`,`b`.`created_at` AS `created_at` from (((`booking` `b` left join `timetable` `t` on((`b`.`timetable_id` = `t`.`timetable_id`))) left join `employee` `e` on((`t`.`employee_id` = `e`.`employee_id`))) left join `client` `c` on((`b`.`client_id` = `c`.`client_id`))) order by `t`.`date_available` ;

-- --------------------------------------------------------

--
-- Structure for view `view_booking_stats`
--
DROP TABLE IF EXISTS `view_booking_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`adminrosie`@`localhost` SQL SECURITY DEFINER VIEW `view_booking_stats`  AS  select `booking`.`client_id` AS `client_id`,sum((case when (`booking`.`is_confirmed` = 1) then 1 else 0 end)) AS `confirmed`,sum((case when (`booking`.`is_confirmed` = 0) then 1 else 0 end)) AS `pending` from `booking` where ((month(`booking`.`created_at`) = month(now())) and (year(`booking`.`created_at`) = year(now()))) group by `booking`.`client_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `distance_map`
--
ALTER TABLE `distance_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `distance_map`
--
ALTER TABLE `distance_map`
  MODIFY `map_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
