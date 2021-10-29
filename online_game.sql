-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 02:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories_game_fact`
--

CREATE TABLE `categories_game_fact` (
  `category_key` char(32) NOT NULL,
  `game_key` char(32) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories_game_fact`
--

INSERT INTO `categories_game_fact` (`category_key`, `game_key`, `time_created`, `time_updated`) VALUES
('32d47d3ca86c4019897d461a07d7820f', '58d26fe5f388433d93f00a3bc9928f43', '2021-10-27 13:13:17', NULL),
('53b43bffe47941a9ab99b10a7388d5f4', '58d26fe5f388433d93f00a3bc9928f43', '2021-10-27 13:13:17', NULL),
('53b43bffe47941a9ab99b10a7388d5f4', 'e251390382fa4158b7bbdb2c8595c170', '2021-10-27 13:12:33', NULL),
('566e2f586d664462b4b019a8f40d7e84', '24b80016690244e48196fcec17673e19', '2021-10-27 13:10:49', NULL),
('566e2f586d664462b4b019a8f40d7e84', '3dee4caebc234f49831b39029e5b84cb', '2021-10-27 13:11:02', NULL),
('d10e2a0bd6be4eb68035da44ea0a4286', '3dee4caebc234f49831b39029e5b84cb', '2021-10-27 13:11:02', NULL),
('d10e2a0bd6be4eb68035da44ea0a4286', '6969627b7b124f2b95bc2c5d9595afef', '2021-10-27 13:14:42', NULL),
('d10e2a0bd6be4eb68035da44ea0a4286', 'e251390382fa4158b7bbdb2c8595c170', '2021-10-27 13:12:33', NULL),
('e6d5e0de9f5949aaac081069aeec3f02', '58d26fe5f388433d93f00a3bc9928f43', '2021-10-27 13:13:17', NULL),
('e6d5e0de9f5949aaac081069aeec3f02', 'e251390382fa4158b7bbdb2c8595c170', '2021-10-27 13:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_dim`
--

CREATE TABLE `category_dim` (
  `key` char(32) NOT NULL,
  `name` varchar(225) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_dim`
--

INSERT INTO `category_dim` (`key`, `name`, `time_created`, `time_updated`) VALUES
('32d47d3ca86c4019897d461a07d7820f', 'RPG', '2021-10-27 13:13:17', NULL),
('53b43bffe47941a9ab99b10a7388d5f4', 'Indie', '2021-10-27 13:12:33', NULL),
('566e2f586d664462b4b019a8f40d7e84', 'Action', '2021-10-27 13:10:49', NULL),
('d10e2a0bd6be4eb68035da44ea0a4286', 'Adventure', '2021-10-27 13:11:02', NULL),
('e6d5e0de9f5949aaac081069aeec3f02', 'Strategy', '2021-10-27 13:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `date_dim`
--

CREATE TABLE `date_dim` (
  `key` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `month_name` varchar(10) NOT NULL,
  `day` int(11) NOT NULL,
  `day_of_week` varchar(10) NOT NULL,
  `fulldate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `date_dim`
--

INSERT INTO `date_dim` (`key`, `year`, `month`, `month_name`, `day`, `day_of_week`, `fulldate`) VALUES
(20211001, 2021, 10, 'October', 1, 'Friday', '2021-10-01'),
(20211002, 2021, 10, 'October', 2, 'Saturday', '2021-10-02'),
(20211003, 2021, 10, 'October', 3, 'Sunday', '2021-10-03'),
(20211004, 2021, 10, 'October', 4, 'Monday', '2021-10-04'),
(20211005, 2021, 10, 'October', 5, 'Tuesday', '2021-10-05'),
(20211006, 2021, 10, 'October', 6, 'Wednesday', '2021-10-06'),
(20211007, 2021, 10, 'October', 7, 'Thursday', '2021-10-07'),
(20211008, 2021, 10, 'October', 8, 'Friday', '2021-10-08'),
(20211009, 2021, 10, 'October', 9, 'Saturday', '2021-10-09'),
(20211010, 2021, 10, 'October', 10, 'Sunday', '2021-10-10'),
(20211011, 2021, 10, 'October', 11, 'Monday', '2021-10-11'),
(20211012, 2021, 10, 'October', 12, 'Tuesday', '2021-10-12'),
(20211013, 2021, 10, 'October', 13, 'Wednesday', '2021-10-13'),
(20211014, 2021, 10, 'October', 14, 'Thursday', '2021-10-14'),
(20211015, 2021, 10, 'October', 15, 'Friday', '2021-10-15'),
(20211016, 2021, 10, 'October', 16, 'Saturday', '2021-10-16'),
(20211017, 2021, 10, 'October', 17, 'Sunday', '2021-10-17'),
(20211018, 2021, 10, 'October', 18, 'Monday', '2021-10-18'),
(20211019, 2021, 10, 'October', 19, 'Tuesday', '2021-10-19'),
(20211020, 2021, 10, 'October', 20, 'Wednesday', '2021-10-20'),
(20211021, 2021, 10, 'October', 21, 'Thursday', '2021-10-21'),
(20211022, 2021, 10, 'October', 22, 'Friday', '2021-10-22'),
(20211023, 2021, 10, 'October', 23, 'Saturday', '2021-10-23'),
(20211024, 2021, 10, 'October', 24, 'Sunday', '2021-10-24'),
(20211025, 2021, 10, 'October', 25, 'Monday', '2021-10-25'),
(20211026, 2021, 10, 'October', 26, 'Tuesday', '2021-10-26'),
(20211027, 2021, 10, 'October', 27, 'Wednesday', '2021-10-27'),
(20211028, 2021, 10, 'October', 28, 'Thursday', '2021-10-28'),
(20211029, 2021, 10, 'October', 29, 'Friday', '2021-10-29'),
(20211030, 2021, 10, 'October', 30, 'Saturday', '2021-10-30'),
(20211031, 2021, 10, 'October', 31, 'Sunday', '2021-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `developer_dim`
--

CREATE TABLE `developer_dim` (
  `key` char(32) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developer_dim`
--

INSERT INTO `developer_dim` (`key`, `id`, `name`, `time_created`, `time_updated`) VALUES
('1a39407c03a0439db91abc57291f62f1', 3, 'Amazon Games', '2021-10-27 13:11:12', NULL),
('229f5f0e140c4bbcb7ba628e41a18c67', 4, 'Daniel Mullins Games', '2021-10-27 13:12:33', NULL),
('6aa9a4ece45d40b2809f136759bb3e60', 6, 'Supermassive Games', '2021-10-27 13:14:41', NULL),
('76b12c58dc4f4e08a8edf333c5e111f3', 5, 'One Up Plus', '2021-10-27 13:13:17', NULL),
('a4ac2cd2b33d4301b3a1fafa6996448e', 1, 'Turtle Rock Studios', '2021-10-27 13:10:28', NULL),
('ea62e78e56e949918c2eed1403813531', 2, 'Eidos-Montréal', '2021-10-27 13:11:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_dim`
--

CREATE TABLE `game_dim` (
  `key` char(32) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `developer_key` char(32) NOT NULL,
  `release_key` int(11) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_dim`
--

INSERT INTO `game_dim` (`key`, `id`, `name`, `developer_key`, `release_key`, `time_created`, `time_updated`) VALUES
('24b80016690244e48196fcec17673e19', 924970, 'Back 4 Blood', 'a4ac2cd2b33d4301b3a1fafa6996448e', 20211012, '2021-10-27 13:10:49', NULL),
('3dee4caebc234f49831b39029e5b84cb', 1088850, 'Marvel\'s Guardians of the Galaxy', 'ea62e78e56e949918c2eed1403813531', 20211026, '2021-10-27 13:11:02', NULL),
('58d26fe5f388433d93f00a3bc9928f43', 1531250, 'Defend the Rook', '76b12c58dc4f4e08a8edf333c5e111f3', 20211026, '2021-10-27 13:13:17', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 1281590, 'The Dark Pictures Anthology: House of Ashes', '6aa9a4ece45d40b2809f136759bb3e60', 20211021, '2021-10-27 13:14:41', NULL),
('e251390382fa4158b7bbdb2c8595c170', 1092790, 'Inscryption', '229f5f0e140c4bbcb7ba628e41a18c67', 20211019, '2021-10-27 13:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_fact`
--

CREATE TABLE `reviews_fact` (
  `game_key` char(32) NOT NULL,
  `user_key` char(32) NOT NULL,
  `date_key` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_content` text NOT NULL,
  `current` tinyint(1) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews_fact`
--

INSERT INTO `reviews_fact` (`game_key`, `user_key`, `date_key`, `rating`, `review_content`, `current`, `time_created`, `time_updated`) VALUES
('24b80016690244e48196fcec17673e19', '01e5f17c4dc8410fbeb4ed9e04d9fcdc', 20211026, 1, 'Great game!', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '0b5eac78176147689b4a51ce9a3f0c03', 20211029, 1, 'Product received for free\r\n																I like this game, I do. However if you want to play this game make sure you get your friend(s) a copy too or have them buy it, because running public lobbies in this game is almost impossible. You either have people rushing through the level and dying and they blame you, or they don\'t mind the hazards at all. Its evident you need teamwork in this game, something rare to find in ANY public lobby.', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', '10a96f0c0bae46099e85ec15e18e62b1', 20211026, 1, 'Gives off the vibes of the old series with a new twist, extremly fun and even more fun with friends', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '19b803829a9e4f888b8c87f235a79be1', 20211027, 1, 'Pik up gun, kill thousands of ridden, watch ur fren get mauled by hag; rinse and repeat', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', '1bc701fd571341e49f94cc9d108e51b1', 20211029, 1, 'Seriously so much fun! If you ever need to let out a bit of steam,just hop on and clobber some zombies! The melee is my favorite part!', 1, '2021-10-29 19:05:32', NULL),
('24b80016690244e48196fcec17673e19', '2b18bd73390a403e8e579df861e93a5d', 20211029, 1, 'not good not bad, recommend because of zombies', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', '35c5566eeebf40beb5962827efde3b92', 20211026, 1, 'Left 4 Dead 2 ReplacementIf you\'re gonna be honest with yourself, you bought this game \'cause you missed L4D2; you missed thinking you were the best ai killer on a team co-op game ( ͡° ͜ʖ ͡°)  Or maybe you grew up playing this on Xbox and miss playing with bad console players and hearing their babies crying in the background, through their poor quality mics. Either way, this game won\'t disappoint. Characters+ I enjoy three characters: Karlee, Holly, and Hoffman. Karlee (bae) is basically a model geared up with a Hot Topic edge lord starter kit, whose personality comes out of a 90\'s, 2000\'s teen horror film; she barely shows any emotion and sounds cold as ice, aside from when she throws grenades \'cause her voice sounds like a weird bird/cat in distress: \"InCoMinG!! \"LoOK OuT!!\" She\'s fierce, so she gets a pass. Holly is basically female Ellis with an IQ over 7, and Hoffman is the Kkona conspiracy theorist; as a plus size gentleman, he\'s more likable than L4D2\'s Coach in his own ways, or at least on par with his personality. - All the other characters are/have cringe personalities, bland, and just plain boring. Evangelo acts like he\'s fourteen, Doc has a made up accent which sounds like a mix between South African, Posh English, etc. but sounds nothing like a Singaporean accent. Walker has three to four unintentionally funny lines, but his PTSD makes him droll. Introverted Jim spends more time talking to animals than people it seems, which suits his character fine, but not for this game. + You can customise your character\'s outfit; it\'s hit or miss, some of the outfits are meh... Same with guns, banners, etc. The sprays and banners are pretty sweet, though, incorporating popular internet memes. Karlee gets a cosmetic where she\'s bald, so that\'s 10/10 customisation.Sound -The sound is trash in this game; maybe a 6.5/10. You can\'t hear zombies coming at you most of the time. In L4D2, you couldn\'t hear specials if you moved too quickly through the map; here, you just get smacked out of the blue \'cause zombies\' footsteps don\'t have sound. The music makes the game feel boring, plain and simple; terrible chapter completion music. As for the jukebox music in a certain chapter, it plays kkona music so loud and you don\'t have the option of turning it off. That chapter gives secondhand embarrassment \'cause of how corny it is and you have to suffer through it.BUGS/GLITCHES-Phantom bullets: you shoot, you see recoil, but nothing comes outta your gun. Sometimes you spam fire, but nothing comes out of your gun until the fifth shot. Special infected, ridden, whatever, go through and into the ground, rocks, etc. It\'s embarrassing. If you use combat knife as your melee and then switch to your firearm, the animations turn to soup and you hold both weapons awkwardly. A problem that the devs acknowledge and have yet to fix, is starting the next chapter in an act with an unloaded secondary weapon. Gameplay -Animations are CoD like, and the movement is stiff; the game feels unfinished at times with some of its abrupt and budget cutscenes.+The card system is the best part of the game: you can play shotgun, melee, medic, money builds, etc. and everything in between :) So for those coming from L4D2 thinking it\'s the same experience, they\'re in for a rude awakening. +Copper is the game\'s currency; you use it to buy cards, weapon attachments, health, etc. in the game, especially at the beginning of a chapter. It makes planning for higher difficulties interesting and fun.- The game doesn\'t use Source engine, it just feels weird in a game like this. Everyone and their granny would agree; some people say it feels smoother, though ¯\\_(ツ)_/¯DifficultyI honestly think everyone will get what they want. It\'s a shame there\'s no \"Realism\" mode, though. People shouldn\'t start the game in veteran; doesn\'t matter how many games they play. Otherwise it\'ll be backpack simulator for those who worked up to that difficulty. Nightmare is basically reserved for players who\'ve unlocked every card in the game, and have players on their team who know what they\'re doing. Conclusion Easily recommended: 8/10. Not L4D2, but just as fun. NO COMMUNITY MODS, just incoming DLC, and that\'s a GOOD THING. \"The mods are what keep the game alive\" is every die hard L4D2 person\'s reason for playing that game. With this game, hopefully the devs keep investing in content for the next 5 years instead of letting it rot and cancelling a potential sequel.', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '4347bb8a782a4153afbf8a7656184f20', 20211029, 1, 'NAH', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', '4fd413226f074ba5bb8036f10cec679f', 20211028, 1, 'Really good game, fast-paced and the graphics are pretty incredible! I will same the AI takes most of the kills lol', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', '5355ba25ef0f4375b6418c1cd1cb9391', 20211028, 1, '⠄⠄⣿⣿⣿⣿⠘⡿⢛⣿⣿⣿⣿⣿⣧⢻⣿⣿⠃⠸⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⣿⣿⣿⣿⢀⠼⣛⣛⣭⢭⣟⣛⣛⣛⠿⠿⢆⡠⢿⣿⣿⠄⠄⠄⠄⠄⠄⠄⠸⣿⣿⢣⢶⣟⣿⣖⣿⣷⣻⣮⡿⣽⣿⣻⣖⣶⣤⣭⡉⠄⠄⠄⠄⠄⠄⠄⠄⢹⠣⣛⣣⣭⣭⣭⣁⡛⠻⢽⣿⣿⣿⣿⢻⣿⣿⣿⣽⡧⡄⠄⠄⠄⠄⠄⠄⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣶⣌⡛⢿⣽⢘⣿⣷⣿⡻⠏⣛⣀⠄⠄⠄⠄⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠙⡅⣿⠚⣡⣴⣿⣿⣿⡆⠄⠄⠄⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠄⣱⣾⣿⣿⣿⣿⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠣⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠑⣿⣮⣝⣛⠿⠿⣿⣿⣿⣿⠄⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', '563b37a3eced4ff0b4d56310c6adbe03', 20211029, 1, 'Despite what all the L4D babies think, this game is extremely fun especially with friends. Matchmaking is a little messed up at times and there are definitely some QoL changes that should be done as well as some balancing issues but overall it is a fun co op zombie shooter that encourages teamwork. L4D and L4D2 were great games don\'t get me wrong but this game is also good and given some time and a little polish it can be better than L4D was.', 1, '2021-10-29 19:05:32', NULL),
('24b80016690244e48196fcec17673e19', '5b9779c09015433582cf20ad04668bed', 20211029, 1, 'fun', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', '72eb8581c66d473e9a4d441b317e1e06', 20211029, 1, 'Wait for sale, it worth around RM140 for this game. Don\'t get me wrong is a good game but not worth RM200.', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', '7684654e1e374bdd94561b7e38611f8b', 20211028, 0, 'I bought this game thinking it was going to be quick fun like L4D, and it was really expensive and I was really disappointed with it and regret the money I lost on it.the reasons why I hate it:1-the card system, I totally hate it2-during the game I ran out of bullets and my team was random and I couldn\'t tell them that i\'m out of bullets3-the statistics on each upgrade is just too much, I wanna have fun shooting zombies not calculating statistics of each upgrade part and card4-the giant enemies are a waste of bullets, you just unload clip after clip on them without knowing if you are doing any damage5-I have to be always online, and Can\'t mod it or put different skins or stagesif you like L4D and WWZ, you won\'t like this one, steer clear', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', '77aaf1d84caa46ba90ace3490e11eb89', 20211028, 1, 'its pretty good. wish the gun system worked differently', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', '80283e22c83a403596de2815db22136e', 20211027, 1, 'Great with friends, looks like a lot of customizability on game play and the addition of cards for modifying each run is interesting.', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', '835c563393f34476b82f78dc649fb1ff', 20211027, 0, 'Creeping up on thirty hours in-game, I really want to like and recommend this game, but I cannot in good faith do that.Tl;dr: It\'s fun when it works and you have a group of friends to play with. It wasn\'t ready for release, and it\'s definitely not good for price. Pick it up if it gets the issues patched/rebalanced and the price dropped.Longer version:I\'m going to be talking about Campaign pretty much entirely, because that\'s what I\'ve played and usually play in these sorts of games. And I\'m going to reference L4D because I\'ve played that extensively and it\'s used as reference in their marketing so... yeah.The game is fun when it works. As many have mentioned the bots are so buggy as to be downright useless sometimes. Bots get caught on rare and strange phenomena such as Small Pile of Dirt and Fence, and they seem instinctively attracted to killing Special Ridden at the worst moment, resulting in a player being yeeted into the sea from the blast or covered in Ridden-attractive mucous while pinned by enemies. And even playing with humans there are glitches ranging from simple achievements not dinging to being randomly booted to control a Bot or even prompted to spawn Ridden (???). Just quality of life things that will crop up every other round or so and make you either sigh or groan and maybe quit the game.Tone and gameplay-wise, this game isn\'t L4D but even knowing that going in the game feels kind of pulled in different directions. One of L4D\'s greatest points was the development of rapport and in-jokes between the characters, like Francis\' \"I hate X\" and Nick being less of a jerk to everyone, which meant that the characters felt different even when in gameplay they were the same. It didn\'t have to be comedic, it just had to feel like there was something.B4B\'s characters are all different in terms of gameplay, with different traits and buffs they add to the team. And while this adds customisability to gameplay, I found it actually removed enjoyment overall. This is because it means you tend to find yourself playing the same characters repeatedly because you like the playstyle, even if you hate the character. Alternatively, a character may tick you off so much (looking at you Karlee) that even if the playstyle works for you you just avoid them. Add this to little character development and what sounds like a smaller pool of voicelines and the characters end up feeling kind of isolated from one another rather than a real team as they try to portray. And they feel a bit flat and empty in general.Also the different classes issue wombo-comboes with the Card system, where you slowly build a deck by hitting some achievements and paying Supply Points (earned at the end of rounds played with other people) to buy your way through the Supply Lines. But this comes back to bite you because, for instance, if you like playing healer support like me and someone else picks Doc, you might be screwed because you\'ve been buying supply lines based on that and have made a deck based on that. You probably have some cards in your inventory that will work, sure, but they aren\'t in a deck so you can\'t use them. L4D it didn\'t matter if your favourite character got picked because they were all functionally the same. And oh, the Supply Points. You can\'t earn them solo, you *have* to play online, and you get fewer of them if you play on the easy difficulty. Fine, you might say, just play on Medium but the balance and scaling in this game is majorly busted to the point of not even being funny. It could be fun and challenging, but then you get a glitch and the run is lost. It\'s immensely frustrating, and combined with the one-new-card-a-round system it\'s just a complete pain. There\'s no way to increase that, by the way. All additional objectives offer copper and a couple more Supply Points. You can find cards or buy offered cards during levels but it\'s really not what\'s needed to fix the issue at hand.So you grind... on the same maps in the lower difficulty. The repetition sets in. You can play with friends and have fun, yeah, but you learn the maps pretty quick and the amount of \"additional\" dialogue feels pretty thin on the ground. In L4D you could have conversations between characters before leaving saferooms or observations made in the field, little quips about the world before the fall, and the closest thing I\'ve found to that is one conversation between Doc and Mom on one level. I\'ve actually stopped looking at objects and signs in levels as much because it felt like a waste of time when your character seems to be nearly catatonic if the world around them isn\'t actively trying to make their insides outsides.I\'m not going to talk about the whole quality/looting mechanic. I actually kind of like it, even if it feels a little clumsy or like it breaks flow sometimes. I find the weapon improvement with Act progression fun even if it doesn\'t necessarily make sense. I\'ve gone on enough, I\'m sure you get the idea. The game is promising and it has potential. But even after getting a closed beta (which I also briefly played in) it\'s still horrendously buggy and feels unfinished. I really want them to keep working on it, but the above is honest criticism concentrated from many post-quit conversations of \"what the hell was that\". This game is 90AUD, and there\'s already upcoming DLC (PATCH YOUR GAME FIRST) for 60AUD. That\'s insane.Fun fact: This game was actually bought for me by a good friend and we broke it in together. And I feel *bad* he bought it for me because of how many times we\'ve quit the game with our heads shaking. I\'ve heard that they had to keep going back to the drawing board for this game and it does feel that way.A game can be fun while being bugged, but this isn\'t the one. Wait for a patch, and wait for a sale.', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', '88ef32e91a5e47639c1d2d916d469646', 20211026, 1, 'The games great, takes a lot of inspiration from left 4 dead and all the difficulties feel great! Recruit for the more casual have fun people, veteran for a slight step up and some missions can actually be difficult, then theres nightmare and it\'s no walk in the park. If you\'re trying to step into nightmare I highly suggest running a build with lots of movement speed and play the game similarly to how you would play Call of Duty Zombies!All in all amazing game highly suggest, lots of content and very fun!', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '937e74d077a040ceb25400d32d2abdee', 20211026, 1, 'did a quick match, put into what appeared to be a bunch of playstation players friends game, i was pinned instantly on joining, 1 of them walked right over me ( nothing else around mind you) and ignored me, i called out \"are you gonna help me or what ya bot\" and he then proceeded to scream at me multiple times, shup up you \"bunch of sticks\"10/10 would be hate crimed again', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '956a762bd3864984ac7f327ce31ee157', 20211026, 1, 'Am in love with this game - definitely believe it has lived up to the hype of being the spiritual successor to LFD ! Cards do a great job in varying the gameplay and increasing the re-playability value.', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', '9c412c0740c54a34b1da3d2854777dc7', 20211027, 1, 'e', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'a81108bb12754c608ba65a3522eb58f6', 20211026, 0, 'boo', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', 'b6f8465f972f489b91b28e738e957b1c', 20211028, 0, 'Back4Unlocks?TLDR: The L4D charm is there, but the soul is not. I would recommend to buy this at a discount. I have over 2000 hours playing Left4Dead and L4D2. So I was really excited to finally see a 3 in this franchise. The game is fun, but it won\'t have much replayability or longevity because the main thing that made the L4D game popular was the versus campaign (why leave out the most popular thing in the previous games?). WIthout the versus campaign game mode, there is no point to build up skill in the game. Once you unlock a few things to try out the variation of play, it\'s game over.Pros+Unique playstyles with the card system and character abilities+Unique missions, map types, big enemies to kill and objectives to achieve+Scary feel to the game with great suspense+L4D nostalgia+Focus on teamworkMeh~Story is ok and somewhat interesting~Skins that you don\'t care about because it is dark and you get covered in guts and blood~Unique mutations; while a great idea, you just don\'t care about them when you don\'t have a purpose for them. See Swarm Mode below.Cons-Soul of the game is not there, the competition to get farther than the other team, and stop the other team at all costs (no versus campaign)-AI is better at handling AI. Since the game is about unlocking things, you want to complete runs. The game rewards teamwork so much it is better to have AI BOTS on your team rather than human players. Since it is only AI campaign, AI will help you get farther than human teammates. If there were human competition on the other team, then you actually might appreciate having humans on your team. -Swarm Mode is the mode to play against other players. It just has little to it. You try and kill the other team faster while you hold out as long as you can. Good in theory, but players just end up leaving after it is clear one team is better, or even sooner. There isn\'t anything to strive for if your team isn\'t good.I like the game, I bought it because I loved L4D so much, it will be fun for a while; but I can tell there won\'t be anything to keep me playing once the nostalgia passes. Buy it on sale to have some short fun.', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', 'ba2fc2ab386d4598a180c9ea482b72f5', 20211027, 1, 'wow i mean left 4 Dead but with a new spin on difficulties plus a deck system to counter them what more could you ask for ! unless its Christmas and all you wanted was a ♥♥♥♥♥♥♥ puppy but you still get the same damn gift cards to the restaurant your family last remembered you went to so your now destined to go to the same place to redeem this card in what is also now a bar you were blacklisted at cause you puked up their free chips and salsa. i guess what im saying is i dig the game...', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'bd620bab71bb4c13b4330d7b76547c0f', 20211029, 1, 'fun', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', 'c1208184154a4fc7a299e93ce4a769c6', 20211027, 1, 'Hella fun! I\'d say a true successor of L4D. And, it\'s winning hearts!', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'c39f59e1666747fe91ee05ca831c83d0', 20211027, 1, 'Love it! In my opinion, it improves on the left for dead series without relying too heavily on its predecessors.', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'c6fdba0079eb4aeeb73fb2c72b2bd51e', 20211028, 1, 'I haven\'t tried match-making, there are a few charming bugs, and I\'ve only played co-op with my wife and 2 bots, but so far we\'re loving it. The guns feels great, the card system is really well thought out and the gun attachment system is nice too. Good balance between feeling like a badass and \'ahhh where am I what is going on!?\'', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', 'd5ea8f5126ca471e8e6389dcea22bab1', 20211029, 1, 'FUN W/ FRIENDS', 1, '2021-10-29 19:05:32', NULL),
('24b80016690244e48196fcec17673e19', 'db22e4b30ab944f2a91415c4af0f4798', 20211027, 1, 'gun go bang bang', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'dc4761a908734969b84ba48cbbf954ac', 20211029, 1, 'Fantastic gameplay. Reminds so much of the old days with left4dead. This is just left4dead on steroids', 1, '2021-10-29 19:05:33', NULL),
('24b80016690244e48196fcec17673e19', 'dedb59f28b0042d29383e28439e2af5e', 20211028, 1, 'I you love Left 4 Dead, you\'ll love this.  It reminds me more of L4D rather than L4D2 since there\'s more of a foreboding theme.  The AI of the mutations are decent.  The Characters all have their unique bonuses and the deck building system adds tons more customization to character builds.  Corruption cards add new environmental challenges which add a ton of replayability.  I also love the fact that Easy difficulty is no walk in the park.', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', 'e0709681a8c74b1b8054f428235ebaa3', 20211026, 1, 'this game fun asfffffffffff', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', 'e1bf26c91f2c41afacc7e54a092bc001', 20211028, 0, 'Too hard on easiest setting.', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', 'e22c3a69b2ed4a778e8f55d1247f74e3', 20211026, 1, '100 % unbalanced at higher difficulties. Get ready to die. 10/10', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', 'e507c3e764734fb7b4d116b2cd9d28d0', 20211028, 1, 'well this game deserved it after around 34 hours gameplay', 1, '2021-10-28 19:43:20', NULL),
('24b80016690244e48196fcec17673e19', 'f46af4d51e9b4126be90c9ba2352498e', 20211027, 1, 'Love it!', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'f4a320e66e424f8bb7e73d735b7759fe', 20211026, 1, 'games really fun but really hard on veteran and nightmare the devs really need to nerf the amount of special infected spawns and up the amount of ammo spawns', 1, '2021-10-27 13:10:49', NULL),
('24b80016690244e48196fcec17673e19', 'f669282a14ed41499b36673d74e5b18a', 20211027, 1, 'yuh', 1, '2021-10-28 12:30:41', NULL),
('24b80016690244e48196fcec17673e19', 'fbeb3da9667a460c8a772abb2773dad7', 20211028, 1, 'Gun go brr hmm yes, Zombie you will kill', 1, '2021-10-28 19:43:20', NULL),
('3dee4caebc234f49831b39029e5b84cb', '0307648985034bb4bb6867354b97ab00', 20211027, 1, 'What the flark..', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '0350112ec7264dc788ef881a93aad4d1', 20211029, 1, 'better than the avengers game for sure', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '0f793ad2866f4ccf8c8a2710ebfdcb93', 20211028, 1, 'A solid story game that kept me playing for 21 hours straight, the lads are as lovable as they always have been and the gameplay is incredibly enjoyable besides some wonky jumping.Highly Recommended', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', '1205410ae94c43a7a08593be54dc5c9f', 20211026, 1, 'This game is seriously amazing. It\'s like watching a movie, a good one at that.', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', '19bea6f08b414c3fb78267f7b6989074', 20211028, 1, 'square enix has redeem themselves with this game i had so much fun playing the game lasts 16 hours and it makes you fell like the guardians of the galaxy i love the in game banter and arguments and the fact that what you say has an effect on the game 9 out of 10 for me but some of the glitches some time were bad where i had to restart my game but i definitely recommend buying BTW ONCE TH GAME IS OVER ITS OVER or you can play new game plus', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', '19d69323e68c40dfa8e3926bd8be022f', 20211028, 1, 'Fan-flarkin-tastic!', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', '1fa6142ecd22433b9a435528050f08b1', 20211026, 1, 'What Avengers Should Have Been Like', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', '36142d2353024db99aa05d763cc54bbd', 20211027, 1, '', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '3d81bee470054b8cb5517985fd230f6b', 20211027, 1, 'I am Star Lord and this is my favorite game on Steam.This is not a perfect game and obviously everyone is entitled to his own opinion but this is a perfect game to me.Why:- Amazing attention to detail: texts, costumes, environments, small fluff items etc.- Characters, dynamics between them and voiced dialogues are just insanely good- Story heavy adventure, I like it a lot :)- Finally, the game which uses RTX in a positive way- Works pretty well (for me) with DLSS, 3090RTX on 4K HDR TV produces 80 FPS AVG and never drops below 60 fps  - NOTE: I started playing it before updating graphics driver and had a crash. After updating nvidia drivers so far so good. You mileage may vary.- Environments are awesome. Environment puzzles while easy still deliver.- Combat while its not too difficult is fine. Enemies for example use obstacles to break line of sight, try to execute strategy like behavior and in other ways a bit better than your average cannon fodder. Pleasant surprise here.- No micro-transactions, grind, repetitive or other things I hate (it is so sad that it is worth mentioning these days)- Soundtrack is nothing short but great- From other reviews it looks like game would take more than 6 hours to beat while not rushing and enjoying the processYes, I really enjoy this game. Take my opinion with a grain of salt since its heavily opinionated :P', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '46e51e82e43b4c169dec39969bfedcf8', 20211029, 1, 'So far I can highly recommend this game.Combat takes a while to get used to but it is really fun.Characters are well written and the story is interesting.The humor in the game is top notch and all the 3.5 hours of gameplay was played with a massive smile.The graphics are insane too!', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '4f489be32d7f4bf48a7e14a1845031b6', 20211028, 1, 'Just my kind of game, but it may not be yours: story-heavy, dialogue-heavy and many cutscenes. If you\'re looking for non-stop action, this may not be for you.However, if you\'re looking for an experience you can loose yourself in for about 17h, with some characters that you may know, but are completely different, a fresh story and a passable combat system, this could be one of the best this year.There is alot of dialogue. Either just passive banter during missions or active conversations on the ship.Just be clear this is inspired more by the comics and not the movies. Which is great, it feels different, but good.Now the combat is not the greatest ever, but it\'s good enough to have kept me going, without too much frustration and no boredom.Technically the game is sound, i have not encountered any major bugs, some small clipping issues here and there, but nothing egregious.The soundtrack is just awesome. Great original score and a boatload of fantastic licensed music. The english voice-over is very good, the lipsync is a bit iffy here and there but it does not distract too much.Overall i enjoyed it very much, and if this sounds like your kinda game, you should grab it.', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', '5e37061a1a044ea39f5b9606207e82cf', 20211028, 1, 'If you like guardians of the galaxy then you\'ll love this game', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', '6375d50f1a604f69a52270fb96a0360b', 20211029, 1, 'Marvel\'s Guardians of the Galaxy is a fantastic, story-driven action adventure - with some little downsides, but i\'ll get to that.Playing as Star-Lord, leader of the Guardians of the Galaxy, you\'re running and gunning through various colourful environments in third-person, always (or at least most of the time) accompanied by your rag-tag team of fellow Guardians: Gamora, Drax, Rocket and Groot.Though besides the action part, there\'s surprisingly many calmer moments that gives you time to breath, talk to your crew in your spaceship or just listen to the banter of the team, giving you a bit of variety in between the fights and light puzzles.The dynamic of the team, the dialogues and banter are, in my opinion, the heart of the game and the voice acting is very well done, as is the motion capture.Visually, the game looks pretty good. Throughout the game you\'ll visit different planets and space stations and each has a unique visual. Lush and colourful, filled with detail and giving you some space to explore. Now, it isn\'t open world, in fact the levels are pretty linear, though they do give you some corners to explore, in which you can find some goodies, either to improve your weapons/skills or new outfits you can put on.Together with the visuals, the music is a standout as well, blasting you with some great 80s hits. Especially when you use your \"huddle\" skill in combat, in which you gather your team and give a (more or less) inspiring speech to boost your combat prowess, it just feels great to be blasting away enemies to AHA\'s \"Take on Me\" or Europe\'s \"The Final Countdown\".The rest of the original score isn\'t necessarily something that you\'ll remember, but it\'s serviceable and fits the scenes usually pretty well.The story starts out rather slow and takes quite a turn throughout the playthrough, but it\'s captivating and has some seriously touching moments in it, for everyone of the teammembers. Everyone gets their screentime and they all get a bit of depth, background story and issues they are dealing with.Combat is a bit of a mess overall. Everyone of your teammates can have up to 4 different skills you can activate manually in fights, as do you as Star-Lord himself. You also upgrade your weapon throughout the game, so you can have 4 different elemental damages as secondary shots, besides your normal laser shot. Throughout some of the \"battle arenas\" there also some items your teammates can activate, or throw for some extra damage, and there\'s the \"Huddle\" as mentioned previous, in which you can motivate your team if you say the right phrase and boost your combat skills.Overall it feels a bit stuffed and clunky to control, at least with mouse and keyboard.It\'s defenitely not bad, and can be quite fun at times, though sometimes it also feels frustratingly chaotic.There are a lot of difficulty settings you can manually change, from damage received, to cooldown times etc. which is pretty great - this way, you can more gradually choose how hard or not you want the fights to be, without feeling too overpowered.I had a few technical hiccups throughout the game as well. Nothing gamebreaking, but i needed to reload the last checkpoit a few times, as some events didn\'t trigger properly and i think 2 times i lost my team after using an elevator.The checkpoints are usually pretty generous and even if you fall to your \"death\" in a level, you\'ll immediately pop up where you fell, without any downsides or malus.Overall, the story and characters are what\'s making this game so good for me, the combat isn\'t great but serviceable, but definitely gets your blood pumping when the 80s hits start blasting over your speakers.Would definitely recommend for people who love a story-driven game with entertaining characters and some combat and puzzles in between that gives a bit of variety.', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '6e0a981e82a94cf08fa8359a2511d752', 20211026, 1, 'Awesome', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', '7215b7d42bfc4dfa9ffff2cd4091d872', 20211027, 1, 'I love the dialogues, the combat, the interaction and choices, it is all much better than I expected and I\'m having a great time!', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '72cc6c31de814c069736d2b7c8f9d329', 20211029, 1, 'Decent game!', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '7be322698b744e239a3ba79f436d930b', 20211029, 1, '10/10 , the story is amazing', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '7c17b41776624601bd9b5335a798cb50', 20211029, 1, 'One of the best single player games I have played in a while!Everything is just perfect; music, story, dialogue, controls, the fighting.It is well worth the price and it is extremely enjoyable to play! So much fun', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', '7c786fcedc344e7f9ee0129d9f6da9da', 20211027, 1, 'The game in its current state is very buggy and the left joystick push being one of the default ways you use Star-Lord\'s abilities led to a lot of accidental presses when combat got heated and I was trying to dodge. The combat felt like a chore because your guns will feel like pea shooters even at the end of the game when you\'ve upgraded everything. The shining parts of this game are the story and soundtrack, that\'s what kept me playing the whole time. You tolerate the blah combat to fill up the gauge so you can motivate your team and trigger the dope ass 80s music and you save and reload through glitches because the story is compelling and you wanna know what happens next, The length was fine in my opinion considering so many games these days are so overly long that they overstay their welcome and become boring. Visuals were good but buggy at times with things like fires blinking out of existence mid cutscene. This is one of those games you play for the story and I hope that they make DLC in the future to expand on it.', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '8833ee27452144638dcc37493a282ed2', 20211027, 1, '10/10, just roll back your drivers if you are having gpu issues', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', '9cd4b9b0a4044c238f46605eb82f4433', 20211026, 1, 'really fun!', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'a4002f2673a5430cb37311fa9a1bc6b1', 20211026, 1, 'Better than Marvels Avengers by a pretty big margin.', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'a97b98ad81654759bf1fcadea4ab5c3e', 20211027, 1, 'great', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'bca48ea7a77c4e8d96b39caf93c4ee10', 20211026, 1, 'Product received for free\r\n																It\'s honestly a great game!Amazing presentation, Action Packed, Amazing Character Performances... I hope I remember to update my thoughts after the campaign!', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'be0131e988f64e4aaee45a9715681e4b', 20211029, 0, 'The game\'s great. Only problem is I can\'t finish it on account of it crashing midway through chapter 8.', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'be8891df9805479491c1e81c71b9cdd4', 20211026, 1, '13 hours in and no issues.  Enjoying it so far.', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'c14653525561476c834a02e5a0be0efd', 20211026, 1, 'I AM GROOT', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'c2e21b4944f944f99d84155e25261f7a', 20211029, 1, 'Give me a sequel already!', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'c89e877c5cc64dfdbafc8b8269213dfe', 20211027, 1, '8/10 good game with easy and not over complicated combat.but boy do they talk a lot', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'ca146549584646c6bb949d43e0344c25', 20211028, 1, 'I AM GROOT.', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'cd800b60f70240538d13567a8bd24a7b', 20211028, 1, 'Very Humorous', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'cf7da98a3d0c40d98146d66d2be16af8', 20211028, 0, 'Game could be very nice, but right know it crashes every couple of minutes for a lot of people with high end hardware.Turning off Raytracing seems to be a work arround but it\'s not a solution. Until that\'s fixed it\'s a \"don\'t buy!\"!', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'd3e4995c58bd46e098d7e762234791a9', 20211028, 0, 'Controller can\'t be enabled - it\'s already a bug visible online...Day 1? Seriously?  You can anticipate people want to use a controller for this kind of game?It\'s a shame they got me with the hype train.', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'd5509780b51b4e838f1a0c1861640742', 20211028, 1, 'very nice i like', 1, '2021-10-28 19:43:34', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'd6a04f24b37745cfb5970aa5f051cb2a', 20211027, 1, 'Bought this with medium expectations. Five hours in and expectations have been flarkin\' exceeded.', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'd6d05ec8c43c449e87d03be62d852310', 20211026, 0, 'Have a Titan X and regardless of any setting i set it to I get ~20. Usually I can run new titles with fairly decent but i cant do that even on low everything. Looked online and seems like NVIDIA’s Maxwell GPUs are not running properly. So until this gets resolved I\'m leaving this review.', 1, '2021-10-27 13:11:02', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'e42d7610a7ea4e3db409e437329eaee0', 20211029, 1, 'it\'s like watching a movie for around 20 hours long lol', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'f5d3531d71c5453398057b7133715662', 20211029, 1, 'best looking game ive played this year.', 1, '2021-10-29 19:05:43', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'fd3da8b959894d978c5648a36c432650', 20211027, 1, 'I am Groot.', 1, '2021-10-28 12:30:50', NULL),
('3dee4caebc234f49831b39029e5b84cb', 'fd76b199f9f8447194a95e2582c06dcd', 20211026, 1, 'I am Groot', 1, '2021-10-27 13:11:02', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '09d338e268624504a606fb74e6fb63d0', 20211026, 1, 'Product received for free\r\n																Very interesting gameplay and a wonderful concept. Can\'t wait to play more of this.', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '1099875b7e3347749d099fa0fe16b3df', 20211027, 1, 'Follow my curator page for more reviews and early access previews of the latest upcoming games!Overall ThoughtsDefend The Rook is a fun and at times challenging roguelike tactics game. Similiar to Warriors of The Nile which I found to be harder at times. My first run I managed to get to the boss in battle 4 but ultimately met my end there. But I can see how some abilities could be very over powered if played right. The core gameplay loop is fun and the game had me wanting to come back for more. The battles were fairly quick and varied enough to keep it interesting. Overall a solid game and I look forward to seeing if we get some added features down the road such as more varied heroes, maps, towers and traps. Gameplay Videohttps://youtu.be/wOOzvN4x-HgGameplay LoopThe gameplay loop consists of running through battles with 3 player controlled heroes and 3 AI controlled towers, along with a couple of traps, the battles involve multiple waves of enemies and the main objective is to stop them from damaging your rook. As you progress through these battles, you can augment and upgrade your heroes, towers and traps to strengthen them and adapt to your play style. If you get defeated then you gain gems which can provide permanent increases to your heroes, towers or traps which will then make the next run a bit easier. Graphics / Art StyleThe game has a lovely 2D style with a clean look and smooth animations. The game has varied enemies and effects and combines them all together quite well.', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '16c6df83609d496eb1ed8d6890e9cd66', 20211026, 1, 'I made a video review with a quick introduction of the game mechanics here if you prefer a video - Text version below!https://youtu.be/lV53HRaGYJMDefend The Rook is a blend between a turn-based combat game, a wave type tower defense and some roguelite progression inbetween. The game is really easy to pick up, yet hard to master, due to a ton of different upgrades and interactions between heroes, turrets and traps. There\'s also a lot of unlockable content (new heroes, towers, spells and such), offering even more options to mix and match and build new strategies.What I liked:The game really surprised me with the smooth gameplay from the beginning. Everything is easy to understand, yet there are so many different upgrades for the heroes, creating complexity while you progress - feels good and fun to learn. There\'s also a lot of unlockables and different stuff which immediately made me happy to see. Several new difficulty levels offer a pretty long gameplay experience. What I didn\'t like:I dislike the \"unlock\" system in general, artificially lowering my options from the beginning. This is a necessary evil for Roguelites and probably also a personal preference. In general there isn\'t much to mutter about, the biggest issue being not too many innovations - every element of Defend The Rook has been seen somewhere else, somehow. It\'s not really a glaring issue though, cause the mixture of \"borrowed elements\" turned into something truly new and enjoyable. But this one won\'t set new standards either. My summary:The game is totally worth your time if you like Turn Based Combat and/or Tower Defense. There\'s a lot to do and it\'s really dirty cheap on top of that. Defend The Rook is easy to learn, offering entertainment very quickly, while offering a lot of depth with crazy upgrade combos. Definitely worth the buy!', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '244bb00effce4e98ad1131ab7887f7e9', 20211026, 1, 'This is what I would consider a solid 7/10 game. It\'s a simple concept, you get units and you get towers. Tower\'s don\'t move and use AI targeting, while units you have full control over. After each wave you\'ll be presented with one of three options to upgrade one hero. There\'s rarity involved so some runs can just be worn with an early high roll. After 4 waves you face a final boss wave which gives a high rarity upgrade. You have a small break to spend xp and gold on upgrading heroes or towers. Each run the \"tree\" of each unit is randomized, which does keep a freshness to each run. Also with randomizing the spells you start with.This game, for me, is lacking in two areas. Difficulty and hero diversity. As a note, I haven\'t unlocked each character. There\'s a total of three classes of units, a frontliner, an rogueish character, and a mage. While each unit feels very different from another, the alternatives don\'t feel too different from the base. The roguish category suffers from this the least and the mage the most. I personally feel that not dying when killed is just better than four armor is you didn\'t move, so there\'s also a small lack of balance between the alternatives.The bigger problem is just the game isn\'t that hard. I\'m pretty experienced with roguelikes though. It took me to ascension 4 to have a rocky run. Even then I still beat it. I currently have yet to lose a run. You\'re bound in a run to get one of the too powerful cards. Here\'s my highlights.My warrior has range 6 and auto kills any unit at 48 hp or less after an attack. He also get\'s to attack a second time if he kills a unit.Or my most powerful runMy mage chains lightning for 18 damage at range 5 and stuns everyone hit. Whenever a unit dies all enemy units take 6.Or My mage attacks everyone within 6 range for 30 damage, if she kills a unit she can attack again. This was my first run and the final boss was usually just me attacking with her twice, wiping the board, making the boss go invulnerable, and then having everyone else on my team sit around.It\'s not a bad game, it\'s a really well made game. If you\'re not looking for a balls to the wall hard roguelike here\'s a great place to start. I would heavily recommend giving it a try if that\'s your cup of tea. I\'ll be coming back to it again!', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '54a6119f5cff4eb1949f7a87bfaf1318', 20211026, 1, 'Really good.. better than expected.. very replayable. If this game had awesome graphics it would be mad.', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '690779c010c34f6481d199dc24d099bf', 20211026, 1, 'Turn based roguelike that when you really get into the flow of the gameplay, plays almost as slick as realtime.Great artstyle of your team and the varied enemies/bosses and a good UI make this a joy to play and so addictive.Animations are well done and good music and sound effects throughout.Characters and the gameplay have loads of different attacks with perks and upgrades to unlock, together with procedurally generated battles makes for lots of replayability.', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '6dfab161015b436aa5599052754c5ce2', 20211027, 1, 'Solid tactical game, nice use of roguelite elements to keep each playthrough fresh.Each play-through lasts as long as it should.unique enough playstylemy only issue is it needs difficulty options and a way to scale down wombo combos, i was able to beat the game first try. i was struggling till i picked up one key ability that let me chain kills with the sorceress (an ability where killing an enemy made them attack another enemy), shortly after that i had another playthrough where i was able to just blast everything down as the soceress again (multiples of the talent where killing an enemy casues damage to all other enemies).Overall, it\'s very enjoyable and refreshing, but it might not last as long as i\'d like if it doesn\'t get a balance/difficulty pass', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '705eafb688c44de582ef139f6c688790', 20211027, 1, 'Even after putting in for a refund on this game, I still find myself unable to actually give it a negative review.  The concept is sound, and the gameplay follows suit.  I see a lot of potential in this one, and will definitely be checking back in with it in the future.  The problems I have with the game are more of the technical nature.  Most critically, the game repeatedly crashes on me during the very next mission following available demo content.  That\'s a huge red flag for me, and if this were Early Access, I\'d probably be willing to look past it.  Additionally, this game does not do well at higher resolutions, and certainly not on an ultrawide monitor.  The blurriness I can work with (heck, I still play EverQuest to this say, original graphics) but things like being able to see elements from previous scenes around the edges of the current scene is more than a little jarring.', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '82bdcd9c63fe419faaab6daa3f8c7655', 20211026, 1, 'An interesting game that blends turn-based combat and tower defense gameplay with a unique chess-inspired atmosphere. There\'s a good range of abilities to use, and character advancement for units as well. The art direction is unique and fun, and there\'s a solid variety of different enemies to defeat. A very fun game worthy of checking out!', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '8425aa43f55a4438b5d4f1a7767d0a1e', 20211027, 1, 'very fun game, lots of content for the price also. People bring up difficulty but, if your not a hardcore rougelike player this game will challenge you enough for a good time. Its fun to think of different builds and come up with a strategy for every wave. The only the game needs is more map/boss variety, currently I think there is enough hero/spell variety to keep things interesting for awhile. Hope the devs keep updating the game.', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '89218e48b4ca494783255150c733c619', 20211026, 1, 'Really fun game. Battles are quick and smart and the progression is interesting. If you like micro tactics, try this game!', 1, '2021-10-27 13:13:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', '9f925699e157457fa3af06934efa4dfa', 20211027, 1, 'This game presents you with really interesting power-up choices, often changing the play style of your heroes dramatically. It\'s good fun trying to build up OP combos - e.g. in my last run I managed to stack a chain lightning tower far enough that it could nuke everything out on its own lolAnother thing I like is that your heroes\' life feels precious - I find myself really trying to avoid having them lose any HP, which is an interesting puzzle a lot of the time. I\'m looking forward to the ascendancies making this more difficult, and more important!', 1, '2021-10-28 12:31:17', NULL);
INSERT INTO `reviews_fact` (`game_key`, `user_key`, `date_key`, `rating`, `review_content`, `current`, `time_created`, `time_updated`) VALUES
('58d26fe5f388433d93f00a3bc9928f43', 'a3bfd8e03d7f43cfafdf3418fbf2b7a2', 20211028, 0, 'it\'s probably worth the money.... and the tactics themselves are great. what a shame that this is one of those \'its the same run every time\' games, it\'s just 5 matches of 5 rounds each and that\'s the entire game. Do you really like your crew, and want to play longer with them?  too bad, because just beat the boss and the game is over. if you like these types of games it\'s a good one, but I wish i hadnt bought it. I get more replay value out of the free Jupiter Moons demo than I did this game.', 1, '2021-10-28 17:54:47', NULL),
('58d26fe5f388433d93f00a3bc9928f43', 'b1004555f30e4da19e91e4fc361374dd', 20211027, 1, 'Fun game is fun', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', 'e4b5e2b8ed67432f8f7c8f32543cbe07', 20211027, 0, 'Product refunded\r\n												Game doesn\'t scale well at high resolutions (the sprites get blurry), runs overall quite poorly and lacks severely in difficulty.', 1, '2021-10-28 12:31:17', NULL),
('58d26fe5f388433d93f00a3bc9928f43', 'f73ad6409ce44774a3408d51b8a66fc0', 20211026, 1, 'Product received for free\nFollow our curator page: IndieGems if you like and want to see more reviews like this one.Defend the Rook is a game combining turn-based strategy with tower defense genres, in addition to being a roguelite with run-to-run permanent upgrades and progression. If you enjoy both TBS and TD genres, this game will be a fun addition to your library. For people who like the idea of the TD genre but who may find the active and continuous enemy movements to be stressful, this game allows you to think before you move, thus making it more accessible as well.GameplayThe game provides a separate tutorial, and it is very easy to understand.The game is set up in a level-by-level basis, with five waves within each level. The final wave is always a boss wave and they are pretty difficult. I think there are five levels total, but I have yet to beat the fifth level at this time.Even though there is some kind of a story between the levels, I was not paying that much attention to it. I was eager to move forward to the next level usually.The battlefield is set up so that you have the rook, which must stay alive, and also three heroes along with three towers. You can unlock more heroes later by winning levels. The towers can be placed whenever during the level. The towers attack at the beginning of each turn. However, if you lose a tower in a prior wave, you will not have access to the same tower until you complete the level. You can move your heroes around on the map, and they can attack or use items to impede enemy progress.After each wave, you will be presented with three random buffs; of course you will pick the one most suitable for your situation/need.The game is a roguelite, with the run ending if your rook dies. During your run, you will earn gemstones after completing each level, and they allow you to make some upgrades for the next run.GraphicsThe graphics look very good, and I really enjoy this art style.MusicThe music is not outstanding in any way.ControlsThe game can be fully played with a mouse.PricingThe game offers fun and challenging gameplay, with plenty of things to unlock. Gameplay Videohttps://www.youtube.com/watch?v=6V8UMjQo0LUVerdictDefend the Rook is a really fun game. I really enjoy both turn-based strategy and tower defense style games and by combing the two and allowing me time to think, I found it to be less stressful than the standard TD games. The gameplay is engaging and fun, while also presenting a certain degree of a challenge. I have yet to complete a run, but I think I am rather close.I can recommend this game for sure.Verdict: 8/10I received the product for free. I did not receive any compensation to write this review. The opinions represented here are entirely my own and were not influenced in any way.', 1, '2021-10-27 13:13:17', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '0e5851812b9140cca75c6848e9f57509', 20211028, 1, 'Third time\'s the charm.', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '14283252bfcd444d92e9953e7baef94e', 20211026, 1, 'much scare very sp0oky', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '19bc5a14531049c4b2f5b2451b5ce547', 20211028, 1, 'so far the best game in the anthology. much more interesting than the previous 2 games because something supernatural is actually happening this time. the only thing i really disliked were the large portions of the game that felt more theatrical than like you\'re playing; especially in the middle.the camera angling isn\'t perfect, but compared to the previous two games, there\'s definitely been positive strides made. i think it\'d be improved if the cameras could clip through walls, though.my one major complaint is the characters\' eyes. they\'re very stationary and never seem to be positioned at what they\'re looking at, which makes scenes feel awkward at times.being set in 2003 iraq, there\'s obviously some political commentary, but it\'s tasteful and isn\'t one-sided. overall they did a really good job with house of ashes', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '1b6492bba80848e29405e1b43bd65caf', 20211028, 1, 'I thought it was pretty good. Looking forward to the next one.', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '216e7f47c97f48a5a1fbb01c4041d239', 20211027, 1, 'just finish my first playthrough and everyone lives. Now, i want all of em are dead except salim', 1, '2021-10-28 12:31:08', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '24a875ee05574441871f975fa56b3f94', 20211028, 1, '^_^', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '2d8ec725706d4c96a9422f359016965e', 20211028, 1, 'The wife and I have played through it twice, and intentionally set out to get everybody killed the second time around.Unfortunately, even failing the QT events doesn\'t lead to death unless you screw up... a LOT.Perhaps it\'s worse on harder settings, but, it seemed like the people I wanted to die halfway through lived until the end.Maybe I should have been trying harder to get them all killed O_OHmm...Next time...Next time.............', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '2e794a1f523d4b62b58c908e79d32fe4', 20211028, 1, 'I thoroughly enjoyed my first play-through of House of Ashes and I can\'t wait to replay it again, solo and with friends, in the future. The characters were complex and effectively written, which helped immerse me in the story. Because this helped me care about the characters, I felt the stakes with every decision I was prompted to make. Whatever choice I went with, the dialogue remained organic and felt natural - something I felt Little Hope struggled with, which kept me a bit detached from that story as I played through it. The graphics were wonderful, Overall, very happy with the game and can\'t wait for the next entry in the anthology!', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '3b1d2081379d4f2dacac7c4cc6fe6ddd', 20211028, 1, 'CategoryScoreGameplay60Graphics100Story90Music90Performance90House of Ashes, the third instalment in the Dark Pictures Anthology was an absolute joy to play through. The first two games were amazing and very enjoyable, Man of Medan had a bunch of jump scares with a strong story line, they further improved their story telling with Little Hope and with House of Ashes absolutely blew me away with the amount of effort they\'ve put into this game. Not only is the story insanely interesting and hooks you in from start to finish, it also has a lot of lore and thought put into it. My favorite characters were Jason and Salim, the dynamic duo everyone loved. I had a blast playing this game and streaming it with a friend, the choices, dialogue and story was very engaging and fun. This game isn\'t particularly scary, more so eerie and mysterious compared to the last two games by Dark Pictures Anthology. Had been waiting for this game ever since I finished Little Hope and so glad I got to experience this game and not have my expectations broken. My friend loved this game too!', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '437fb2ab6cf94b5ab4dca0ec3b5cd3fc', 20211026, 1, 'Very fun game to play with friends using the Movie Night mode. Salim is the GOAT :D', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '4a406227cdcc435296e668434504433e', 20211027, 1, 'Product received for free\r\n																niceeeeeeeeeeeeeeeeeeeeeeee', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '691f700cfdb14fa48ce540cc041835a8', 20211029, 1, 'It\'s real fun and enjoyable. The first play is exciting but doesn\'t have the replay incentive of Detroit become human. All in all a fun experience.', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '69de62dca49d4016ac73c06e3f1eec4c', 20211028, 0, 'I get the impression that most people playing this game will only like 2 characters. Dialogue was not great and everyone is petty and ♥♥♥♥♥♥. Only one character is given any sort of character growth. Any realism was lost due to reoccuring back-talking to one\'s higher ranked officer and that a female is interrogating men in an islamic state. Two guys, who you are given the impression that they have worked together and are friends, have an out of place exchange where the black character insinuates his comrade would have low opinions of \"black folks\". It goes nowhere. This was only included to make sure its audience cannot play a horror game without being hit over the head with some race relation reminder.QTEs are completely busted with a controller. Three out of five times they failed and I would have to close out and re-play a chapter multiple times so that someone was not killed because of this. This meant I would have to listen to the same childish dialogue again which is probably why it annoyed me so much. Going to mouse and keyboard improved QTE successes, but it still read some as wrong. Luckily not enough so it usually didn\'t kill anybody.If I could do it over I would have watched someone on youtube play it. Shame, because the premise of the next game appears to be my kind of subject, but this game was not a fun experience.', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '6cfd59102a8b49b694060cab5ee2a231', 20211027, 1, 'this game is literally like a blockbuster movie that goes for many many more hoursthe writing, the tension, the dialogue, the visual beauty, the sound design is all absolutely phenomenal and I\'m completely blown away 10hrs in. it\'s a story game/walking simulator in essence so if you\'re looking for a game where there\'s a lot more gameplay it might not be for you, but if you like storytelling in video game mediums this is an absolute gem. haven\'t experienced multiplayer yet, but this is definitely something you can play in your lounge with friends and family watching where everyone will be thoroughly enthralled and entertained. the voice acting (and acting in general as I\'m guessing everyone is motion capped) is oscar worthy, haven\'t been this gripped by a story driven game since SOMA, I just hope the ending doesn\'t let me down as of yet though can\'t speak highly of this enough. it\'s superb.10/10', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '7294378d69004ce4adeddf7586760424', 20211028, 1, '♥♥♥♥♥♥♥ amazing please buy this game!', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '8d8be88c41ac487ba5c2c20d4ac6aae8', 20211028, 1, 'Killed all my friends and now they are mad at me :(', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '9060d54ec4b046e8874c6c60f3108ed3', 20211028, 1, 'I like this game, like I\'m like to smoke. Every year I\'m buying game from this anthology, finishing it for 1 evening and that\'s great. Stories are cool, playing this game you will get action, drama, sometimes weird story (but not bad). Average graphics.Good animationsInteractive movie gameplay (just chill and play)It is cost it\'s price.It\'s 8/10Waiting for next part and I will buy it on start!', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', '92be6b19cea243d78853aaa746ead896', 20211028, 1, 'I love QTE games. I\'m lazy and have a giant TV at the end of my bed, that\'s bigger than the bed itself. Problem is I can\'t aim very well with my mouse on the bed, nor can I aim particularly well on a controller. So games like this which have minimal aiming (and assist options for it too) are great fun for me. Plus with a giant a$$ 4K gaming TV, it helps me immerse better in a game that\'s designed to be super immersive.For the above reason, I own every game these guys make, twice in fact for a few of them (on PS4 too). and I have a blast every time. I still can\'t quite get my head around whatever the hell happened last year in Little Hope, so I\'ll have to go back to that one for a replay soon.But House of Ashes, I feel was truly the best in the series. It starts a little slow, a bit weak sauce, but once you get deeper into the chapters it starts to really get exciting. And the deeper you go, the crazier it gets. So whilst I definitely recommended buying the full Dark Pictures series, I\'d say even if its your first one, this is the right one to pick. There are some Little Hope references in it so that might make you pick that one up too, just to see how it all connects.With this game series, one of the rewards for beating the game is it shows you the NEXT upcoming game. So next October, fans will get another game added to the series, and thats already looking pretty sick too. As I said earlier, I played this on the highest settings on my 4K TV, there was absolutely no lag or input issues, the game was smooth as a whistle with no issues stopping and starting. it played as you would expect it to on a console with perfect fluidity. My GPU is the 980ti, so it\'s getting on a bit in age now, but still performed perfect on this game.So if you want an immersive experience where you can distract yourself from the real world and engage in the plight of others - I say pay full price and go for it. I\'ll pre-order the next line up in the series as soon as it\'s available.', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'a52e587e527d4b8caed4b97f6050cbb2', 20211026, 1, 'I love this game series, I can\'t wait for future games.I do have a small gripe though. It seems like the longer you play the game the more unsteady it becomes. For example if you hold A or the run button while walking frames will drop to 1 fps. Or if you do the silent actions fps becomes 1 and you will fail the challenges.', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'a616f6c78e834fa89bc0399cb4ab4bee', 20211026, 1, 'ITS GOOD', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'a8496f840802498f850e21182555b6ef', 20211027, 1, 'Tried this game for the first time via online co-op with a friend. I\'ll start by saying that this is an incredibly aesthetically pleasing game with amazing graphics. It\'s not your typical multiplayer / shooter game and definitely is designed for people who enjoy a heavy storyline/plot. If playing co-op, I would also recommend playing with someone who isn\'t wishy-washy about the time they spend on a game. Aka, get up every 5 minutes or just make for an unreliable partner. This game is very big on commitment of other players and being immersed TOGETHER. That said, incredible game. Will definitely be giving it a different playthrough to find out how alternative decisions impact the story. Will also be exploring their other games available. 10/10, would play again', 1, '2021-10-28 12:31:08', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'af944dc4ee76494499f75a9799f48b89', 20211027, 1, 'good game and story', 1, '2021-10-28 12:31:08', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'be41eab142f040468a29b8aa66b1fc06', 20211027, 1, 'Amazing Coop Games', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'be5c0e6b5dde46b5832437d347dd7ffd', 20211029, 1, 'fun game, i want to see more.', 1, '2021-10-29 19:06:02', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'c04272677a6e445ba73867bcf7a2c0a1', 20211027, 1, '9/10 - The best in the series yet. Honestly I didn\'t even have much excitement for this one. I really didn\'t have hopes but I was curious regardless and after completing it today I was blown away. It was such a truly enjoyable game. Everything about this game felt good. We had a couple sound glitches and the animation bugged a couple times but fixed itself shortly after I won\'t lie about that. HOWEVER, myself and my friend both streamed this & both ourselves and our viewers thoroughly enjoyed the story. The twists & scares were relatively fresh for a horror game. I usually don\'t get caught off guard by anything but I got spooped a few times and I was very intrigued in the story as we progressed throughout the game. Definitely recommend. Go have fun with a friend.', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'c206e3f72ee74991ab98f5f5e614c9f2', 20211026, 0, 'Product received for free\r\n																After the 2nd hour I have no ♥♥♥♥♥♥♥ idea what I was even watching, i do not like this game/movie/youtube video', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'c515f062af0d42faac72f3a66f9fa9cc', 20211029, 1, 'Out of the 3 episodes, aside from Until Dawn, this one is my favorite. Although it had a lot more action/adventure game-play than I expected, I wish there were more horror elements to the game; however, the action scenes did get intense during some parts and that was pretty cool too! 10/10 for sure and I highly recommend!', 1, '2021-10-29 19:06:02', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'cff26f51887446818e6fb036b07c701e', 20211026, 1, 'Good', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'd0111f1434b048389511f0f5bf19515d', 20211026, 0, 'This game completely let me down, the decision making was often times made before a situation presented itself which led to outcomes I did not even know about. I felt completely out of control unlike their past games. 0/10', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'd3df2ce381874667bc722256633817da', 20211026, 1, 'is anyone else having audio issues when remote playing with a friend?', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'd46c74259484414eb90305e62d87f60b', 20211026, 1, 'Best one by far. Just because it doesn\'t have jump scares doesn\'t mean its not horror or as good as the other ones. Lot less go Left or Right choices too. excited for the next one!', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'd8e19c7ed2754e7f81f6b3ddd4ef5184', 20211027, 1, 'fun if u have friend', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'd916997659414d5da181d4625e5c6a11', 20211027, 0, 'Felt like I was on an acid trip half the damn time. It went from realism, to left field insane. Not their best one in my opinion', 1, '2021-10-28 12:31:09', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'db2effcf2c0f4c9b81e64d5515fd6bd8', 20211028, 1, 'Best part of the series with a lot of unexpected scenes. a play-through takes about 4.5-5 hours which is fine. The second time obviously to see the other perspective. I really like the  non-mundane story. The depths of the characters is excellent. I\'m looking forward to the season finale and season 2 afterwards :)', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'e56f069183d1457983dd37f3b6c00a1f', 20211029, 1, 'phenomenal game. Competes with \"Until Dawn\", hands down.', 1, '2021-10-29 19:06:02', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'ed7e8bd898ca4487ad695e77b68b298a', 20211027, 1, 'get the old horror movie vibe.can\'t wait for the next one.', 1, '2021-10-28 12:31:08', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'f07fd7694796482e9a108c8d43b7cc27', 20211028, 1, 'เกมสนุกดีนะ โคตรลุ้นมาก QTE นี้ปราบเซียนกว่าเกมอื่นๆใน Genre เดียวกัน', 1, '2021-10-28 19:43:51', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'f10b4aae22134967bf111b00af7af7a4', 20211029, 1, 'Definitely the best game so far in the Dark Pictures Anthology. Fun characters that have development through the game, neat monsters, and a varied amount of environments. There is also a number of options to help make QTE easier or harder for people who are not good at them or find them annoying. Definitely recommend.', 1, '2021-10-29 19:06:03', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'fa95e35cef7840f6aaa8830d97f3effd', 20211026, 1, '????', 1, '2021-10-27 13:14:42', NULL),
('6969627b7b124f2b95bc2c5d9595afef', 'fd142f3439c34ed09e34b03b874e7d51', 20211028, 1, 'Okay personally, not as good as Man of Medan, but better than little hope. Its not really scary, but suspenseful. The story is a good improvement, and I believe you will find a character you enjoy playing! Give this a try, especially with a friend if you\'ve been liking The Dark Pictures Anthology, this is a fantastic addition!', 1, '2021-10-28 19:43:51', NULL),
('e251390382fa4158b7bbdb2c8595c170', '01ef53ab4965489582e3d8f7f7006e8b', 20211026, 1, 'This game is beyond what you think it will be and its incredibly fun and crazy and i love it.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '0a75f1c53adb4d05b351aed4268bfac8', 20211027, 1, 'quite polished, would recommend', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '13b40c39f0134f4c843259c4bd0a2abe', 20211029, 1, 'If you are a fan of card games, this game has it all. Card. Other card. Serial killer. More card.', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', '18eac86ebb254a2591c85e336657226c', 20211029, 1, 'This game is truly excellent - a must play, both a love letter and a warning.I wish I could shake the developers hand.', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', '19731bfb81cb464bbf69aeccd94af7e4', 20211027, 1, 'One of the best games I\'ve played all year. I don\'t wanna spoil any of it so i\'ll stop there. If this game looks even remotely interesting to you.... play it, stop reading this and play it, I love this game.', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '1c14b1f3d42240fdaee81b061890f8f9', 20211029, 1, 'Good game for me, but my game always crash. I don\'t know the reason.', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', '1c15928825664c6893775def3c647dd1', 20211026, 1, 'you\'ll never look at squirrels the same way again', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '1c8869f5da36405b8ab623194cb28f6a', 20211026, 1, 'I do not play many card games so its rare when one grabs me. Inscryption had me coming back saying \"That was my dumb move let me run it again\" over and over again. I have not beat the game but I am getting close to the end. I love all the puzzles to this game and the walking around the cabin element. One more thing I love about this game is how it looks! i cant describe it is that unique. This game is worth your time.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '2547c472b7d7479b8c5b0897f7fc84de', 20211028, 1, 'I rarely write reviews, and it even rarer for me to love a game to the point of wanting to talk about it to everyone, but this, this is it.At least, play the demo, and even then, this is only a small part of what you\'ll get to discover in this masterpiece. It\'s witty, funny, scary at times but the balance between it all is fantastic. Don\'t miss it.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', '25d78a6202f44ed98df27cef1a738a6e', 20211026, 1, 'Blown away at every turn. Most of the time games like this fail to live up to expectation, as the development process stretches the developers too thin, but every beat of this game felt rich and fun in a unique way. legitimately a great time, worth a blind playthrough hands down!', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '3b2b994608f842cb950a32bfb37ba7aa', 20211028, 1, 'Very fun! When I got the hang of creating my own cards and mixing around Sigils I got excited with all the potential cards. The Story Role Playing and Board Game aesthetics of the game were really nice and the mysteries and puzzles that are happening in the back ground kept me engaged through out my play through.It felt like it\'s numerous games in one! SPOILERS BELOW THIS The different arcs of the story are all well made too! The different styles were refreshing and very interesting.I was confused at first and really thought I finished the game upon completion of the first arc, and took a bit to piece together the videos and creepy conspiracy theories. I\'m glad I played this during Halloween Season, it gave the right vibe for something cursed and fun!', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', '3d49e7669aba49bd93f6c50badb6593a', 20211027, 1, 'Great Hope they make a sequal 10/10', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '4099d8b935264f799a4293e925da4014', 20211027, 1, 'Inscryption is an absolutely brilliant and beautiful deck-building, card game, story roguelike . This game perfectly merges story and gameplay so seamlessly that its hard to tell which elements are which. I highly reccomend going into the game spoiler free if you wish to experience the game to its fullest.Lets look at some possible pros and cons.Pros:+phenomenal and unique card mechanics and gameplay structure.+Amazing story that will make you feel a variety of emotions.+Great soundtrack+A gift that keeps on giving, the game keeps you on your toes and will surprise you with what it comes up with next.Cons:-limited Replay ability, between 10 to 20 hours. (of course you COULD play more if you wanted)-If you bought the game thinking it would be exactly like the demo you may find the complete flip of game mechanics and entire game elements jarring or annoying. The game changes dramatically multiple times.', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '4dbd97e8a2fb40b5b4a5b01fbac90f02', 20211026, 1, 'This game is pretty much flawless, the only real issue is its lack of replayability since the game is rather linear and story-focused, but that is both great for the game and not even really an issue. I would like to see at least a version of The Cabin to be fleshed out in a whole game itself with more bosses, cards, and events, or at least a way to play it on loop/endless mode.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '4f589bea2d5949929e83c00cc731d3f7', 20211029, 1, 'Simply no other game like it. A fantastic and unique take on what a video game can be', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', '57fc25bbc9f84d5f8ffdb421444d90e8', 20211027, 1, 'This game is one of the most unique games I have ever played. Hands down worth the time to play.', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '6058b3d03a574569a2be004425fb4b35', 20211027, 1, 'squirrel', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '62d31672502e4cd7b40865e6319407b8', 20211026, 1, '好玩！', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '6dd168e548484e95809cf371f7cc84be', 20211026, 1, 'I love this type of deck builder \"game-within-a-game\". it grabs your attention and can easily be played for hours.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', '74d0fbb721fb4be88e2677f59365abc1', 20211027, 1, 'Incredible game. Has so many twists and turns. The card game is fun, the puzzles are fun. Highly recommend this game. The story and the gameplay are both incredible!', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '7f9e47273bc44858934002df85a662a9', 20211027, 1, 'Best. Card. Game. Ever.', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', '9047cb89219f42a4adf7d6d1921917d5', 20211029, 1, 'Not your typical card game!BUT A NICE ONE FOR SURE!', 1, '2021-10-29 19:05:53', NULL),
('e251390382fa4158b7bbdb2c8595c170', '98f0aabb38dc4dbd896f358c4dd743ed', 20211029, 1, 'This game is one of the best I\'ve ever played, even if you don\'t like deck building games you should but this anyway (I\'m not super keen on them in general, but I do like Slay the Spire a lot). Don\'t look up reviews, or anything about this game, just buy it. You will not be disappointed...oops, gotta go, someone\'s at my door...', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'a4a9af40c6cf4740b6640dbe1e32cd10', 20211027, 1, 'Am much pleased', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'a5bde1ac08b84fe1b5b0535d71e4a016', 20211029, 1, 'This could only be done in video games. Play it as with as little knowledge going in as possible.', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'a8a9d124b32b4dc38f27d0bd8d2239c0', 20211028, 1, 'Amazing game so far. No research no nothing, just knew that there were cards involved, didn\'t expect slay the spire, but the cards are very satisfying, great game.Just reached act 3.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'bd7e4f1291164ee88b37dff4940cf52a', 20211029, 1, 'What\'s going on, where am i? Who was that! Where do i go next? Why do all my/his cards suck# How do i stop playing.', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'c12e4f603c5043c9b26bbb2bf16ac411', 20211029, 1, 'its fun but hard gl', 1, '2021-10-29 19:05:53', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'ccb46ccc73a340bfa5e40eabd84e56e4', 20211029, 1, 'Best game I\'ve played in years.  I don\'t care for horror type games, but the gameplay was amazing and completely unbalanced in a very fun way and the storyline was super compelling and I only wish there was more!', 1, '2021-10-29 19:05:52', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'ce87dcb66e6141b59c82b8e6c4687500', 20211026, 1, 'Yes.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'cff41f25aaa34da88cb48eecbba0fe0a', 20211026, 1, 'An excellent rogue-like game with horror elements.', 1, '2021-10-27 13:12:33', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'db29bc59b7db48b5978d78f8faaf43c8', 20211027, 1, 'Phenomenal game in multiple ways, except in one. The store page is highly decieving in that it only shows Act 1. The trailer shows Act 1, and all the images show Act 1. Leading many to believe that the games sole focus is gonna be that of Act 1. However that part is fairly short and in my opinion, the best part about the game. Extremely fun, very well made, and reminds me of a better Slay the Spire in a way.I\'d be very happy if they released an option to grind out the \"endlessness\" of Act 1 with tons new bosses and cards after you complete the main story. OR even release it as a DLC, I wouldn\'t mind. Act 2 is extremely different to Act 2 except for the fact that you\'re fighting bosses again. It\'s a completely different mode that I wasn\'t too much a fan of. The game turns into a 2d card collecting game with free control of he cards you put in your deck. Most fun I had in Act 2 was fighting a dummy over and over again :/ ( and completing all the secrets, but I always love that)Now Act 3 is where I\'m currently in at the time of this review. The game returns to 3d but with a new art style due to the character you\'re interacting with now. Once again new puzzles and a new format of play where you can freely move around a map is introduced, with various secrets and passage ways you can go to.While i do like the fact that the game is 3d once again, I have to say Act 1 is the best part of the whole game. I\'m really hoping that they go back and make a full fledged version of the playstyle/mechanics of Act 1.', 1, '2021-10-28 12:30:59', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'df3552cc1dc747eca195fd4b6d8263a7', 20211028, 1, 'Pretty compelling card battler / meta ARG sort of deal. I normally have no interest in the genre of cards/adjacent titles but between the fluff and easy to digest systems in place I found myself excited to make new combinations and optimize my hell-deck. I don\'t think there\'s a cool meta-analysis or big story thing to be done in this review. The actual plot is straightforward but what the game excelled at was its presentation of even relatively minor points I think. The music, visuals, all blended together in a pleasant slurry that all forms around the card battling mechanics. A commonly talked about example in reviews is how your cards aren\'t explicitly all that happy to die, and sacrificing them is a key point of the game. Little things like that form the experience.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'e4e1dc2d1eab4ea7a828734618a09ff7', 20211028, 1, 'It\'s awesome. It really is. You deserve it to yourself to experience it', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'e4e7307aa4014ca1b17218268d5d54d5', 20211028, 1, '-------------TL;DR-------------A roguelike deckbuilder that is NOT like Slay the Spire. Actual unique gameplay. Amazing execution, allows for much experimentation in deckbuilding. -----------------------Horror aspect----------------If you are wondering if the game is too scary for you: probably not. No jumpscares or stuff that haunts you at night (I assume). However great atmosphere, does have blood & gore scenes.-------------------------Long review:----------------One of the best games I played in a long time.The only strategy horror game I know.Recommended for: People who like roguelike deckbuilders (Slay the spire, ...) and games with a dark/horror theme (no jumpscares or anything, just general atmosphere, has blood and gore scenes)Game length: Can\'t estimate yet how long the story is.I really like that the amazing core gameplay is surrounded with an overarching story and mystery.The thing I enjoyed the most is that it allows for suprising and unique secret gameplay interactions (can\'t say to much for spoiler purposes, but you can ask in the comments if anyone is curious about some interactions I found).', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'e5a2f77428254df68bda564f919c4025', 20211028, 0, 'One of the most disappointing games I\'ve ever played. Act 1 is absolutely fantastic, act 2 and 3 were an absolute slog that I had to force myself to get through, and the ending wasn\'t worth the time wasted playing. Game\'s marketing is also basically false advertising. I hate to do it, but I wouldn\'t recommend this game to anyone.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'e94725548cf84494b51ee82d43a6285d', 20211028, 1, 'Absolute blast from start to \'finish\'(?)Puzzles are varied and interesting. Card battles had a nice learning curve to them and fun to actually play.The art style is absolutely incredible, loved all the little easter eggs (The Daus!) and the sound and music is amazing.The game just keeps on giving more and more content where any AAA+ game would have opened a DLC store page.Game of the year for me, honestly.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'ebaf979a081a477f8ed2d1fcf73b5d39', 20211028, 0, 'Ok, I this Game is Good, and than it sucks and than its get goodish again. Act 1 is a lot of fun, and becouse of this i bought it. A Deckbuilder and a little bit of Hand of Fade. It´s a lot of fun, it has its problems but fun. The totems, items and the different upgrades you can apply to your card, makes it versatile and each death is fun becouse you can create a card, which are super OP. There is a lack of variety in encounter and Bosses, but becouse the akt is so short (2-4h) that it dosn´t feel boring. And than act 2. It sucked the Fun out of this Game. The gameplay chnges and gets rid of all the uniqe aspekts of this game. No Item, no totem and the \"you can draw a card beside your deck\" are gone, the art style and game type changes extremly, granted its a matter of tast, but both are worst. The Card matches are encounters that are alway the same. its not random, the cards of the enemy are always in the same order in the same position, and a lose has no consequences, so it becouse a thing of \"try again\". ACT 2 SUCKS. And if I had only play two hour a the time I would have refunded the Game, and only when I read that there is a 3rd act I sufferd to the end of akt 2 to see the 3rd act.Act 3 goes back to the art and gameplay style of act 1, which makes it instantly better, in my opinion its not as good as act 1 but way better as act 2.Act 1: Good game, unique and fun aspects.Act 2: A boring ugly uninspired game, gets rid of all what makes act 1 great and replaced it with a nothing really.Act 3: quite good, gets back to what makes act 1 good and makes them fit to the theme of act 3.If act 2 would not be in this my criticism would be the lack of variety, which can maybe said becouse they had to put act 2 in there. the same time and manpower on a act for the wizard and necro or 2 or 3 more for the boss encounters and this game would be fantastic.If you are ok with act 2 than buy this game. If not there are other, way better deckbuilding games that you don´t have to suffer through a extremly ugly boring 2nd act.ps.: on top of this, I think that I am angry becouse this game advertised only act 1, so you go in with the aspektation of a deckbuilding roueglike/-lite. The demo all videos and screenshots are only from act 1. And I know gecouse of the twist, but when the twist is a completly differend game and it turns out the reason you bought the game is just a small part of it, than it should be mentioned somewhere. It a form of fals advertisment,', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'f46ffe663d714b5abefd8a6bc47eb1bb', 20211028, 1, 'For me this is GOTY worthy. What a strange and wonderfull journey it has been.', 1, '2021-10-28 19:43:43', NULL),
('e251390382fa4158b7bbdb2c8595c170', 'ff0f468648e34d838b83802b04bd081d', 20211026, 1, 'best game i played in a little bit', 1, '2021-10-27 13:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_dim`
--

CREATE TABLE `user_dim` (
  `key` char(32) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `time_created` datetime DEFAULT current_timestamp(),
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_dim`
--

INSERT INTO `user_dim` (`key`, `id`, `name`, `link`, `time_created`, `time_updated`) VALUES
('01e5f17c4dc8410fbeb4ed9e04d9fcdc', 5, 'TheWhitePawn0', 'https://steamcommunity.com/profiles/76561197961556959/', '2021-10-27 13:10:49', NULL),
('01ef53ab4965489582e3d8f7f7006e8b', 27, 'EnzoBenzoRenzo', 'https://steamcommunity.com/id/WindofZhandou/', '2021-10-27 13:12:33', NULL),
('0307648985034bb4bb6867354b97ab00', 65, 'syder', 'https://steamcommunity.com/profiles/76561198315458610/', '2021-10-28 12:30:50', NULL),
('0350112ec7264dc788ef881a93aad4d1', 151, 'cosmic_in_space', 'https://steamcommunity.com/profiles/76561199047788113/', '2021-10-29 19:05:43', NULL),
('09d338e268624504a606fb74e6fb63d0', 37, 'Mordthulhu', 'https://steamcommunity.com/id/Mordthulhu/', '2021-10-27 13:13:17', NULL),
('0a75f1c53adb4d05b351aed4268bfac8', 70, 'Naptoon', 'https://steamcommunity.com/id/The-Time-Has-Stopped/', '2021-10-28 12:30:59', NULL),
('0b5eac78176147689b4a51ce9a3f0c03', 142, 'Daz11', 'https://steamcommunity.com/id/Dazii/', '2021-10-29 19:05:33', NULL),
('0e5851812b9140cca75c6848e9f57509', 174, 'Siormax', 'https://steamcommunity.com/id/siormax/', '2021-10-29 19:06:03', NULL),
('0f793ad2866f4ccf8c8a2710ebfdcb93', 114, 'CJ3M????', 'https://steamcommunity.com/id/CJ3M/', '2021-10-28 19:43:34', NULL),
('1099875b7e3347749d099fa0fe16b3df', 95, 'Brodes', 'https://steamcommunity.com/id/Brodes/', '2021-10-28 12:31:17', NULL),
('10a96f0c0bae46099e85ec15e18e62b1', 6, 'Kaiser Hunter the 1st', 'https://steamcommunity.com/profiles/76561198289922153/', '2021-10-27 13:10:49', NULL),
('1205410ae94c43a7a08593be54dc5c9f', 20, 'Sharpslice', 'https://steamcommunity.com/id/sharpslice/', '2021-10-27 13:11:02', NULL),
('13b40c39f0134f4c843259c4bd0a2abe', 164, 'arnold.james2693', 'https://steamcommunity.com/profiles/76561198118799928/', '2021-10-29 19:05:52', NULL),
('14283252bfcd444d92e9953e7baef94e', 40, 'Pee pee poo poo man', 'https://steamcommunity.com/id/Puggohehxd/', '2021-10-27 13:14:42', NULL),
('16c6df83609d496eb1ed8d6890e9cd66', 36, 'Ic0n', 'https://steamcommunity.com/profiles/76561198073325163/', '2021-10-27 13:13:17', NULL),
('18eac86ebb254a2591c85e336657226c', 159, 'jpsaxby', 'https://steamcommunity.com/id/jpsaxby/', '2021-10-29 19:05:52', NULL),
('19731bfb81cb464bbf69aeccd94af7e4', 75, 'WeatherBomb-PC', 'https://steamcommunity.com/profiles/76561198040637581/', '2021-10-28 12:30:59', NULL),
('19b803829a9e4f888b8c87f235a79be1', 56, 'Girthquake', 'https://steamcommunity.com/id/balonboy22/', '2021-10-28 12:30:41', NULL),
('19bc5a14531049c4b2f5b2451b5ce547', 173, 'ntynite', 'https://steamcommunity.com/id/ntynite/', '2021-10-29 19:06:03', NULL),
('19bea6f08b414c3fb78267f7b6989074', 115, 'JustJakeyboi', 'https://steamcommunity.com/id/JustJakeyboi/', '2021-10-28 19:43:34', NULL),
('19d69323e68c40dfa8e3926bd8be022f', 107, 'spaghettikotze', 'https://steamcommunity.com/profiles/76561198090721586/', '2021-10-28 19:43:34', NULL),
('1b6492bba80848e29405e1b43bd65caf', 129, 'Leonilion', 'https://steamcommunity.com/id/eliasleon/', '2021-10-28 19:43:51', NULL),
('1bc701fd571341e49f94cc9d108e51b1', 137, 'hoodienleggings', 'https://steamcommunity.com/profiles/76561198805668697/', '2021-10-29 19:05:32', NULL),
('1c14b1f3d42240fdaee81b061890f8f9', 158, 'AraAra', 'https://steamcommunity.com/profiles/76561198829601107/', '2021-10-29 19:05:52', NULL),
('1c15928825664c6893775def3c647dd1', 23, 'yeahwellwhatever', 'https://steamcommunity.com/id/yeahwellwhatever/', '2021-10-27 13:12:33', NULL),
('1c8869f5da36405b8ab623194cb28f6a', 21, 'Jon Arbuckle', 'https://steamcommunity.com/id/putgarfieldbackondisneyplus/', '2021-10-27 13:12:33', NULL),
('1fa6142ecd22433b9a435528050f08b1', 12, 'Chikin', 'https://steamcommunity.com/profiles/76561198268893489/', '2021-10-27 13:11:02', NULL),
('216e7f47c97f48a5a1fbb01c4041d239', 82, 'Sal', 'https://steamcommunity.com/id/cvlamity/', '2021-10-28 12:31:08', NULL),
('244bb00effce4e98ad1131ab7887f7e9', 32, 'icewhisp', 'https://steamcommunity.com/id/icewhisp007/', '2021-10-27 13:13:17', NULL),
('24a875ee05574441871f975fa56b3f94', 172, 'Kaiser', 'https://steamcommunity.com/id/kaiserviper/', '2021-10-29 19:06:03', NULL),
('2547c472b7d7479b8c5b0897f7fc84de', 118, 'Destyx', 'https://steamcommunity.com/id/Destyx_/', '2021-10-28 19:43:43', NULL),
('25d78a6202f44ed98df27cef1a738a6e', 22, 'Broddiccus', 'https://steamcommunity.com/profiles/76561198044219286/', '2021-10-27 13:12:33', NULL),
('2b18bd73390a403e8e579df861e93a5d', 141, 'eLPee', 'https://steamcommunity.com/id/eLPeeTV/', '2021-10-29 19:05:33', NULL),
('2d8ec725706d4c96a9422f359016965e', 176, 'J. Wolf', 'https://steamcommunity.com/id/SolZeroOne/', '2021-10-29 19:06:03', NULL),
('2e794a1f523d4b62b58c908e79d32fe4', 128, 'Original Dwight', 'https://steamcommunity.com/profiles/76561199061250626/', '2021-10-28 19:43:51', NULL),
('35c5566eeebf40beb5962827efde3b92', 1, 'Edward Cullen', 'https://steamcommunity.com/id/Meowchiavelli/', '2021-10-27 13:10:49', NULL),
('36142d2353024db99aa05d763cc54bbd', 67, 'mgbro24', 'https://steamcommunity.com/profiles/76561199027784727/', '2021-10-28 12:30:50', NULL),
('3b1d2081379d4f2dacac7c4cc6fe6ddd', 127, 'Rigboogle', 'https://steamcommunity.com/id/rigbodle/', '2021-10-28 19:43:51', NULL),
('3b2b994608f842cb950a32bfb37ba7aa', 125, 'Xol', 'https://steamcommunity.com/profiles/76561198112259041/', '2021-10-28 19:43:43', NULL),
('3d49e7669aba49bd93f6c50badb6593a', 69, 'Tone Ace D.', 'https://steamcommunity.com/profiles/76561198056562294/', '2021-10-28 12:30:59', NULL),
('3d81bee470054b8cb5517985fd230f6b', 59, 'Olrikus', 'https://steamcommunity.com/profiles/76561198006249533/', '2021-10-28 12:30:50', NULL),
('4099d8b935264f799a4293e925da4014', 78, 'Bob Ross the sauce boss', 'https://steamcommunity.com/profiles/76561198244326266/', '2021-10-28 12:30:59', NULL),
('4347bb8a782a4153afbf8a7656184f20', 143, 'Saber', 'https://steamcommunity.com/profiles/76561198347385997/', '2021-10-29 19:05:33', NULL),
('437fb2ab6cf94b5ab4dca0ec3b5cd3fc', 46, 'Mehrunes Dagon', 'https://steamcommunity.com/id/TomerXZR/', '2021-10-27 13:14:42', NULL),
('46e51e82e43b4c169dec39969bfedcf8', 152, 'Fungi', 'https://steamcommunity.com/id/funnynel42/', '2021-10-29 19:05:43', NULL),
('4a406227cdcc435296e668434504433e', 85, 'DeathEviLz', 'https://steamcommunity.com/profiles/76561198175664059/', '2021-10-28 12:31:09', NULL),
('4dbd97e8a2fb40b5b4a5b01fbac90f02', 25, 'IDK', 'https://steamcommunity.com/profiles/76561198215719581/', '2021-10-27 13:12:33', NULL),
('4f489be32d7f4bf48a7e14a1845031b6', 111, 'DrKartoffelsalat', 'https://steamcommunity.com/profiles/76561198004521965/', '2021-10-28 19:43:34', NULL),
('4f589bea2d5949929e83c00cc731d3f7', 162, 'Haematology', 'https://steamcommunity.com/id/drplacebo/', '2021-10-29 19:05:52', NULL),
('4fd413226f074ba5bb8036f10cec679f', 105, 'Its_MacK', 'https://steamcommunity.com/profiles/76561199208216620/', '2021-10-28 19:43:20', NULL),
('5355ba25ef0f4375b6418c1cd1cb9391', 101, 'Suso', 'https://steamcommunity.com/profiles/76561198396420459/', '2021-10-28 19:43:20', NULL),
('54a6119f5cff4eb1949f7a87bfaf1318', 31, 'Dont.Fuck.wit.Storm. ...', 'https://steamcommunity.com/profiles/76561198134993628/', '2021-10-27 13:13:17', NULL),
('563b37a3eced4ff0b4d56310c6adbe03', 138, 'Darkchromium', 'https://steamcommunity.com/id/Darkchromium92/', '2021-10-29 19:05:32', NULL),
('57fc25bbc9f84d5f8ffdb421444d90e8', 71, 'GooYup', 'https://steamcommunity.com/profiles/76561198928607720/', '2021-10-28 12:30:59', NULL),
('5b9779c09015433582cf20ad04668bed', 146, 'eiiiuol', 'https://steamcommunity.com/profiles/76561199080878857/', '2021-10-29 19:05:33', NULL),
('5e37061a1a044ea39f5b9606207e82cf', 113, 'Jack-12', 'https://steamcommunity.com/profiles/76561198141499447/', '2021-10-28 19:43:34', NULL),
('6058b3d03a574569a2be004425fb4b35', 76, 'olidog', 'https://steamcommunity.com/id/olidawg/', '2021-10-28 12:30:59', NULL),
('62d31672502e4cd7b40865e6319407b8', 30, '香蕉拔拿那', 'https://steamcommunity.com/id/2398635774/', '2021-10-27 13:12:33', NULL),
('6375d50f1a604f69a52270fb96a0360b', 150, 'Meatbug', 'https://steamcommunity.com/id/meat_bug/', '2021-10-29 19:05:43', NULL),
('690779c010c34f6481d199dc24d099bf', 33, 'Rabid Urko', 'https://steamcommunity.com/profiles/76561197983301475/', '2021-10-27 13:13:17', NULL),
('691f700cfdb14fa48ce540cc041835a8', 171, 'lzhirkov', 'https://steamcommunity.com/profiles/76561198981154838/', '2021-10-29 19:06:03', NULL),
('69de62dca49d4016ac73c06e3f1eec4c', 133, 'ori', 'https://steamcommunity.com/profiles/76561198830470542/', '2021-10-28 19:43:51', NULL),
('6cfd59102a8b49b694060cab5ee2a231', 84, 'no.angel', 'https://steamcommunity.com/id/killme0101001/', '2021-10-28 12:31:09', NULL),
('6dd168e548484e95809cf371f7cc84be', 26, 'kburkett1231', 'https://steamcommunity.com/profiles/76561198269044624/', '2021-10-27 13:12:33', NULL),
('6dfab161015b436aa5599052754c5ce2', 92, 'Crash', 'https://steamcommunity.com/profiles/76561198055759960/', '2021-10-28 12:31:17', NULL),
('6e0a981e82a94cf08fa8359a2511d752', 13, 'Meep', 'https://steamcommunity.com/id/bruteful/', '2021-10-27 13:11:02', NULL),
('705eafb688c44de582ef139f6c688790', 91, 'Fsac', 'https://steamcommunity.com/id/fsac/', '2021-10-28 12:31:17', NULL),
('7215b7d42bfc4dfa9ffff2cd4091d872', 63, 'NemesisHeist', 'https://steamcommunity.com/profiles/76561199060700124/', '2021-10-28 12:30:50', NULL),
('7294378d69004ce4adeddf7586760424', 136, 'Internet Millionaire', 'https://steamcommunity.com/id/norbithyde/', '2021-10-28 19:43:51', NULL),
('72cc6c31de814c069736d2b7c8f9d329', 148, 'Flush', 'https://steamcommunity.com/id/Keanu/', '2021-10-29 19:05:43', NULL),
('72eb8581c66d473e9a4d441b317e1e06', 145, '[IM]mature', 'https://steamcommunity.com/profiles/76561198054063458/', '2021-10-29 19:05:33', NULL),
('74d0fbb721fb4be88e2677f59365abc1', 77, 'Dreky', 'https://steamcommunity.com/id/Immaprinnydood/', '2021-10-28 12:30:59', NULL),
('7684654e1e374bdd94561b7e38611f8b', 103, 'stormrider128', 'https://steamcommunity.com/profiles/76561197976126045/', '2021-10-28 19:43:20', NULL),
('77aaf1d84caa46ba90ace3490e11eb89', 97, 'xura', 'https://steamcommunity.com/profiles/76561198335045123/', '2021-10-28 19:43:20', NULL),
('7be322698b744e239a3ba79f436d930b', 147, 'sddsde', 'https://steamcommunity.com/profiles/76561199168455991/', '2021-10-29 19:05:43', NULL),
('7c17b41776624601bd9b5335a798cb50', 153, 'Tong', 'https://steamcommunity.com/profiles/76561198013076159/', '2021-10-29 19:05:43', NULL),
('7c786fcedc344e7f9ee0129d9f6da9da', 61, 'UnholyBiskit', 'https://steamcommunity.com/profiles/76561198025809688/', '2021-10-28 12:30:50', NULL),
('7f9e47273bc44858934002df85a662a9', 73, 'Mistage', 'https://steamcommunity.com/id/mistageprojects/', '2021-10-28 12:30:59', NULL),
('80283e22c83a403596de2815db22136e', 58, 'Talon', 'https://steamcommunity.com/id/_tokidoki_ai/', '2021-10-28 12:30:41', NULL),
('82bdcd9c63fe419faaab6daa3f8c7655', 34, 'Tim@HoodedHorse', 'https://steamcommunity.com/id/hoodedhorse/', '2021-10-27 13:13:17', NULL),
('835c563393f34476b82f78dc649fb1ff', 52, 'Black Hole Sunflower', 'https://steamcommunity.com/profiles/76561198055998523/', '2021-10-28 12:30:41', NULL),
('8425aa43f55a4438b5d4f1a7767d0a1e', 90, 'plan49', 'https://steamcommunity.com/id/plan49/', '2021-10-28 12:31:17', NULL),
('8833ee27452144638dcc37493a282ed2', 68, 'BIONICBB X', 'https://steamcommunity.com/id/bionicbb-x/', '2021-10-28 12:30:50', NULL),
('88ef32e91a5e47639c1d2d916d469646', 7, '✪ Vencen', 'https://steamcommunity.com/id/Vencen/', '2021-10-27 13:10:49', NULL),
('89218e48b4ca494783255150c733c619', 35, 'thunder_max', 'https://steamcommunity.com/profiles/76561198001976547/', '2021-10-27 13:13:17', NULL),
('8d8be88c41ac487ba5c2c20d4ac6aae8', 175, 'Young Man', 'https://steamcommunity.com/profiles/76561199115079768/', '2021-10-29 19:06:03', NULL),
('9047cb89219f42a4adf7d6d1921917d5', 165, 'Infected', 'https://steamcommunity.com/profiles/76561198061547137/', '2021-10-29 19:05:52', NULL),
('9060d54ec4b046e8874c6c60f3108ed3', 130, 'Eternity', 'https://steamcommunity.com/id/eternity774/', '2021-10-28 19:43:51', NULL),
('92be6b19cea243d78853aaa746ead896', 134, 'Lea†', 'https://steamcommunity.com/id/leafy224/', '2021-10-28 19:43:51', NULL),
('937e74d077a040ceb25400d32d2abdee', 8, 'Hesitation✅♿????', 'https://steamcommunity.com/id/hesifile/', '2021-10-27 13:10:49', NULL),
('956a762bd3864984ac7f327ce31ee157', 4, 'Predator', 'https://steamcommunity.com/profiles/76561197985667556/', '2021-10-27 13:10:49', NULL),
('98f0aabb38dc4dbd896f358c4dd743ed', 161, 'Mox', 'https://steamcommunity.com/profiles/76561197960282796/', '2021-10-29 19:05:52', NULL),
('9c412c0740c54a34b1da3d2854777dc7', 49, 'Simply V', 'https://steamcommunity.com/id/RainbowKitties6/', '2021-10-28 12:30:41', NULL),
('9cd4b9b0a4044c238f46605eb82f4433', 16, 'strange', 'https://steamcommunity.com/id/stopato/', '2021-10-27 13:11:02', NULL),
('9f925699e157457fa3af06934efa4dfa', 93, 'bababee', 'https://steamcommunity.com/profiles/76561198257107465/', '2021-10-28 12:31:17', NULL),
('a3bfd8e03d7f43cfafdf3418fbf2b7a2', 96, 'Drinkcup', 'https://steamcommunity.com/id/drinkcup/', '2021-10-28 17:54:47', NULL),
('a4002f2673a5430cb37311fa9a1bc6b1', 17, 'We\'ll do it Live!', 'https://steamcommunity.com/id/Clayskis/', '2021-10-27 13:11:02', NULL),
('a4a9af40c6cf4740b6640dbe1e32cd10', 74, 'DireRaven', 'https://steamcommunity.com/profiles/76561198150402477/', '2021-10-28 12:30:59', NULL),
('a52e587e527d4b8caed4b97f6050cbb2', 48, 'Shadow116', 'https://steamcommunity.com/id/shadow12513/', '2021-10-27 13:14:42', NULL),
('a5bde1ac08b84fe1b5b0535d71e4a016', 163, '『chemtrails』', 'https://steamcommunity.com/id/chemtrails420blazit/', '2021-10-29 19:05:52', NULL),
('a616f6c78e834fa89bc0399cb4ab4bee', 41, 'RWB Patriot D6', 'https://steamcommunity.com/profiles/76561198353439211/', '2021-10-27 13:14:42', NULL),
('a81108bb12754c608ba65a3522eb58f6', 10, 'fusion', 'https://steamcommunity.com/id/nicesnag/', '2021-10-27 13:10:49', NULL),
('a8496f840802498f850e21182555b6ef', 81, 'Lord Sunny', 'https://steamcommunity.com/id/SunnyFlowers08/', '2021-10-28 12:31:08', NULL),
('a8a9d124b32b4dc38f27d0bd8d2239c0', 120, 'KappaKappa420', 'https://steamcommunity.com/id/liutvis/', '2021-10-28 19:43:43', NULL),
('a97b98ad81654759bf1fcadea4ab5c3e', 62, 'Fl1x', 'https://steamcommunity.com/profiles/76561198912789482/', '2021-10-28 12:30:50', NULL),
('af944dc4ee76494499f75a9799f48b89', 80, 'Goldweighs', 'https://steamcommunity.com/profiles/76561198323100567/', '2021-10-28 12:31:08', NULL),
('b1004555f30e4da19e91e4fc361374dd', 89, 'KindaOver9000', 'https://steamcommunity.com/profiles/76561198065255323/', '2021-10-28 12:31:17', NULL),
('b6f8465f972f489b91b28e738e957b1c', 106, '◬ TRIΛNGLE MΛN ◬', 'https://steamcommunity.com/profiles/76561198018706672/', '2021-10-28 19:43:20', NULL),
('ba2fc2ab386d4598a180c9ea482b72f5', 51, 'TBAG TYCOON', 'https://steamcommunity.com/profiles/76561198046439527/', '2021-10-28 12:30:41', NULL),
('bca48ea7a77c4e8d96b39caf93c4ee10', 11, 'DanielF823', 'https://steamcommunity.com/id/danielf823/', '2021-10-27 13:11:02', NULL),
('bd620bab71bb4c13b4330d7b76547c0f', 140, 'slothy._.', 'https://steamcommunity.com/profiles/76561199121977964/', '2021-10-29 19:05:32', NULL),
('bd7e4f1291164ee88b37dff4940cf52a', 160, 'Scambled Eggs', 'https://steamcommunity.com/profiles/76561198072034529/', '2021-10-29 19:05:52', NULL),
('be0131e988f64e4aaee45a9715681e4b', 156, 'Mr_Creeps', 'https://steamcommunity.com/id/Mr_Creeps23/', '2021-10-29 19:05:43', NULL),
('be41eab142f040468a29b8aa66b1fc06', 83, 'Mr Water Cup', 'https://steamcommunity.com/profiles/76561198276560717/', '2021-10-28 12:31:09', NULL),
('be5c0e6b5dde46b5832437d347dd7ffd', 167, 'v³ Rainbow+', 'https://steamcommunity.com/profiles/76561198061714277/', '2021-10-29 19:06:02', NULL),
('be8891df9805479491c1e81c71b9cdd4', 19, 'dpwarfield', 'https://steamcommunity.com/id/dpwarfield/', '2021-10-27 13:11:02', NULL),
('c04272677a6e445ba73867bcf7a2c0a1', 87, 'Sloths', 'https://steamcommunity.com/id/DepressedSloth/', '2021-10-28 12:31:09', NULL),
('c1208184154a4fc7a299e93ce4a769c6', 57, 'GlowingChicken27', 'https://steamcommunity.com/id/ishan5ain/', '2021-10-28 12:30:41', NULL),
('c12e4f603c5043c9b26bbb2bf16ac411', 166, 'Drbrodie178', 'https://steamcommunity.com/profiles/76561199198817012/', '2021-10-29 19:05:53', NULL),
('c14653525561476c834a02e5a0be0efd', 18, 'lymphnodes', 'https://steamcommunity.com/profiles/76561197983321487/', '2021-10-27 13:11:02', NULL),
('c206e3f72ee74991ab98f5f5e614c9f2', 43, 'JStark superfan', 'https://steamcommunity.com/id/uzibekistan/', '2021-10-27 13:14:42', NULL),
('c2e21b4944f944f99d84155e25261f7a', 154, 'pri0x', 'https://steamcommunity.com/profiles/76561198011254534/', '2021-10-29 19:05:43', NULL),
('c39f59e1666747fe91ee05ca831c83d0', 54, 'Comic_52', 'https://steamcommunity.com/profiles/76561198254080143/', '2021-10-28 12:30:41', NULL),
('c515f062af0d42faac72f3a66f9fa9cc', 169, 'xxTravisxx', 'https://steamcommunity.com/profiles/76561198104683361/', '2021-10-29 19:06:02', NULL),
('c6fdba0079eb4aeeb73fb2c72b2bd51e', 99, 'Xenothen', 'https://steamcommunity.com/id/xenothen/', '2021-10-28 19:43:20', NULL),
('c89e877c5cc64dfdbafc8b8269213dfe', 60, 'jordanbarton', 'https://steamcommunity.com/profiles/76561199191891928/', '2021-10-28 12:30:50', NULL),
('ca146549584646c6bb949d43e0344c25', 109, 'user_request/76561197984890519/', 'https://steamcommunity.com/profiles/76561197984890519/', '2021-10-28 19:43:34', NULL),
('ccb46ccc73a340bfa5e40eabd84e56e4', 157, 'MILKnEGGs', 'https://steamcommunity.com/profiles/76561198004653913/', '2021-10-29 19:05:52', NULL),
('cd800b60f70240538d13567a8bd24a7b', 110, 'Borf', 'https://steamcommunity.com/id/OfficialBorf/', '2021-10-28 19:43:34', NULL),
('ce87dcb66e6141b59c82b8e6c4687500', 28, 'Nan', 'https://steamcommunity.com/profiles/76561198219192697/', '2021-10-27 13:12:33', NULL),
('cf7da98a3d0c40d98146d66d2be16af8', 108, 'Zeroa', 'https://steamcommunity.com/id/zeroa/', '2021-10-28 19:43:34', NULL),
('cff26f51887446818e6fb036b07c701e', 47, 'bigweeniemarkell', 'https://steamcommunity.com/profiles/76561198312319360/', '2021-10-27 13:14:42', NULL),
('cff41f25aaa34da88cb48eecbba0fe0a', 24, 'Kid', 'https://steamcommunity.com/id/kiderebus/', '2021-10-27 13:12:33', NULL),
('d0111f1434b048389511f0f5bf19515d', 45, 'mor', 'https://steamcommunity.com/id/stinkbawl/', '2021-10-27 13:14:42', NULL),
('d3df2ce381874667bc722256633817da', 42, 'PhatBootyJosh', 'https://steamcommunity.com/profiles/76561198856121822/', '2021-10-27 13:14:42', NULL),
('d3e4995c58bd46e098d7e762234791a9', 112, 'ludendorf', 'https://steamcommunity.com/profiles/76561197970355353/', '2021-10-28 19:43:34', NULL),
('d46c74259484414eb90305e62d87f60b', 39, 'ImHorngry', 'https://steamcommunity.com/profiles/76561198105818673/', '2021-10-27 13:14:42', NULL),
('d5509780b51b4e838f1a0c1861640742', 116, 'Shibagi', 'https://steamcommunity.com/id/Dietheguy/', '2021-10-28 19:43:34', NULL),
('d5ea8f5126ca471e8e6389dcea22bab1', 139, 'Bx0', 'https://steamcommunity.com/profiles/76561198037176352/', '2021-10-29 19:05:32', NULL),
('d6a04f24b37745cfb5970aa5f051cb2a', 64, 'ButterCat', 'https://steamcommunity.com/profiles/76561198301176623/', '2021-10-28 12:30:50', NULL),
('d6d05ec8c43c449e87d03be62d852310', 15, 'khoatic', 'https://steamcommunity.com/profiles/76561198003076645/', '2021-10-27 13:11:02', NULL),
('d8e19c7ed2754e7f81f6b3ddd4ef5184', 86, 'perc30intummy', 'https://steamcommunity.com/profiles/76561199156348893/', '2021-10-28 12:31:09', NULL),
('d916997659414d5da181d4625e5c6a11', 88, 'WorldZY', 'https://steamcommunity.com/id/WorldZY/', '2021-10-28 12:31:09', NULL),
('db22e4b30ab944f2a91415c4af0f4798', 50, 'Cereal Man', 'https://steamcommunity.com/profiles/76561198043555749/', '2021-10-28 12:30:41', NULL),
('db29bc59b7db48b5978d78f8faaf43c8', 72, 'Q [Rank A+]', 'https://steamcommunity.com/id/QS3V3N/', '2021-10-28 12:30:59', NULL),
('db2effcf2c0f4c9b81e64d5515fd6bd8', 135, 'Mr. Meeseeks ¯\\(ツ)/¯', 'https://steamcommunity.com/id/boernmaster/', '2021-10-28 19:43:51', NULL),
('dc4761a908734969b84ba48cbbf954ac', 144, 'Ky573r', 'https://steamcommunity.com/profiles/76561197997942451/', '2021-10-29 19:05:33', NULL),
('dedb59f28b0042d29383e28439e2af5e', 104, 'Mk17', 'https://steamcommunity.com/profiles/76561198006399406/', '2021-10-28 19:43:20', NULL),
('df3552cc1dc747eca195fd4b6d8263a7', 126, 'Domkek', 'https://steamcommunity.com/id/Domination3k/', '2021-10-28 19:43:43', NULL),
('e0709681a8c74b1b8054f428235ebaa3', 2, 'JKjoKErz', 'https://steamcommunity.com/id/JKjoKErz/', '2021-10-27 13:10:49', NULL),
('e1bf26c91f2c41afacc7e54a092bc001', 98, 'Oldman Gimpster', 'https://steamcommunity.com/profiles/76561198009509458/', '2021-10-28 19:43:20', NULL),
('e22c3a69b2ed4a778e8f55d1247f74e3', 9, 'CONDOR V', 'https://steamcommunity.com/profiles/76561197966495909/', '2021-10-27 13:10:49', NULL),
('e42d7610a7ea4e3db409e437329eaee0', 155, 'SkyZ☁', 'https://steamcommunity.com/id/mekzaza1811/', '2021-10-29 19:05:43', NULL),
('e4b5e2b8ed67432f8f7c8f32543cbe07', 94, 'Tidia', 'https://steamcommunity.com/profiles/76561198120318277/', '2021-10-28 12:31:17', NULL),
('e4e1dc2d1eab4ea7a828734618a09ff7', 121, 'FuzzyOnion', 'https://steamcommunity.com/profiles/76561198046262787/', '2021-10-28 19:43:43', NULL),
('e4e7307aa4014ca1b17218268d5d54d5', 123, 'LordIntel', 'https://steamcommunity.com/profiles/76561198026482109/', '2021-10-28 19:43:43', NULL),
('e507c3e764734fb7b4d116b2cd9d28d0', 100, 'Numero Uno', 'https://steamcommunity.com/profiles/76561198364301740/', '2021-10-28 19:43:20', NULL),
('e56f069183d1457983dd37f3b6c00a1f', 168, 'RoninAced', 'https://steamcommunity.com/profiles/76561198121208616/', '2021-10-29 19:06:02', NULL),
('e5a2f77428254df68bda564f919c4025', 122, 'Alex Louis Armstrong', 'https://steamcommunity.com/profiles/76561198137656892/', '2021-10-28 19:43:43', NULL),
('e94725548cf84494b51ee82d43a6285d', 119, 'POPS', 'https://steamcommunity.com/id/POPLONGE/', '2021-10-28 19:43:43', NULL),
('ebaf979a081a477f8ed2d1fcf73b5d39', 117, 'laezz', 'https://steamcommunity.com/profiles/76561197969322521/', '2021-10-28 19:43:43', NULL),
('ed7e8bd898ca4487ad695e77b68b298a', 79, 'REDRUM', 'https://steamcommunity.com/id/redrumt/', '2021-10-28 12:31:08', NULL),
('f07fd7694796482e9a108c8d43b7cc27', 132, 'lll', 'https://steamcommunity.com/id/junior555toto/', '2021-10-28 19:43:51', NULL),
('f10b4aae22134967bf111b00af7af7a4', 170, 'Ebola', 'https://steamcommunity.com/profiles/76561197972038714/', '2021-10-29 19:06:02', NULL),
('f46af4d51e9b4126be90c9ba2352498e', 55, 'mattmazz2000', 'https://steamcommunity.com/profiles/76561198233888424/', '2021-10-28 12:30:41', NULL),
('f46ffe663d714b5abefd8a6bc47eb1bb', 124, 'Woosaa', 'https://steamcommunity.com/profiles/76561198180920870/', '2021-10-28 19:43:43', NULL),
('f4a320e66e424f8bb7e73d735b7759fe', 3, 'Bull', 'https://steamcommunity.com/id/I_am_at_your_door/', '2021-10-27 13:10:49', NULL),
('f5d3531d71c5453398057b7133715662', 149, 'Jay', 'https://steamcommunity.com/profiles/76561199114158479/', '2021-10-29 19:05:43', NULL),
('f669282a14ed41499b36673d74e5b18a', 53, 'krssmith8', 'https://steamcommunity.com/id/SPRINXY/', '2021-10-28 12:30:41', NULL),
('f73ad6409ce44774a3408d51b8a66fc0', 38, 'yoshirules', 'https://steamcommunity.com/id/yoshirules05/', '2021-10-27 13:13:17', NULL),
('fa95e35cef7840f6aaa8830d97f3effd', 44, 'I Don\'t Like You', 'https://steamcommunity.com/id/jayqwauncash/', '2021-10-27 13:14:42', NULL),
('fbeb3da9667a460c8a772abb2773dad7', 102, 'Tuna', 'https://steamcommunity.com/profiles/76561199087597515/', '2021-10-28 19:43:20', NULL),
('fd142f3439c34ed09e34b03b874e7d51', 131, 'Anilomu', 'https://steamcommunity.com/id/Anilomu/', '2021-10-28 19:43:51', NULL),
('fd3da8b959894d978c5648a36c432650', 66, 'Can you quack like a duck?', 'https://steamcommunity.com/profiles/76561198820289947/', '2021-10-28 12:30:50', NULL),
('fd76b199f9f8447194a95e2582c06dcd', 14, 'YUNG KEV', 'https://steamcommunity.com/profiles/76561198107189953/', '2021-10-27 13:11:02', NULL),
('ff0f468648e34d838b83802b04bd081d', 29, 'XxDIAMONDTHORN', 'https://steamcommunity.com/id/dimondthron/', '2021-10-27 13:12:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_game_fact`
--
ALTER TABLE `categories_game_fact`
  ADD PRIMARY KEY (`category_key`,`game_key`),
  ADD KEY `game_key` (`game_key`);

--
-- Indexes for table `category_dim`
--
ALTER TABLE `category_dim`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `date_dim`
--
ALTER TABLE `date_dim`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `developer_dim`
--
ALTER TABLE `developer_dim`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `game_dim`
--
ALTER TABLE `game_dim`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `developer_key` (`developer_key`),
  ADD KEY `release_key` (`release_key`);

--
-- Indexes for table `reviews_fact`
--
ALTER TABLE `reviews_fact`
  ADD PRIMARY KEY (`game_key`,`user_key`,`date_key`),
  ADD KEY `user_key` (`user_key`),
  ADD KEY `date_key` (`date_key`);

--
-- Indexes for table `user_dim`
--
ALTER TABLE `user_dim`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `date_dim`
--
ALTER TABLE `date_dim`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20211032;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_game_fact`
--
ALTER TABLE `categories_game_fact`
  ADD CONSTRAINT `categories_game_fact_ibfk_1` FOREIGN KEY (`category_key`) REFERENCES `category_dim` (`key`),
  ADD CONSTRAINT `categories_game_fact_ibfk_2` FOREIGN KEY (`game_key`) REFERENCES `game_dim` (`key`);

--
-- Constraints for table `game_dim`
--
ALTER TABLE `game_dim`
  ADD CONSTRAINT `game_dim_ibfk_1` FOREIGN KEY (`developer_key`) REFERENCES `developer_dim` (`key`),
  ADD CONSTRAINT `game_dim_ibfk_2` FOREIGN KEY (`release_key`) REFERENCES `date_dim` (`key`);

--
-- Constraints for table `reviews_fact`
--
ALTER TABLE `reviews_fact`
  ADD CONSTRAINT `reviews_fact_ibfk_1` FOREIGN KEY (`game_key`) REFERENCES `game_dim` (`key`),
  ADD CONSTRAINT `reviews_fact_ibfk_2` FOREIGN KEY (`user_key`) REFERENCES `user_dim` (`key`),
  ADD CONSTRAINT `reviews_fact_ibfk_3` FOREIGN KEY (`date_key`) REFERENCES `date_dim` (`key`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
