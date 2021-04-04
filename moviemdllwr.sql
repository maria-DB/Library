-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 02:45 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `firstname`, `lastname`, `age`, `gender`, `avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Angelina', 'Jolie', '45', '1', 'default.png', '2020-09-16 07:27:15', NULL, NULL),
(2, 'Ryan', 'Reynolds', '43', '0', '1599320245.jpg', '2020-09-05 07:37:27', NULL, NULL),
(3, 'Bo-gum', 'Park', '27', '0', '1600266657.jpg', '2020-09-16 06:30:58', NULL, NULL),
(4, 'Trenz Gian', 'Guevarra', '22', '0', '1600437828.jpg', '2020-09-18 21:42:38', NULL, NULL),
(5, 'John', 'Doe', '35', '0', 'default.png', '2020-09-18 21:54:26', NULL, NULL),
(6, 'Alu', 'Edad', '20', '0', '1600524258.JPG', '2020-09-19 06:05:27', NULL, NULL),
(7, 'Martin', 'Freeman', '45', '0', 'default.png', '2020-09-20 00:22:07', NULL, NULL),
(8, 'Richard', 'Armitage', '47', '0', 'default.png', '2020-09-20 00:22:29', NULL, NULL),
(9, 'Emma', 'Stone', '31', '1', 'default.png', '2020-09-20 00:58:43', NULL, NULL),
(10, 'Adelia', 'Breitenberg', '77', '1', 'default.png', '2020-09-20 15:52:56', NULL, NULL),
(11, 'Jade', 'Lockman', '11', '2', 'default.png', '2020-09-20 15:52:56', NULL, NULL),
(12, 'Yvette', 'Gorczany', '100', '1', 'default.png', '2020-09-20 15:52:56', NULL, NULL),
(13, 'Lenny', 'Carter', '46', '1', 'default.png', '2020-09-20 15:52:56', NULL, NULL),
(14, 'Donnell', 'Connelly', '90', '2', 'default.png', '2020-09-20 15:52:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `movie_id`, `name`, `ratings`, `comment`, `email`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Guest1', '5', '\"Maleficent\" explores the untold story of Disney\'s most iconic villain from the cl***ic \"Sleeping Beauty\" and the elements of her betrayal that ultimately turn her pure heart to stone. Driven by revenge and a fierce desire to protect the moors over which she presides, Maleficent cruelly places an irrevocable curse upon the human king\'s newborn infant Aurora. As the child grows, Aurora is caught in the middle of the seething conflict between the forest kingdom she has grown to love and the human kingdom that holds her legacy. Maleficent realizes that Aurora may hold the key to peace in the land and is forced to take drastic actions that will change both worlds forever.', 'guest1@gmail.com', '2020-09-04 13:35:18', '2020-09-04 13:35:18'),
(2, NULL, 1, 'Guest2', '3', 'This movie is bull****!', 'guest2@gmail.com', '2020-09-04 13:36:13', '2020-09-04 13:36:13'),
(3, NULL, 1, 'Guest2', '1', 'this ****ing bull****', 'readelizo@yahoo.com', '2020-09-15 12:27:17', '2020-09-15 12:27:17'),
(4, NULL, 5, 'Guest1', '4', 'Nice movie. Suspense!', 'guest1@gmail.com', '2020-09-18 16:12:08', '2020-09-18 16:12:08'),
(5, 2, 5, 'John Doe', '5', 'This movie was awesome *****!', 'johndoe@gmail.com', '2020-09-19 15:30:14', '2020-09-19 15:30:14'),
(6, 1, 6, 'Angelica', '5', 'Awesome movie!', 'edadangelica@gmail.com', '2020-09-19 16:30:52', '2020-09-19 16:30:52'),
(7, 14, 6, 'Micaela Boyle DVM', '5', 'Yes sir!', 'ylubowitz@example.org', '2020-09-19 17:20:36', '2020-09-19 17:20:36'),
(8, NULL, 6, 'Dr. Terrance Flatley PhD', '4', 'March Hare, \'that \"I breathe when I got up this morning? I almost wish I\'d gone to see if he wasn\'t going to turn into a tidy little room with a little of it?\' said the Hatter: \'I\'m on the song.', 'kyla44@example.org', '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(9, NULL, 2, 'Ms. Charlene Bartell IV', '4', 'PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, timidly; \'some of the singers in the sun. (IF you don\'t even.', 'hdurgan@example.com', '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(10, NULL, 2, 'Mrs. Jayne Dooley Sr.', '5', 'I have ordered\'; and she thought there was nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it had been. But her sister sat still just as usual. I wonder if.', 'alejandrin84@example.com', '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(11, NULL, 2, 'Quincy Heathcote', '1', 'Gryphon. Alice did not dare to laugh; and, as there seemed to rise like a wild beast, screamed \'Off with her head!\' about once in a mournful tone, \'he won\'t do a thing as \"I sleep when I breathe\"!\'.', 'bosco.rosalinda@example.com', '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(12, NULL, 10, 'Claudia Prosacco', '5', 'Dormouse,\' the Queen to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice was only too glad to get to,\' said the King: \'leave out that the reason of that?\' \'In.', 'gennaro.hagenes@example.net', '2020-09-20 07:52:57', '2020-09-20 07:52:57'),
(13, 1, 10, 'Angelica', '4', 'Yes Sir!', 'edadangelica@gmail.com', '2020-09-20 07:58:18', '2020-09-20 07:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2020-09-13 08:46:27', '2020-08-21 16:07:19'),
(2, 'Fantasy', '2020-09-09 07:35:53', NULL),
(3, 'Romance', '2020-09-13 04:53:19', NULL),
(4, 'Adventure', '2020-09-19 04:58:22', NULL),
(5, 'Mystery', '2020-09-19 04:58:51', NULL),
(6, 'Thriller', '2020-09-19 04:59:06', NULL),
(7, 'Horror', '2020-09-19 04:59:20', NULL),
(8, 'Anime', '2020-09-19 05:00:06', NULL),
(9, 'Comedy', '2020-09-19 05:00:40', NULL),
(10, 'Crime', '2020-09-19 05:00:56', NULL),
(11, 'Drama', '2020-09-19 05:01:06', NULL),
(12, 'Documentary', '2020-09-19 05:01:17', NULL),
(13, 'Children&Family', '2020-09-19 05:02:53', NULL),
(14, 'History', '2020-09-19 05:01:40', NULL),
(15, 'Sports', '2020-09-19 05:01:57', NULL),
(16, 'Musical', '2020-09-19 05:02:11', NULL),
(17, 'Sci-fi', '2020-09-19 05:02:32', NULL),
(18, 'Comedy', '2020-09-20 15:52:57', NULL),
(19, 'Fantasy', '2020-09-20 15:52:57', NULL),
(20, 'Comedy', '2020-09-20 15:52:57', NULL),
(21, 'Action', '2020-09-20 15:52:57', NULL),
(22, 'SciFi', '2020-09-20 15:52:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `lang_name`, `created_at`, `updated_at`) VALUES
(1, 'EN', 'English', '2020-08-22 17:55:52', '2020-08-22 17:55:52'),
(2, 'PHP', 'Tagalog', '2020-08-22 17:56:21', '2020-08-22 17:56:21'),
(3, 'JPN', 'Japan', '2020-09-13 19:03:58', NULL),
(4, 'TO', 'PL', '2020-09-20 15:52:57', NULL),
(5, 'YO', 'NO', '2020-09-20 15:52:57', NULL),
(6, 'FO', 'HE', '2020-09-20 15:52:57', NULL),
(7, 'AZ', 'KN', '2020-09-20 15:52:57', NULL),
(8, 'ML', 'AN', '2020-09-20 15:52:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_21_022921_create_roles_table', 1),
(6, '2020_08_22_065516_create_genres_table', 3),
(7, '2020_08_22_084334_create_ratings_table', 4),
(10, '2020_08_23_085623_create_languages_table', 5),
(11, '2020_08_17_093611_create_movies_table', 6),
(12, '2020_08_20_073033_create_movie_actor_table', 7),
(13, '2020_08_19_140042_create_comments_table', 8),
(14, '2020_08_20_091854_create_producers_table', 9),
(15, '2020_08_19_065952_create_actors_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producer_id` int(10) UNSIGNED NOT NULL,
  `rated_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_release` date NOT NULL,
  `country_release` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `producer_id`, `rated_id`, `language_id`, `genre_id`, `title`, `content`, `type`, `year`, `date_release`, `country_release`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 'Maleficent 1', 'Maleficent is a fictional character who appears in Walt Disney Productions\' 16th animated feature film, Sleeping Beauty (1959). She is an evil fairy and the self-proclaimed \"Mistress of All Evil\" who, after not being invited to a christening, curses the infant Princess Aurora to \"prick her finger on the spindle of a spinning wheel and die\" before the sun sets on Aurora\'s sixteenth birthday.[2]\r\n\r\nMaleficent is based on the evil fairy godmother character in Charles Perrault\'s fairy tale Sleeping Beauty,[3] as well as the villainess who appears in the Brothers Grimm\'s retelling of the story, Little Briar Rose. Maleficent was animated by Marc Davis.\r\n\r\nShe is voiced by Eleanor Audley, who earlier voiced Lady Tremaine, Cinderella\'s evil stepmother, in Cinderella (1950). She serves as a recurring antagonist in Disney\'s House of Mouse, voiced by Lois Nettleton, and in the Kingdom Hearts video game series, voiced by Susanne Blakeslee. She was also an antagonist in the Disney Channel Original Movie Descendants, in which she was portrayed by Kristin Chenoweth.\r\n\r\nA revision of the character appeared as the protagonist in the 2014 live-action film Maleficent, portrayed by Angelina Jolie, who reprised the role in the sequel Maleficent: Mistress of Evil, which was released on October 18, 2019.[4] This version of Maleficent is portrayed as a sympathetic character, who is misunderstood in trying to protect herself and her domain from humans.', '1', '2014', '2014-05-28', 'US', 'thumb-3.jpg', '2020-09-04 21:07:35', NULL, NULL),
(2, 1, 2, 2, 1, 'The Croods', 'The Croods is a 2013 American computer-animated adventure comedy film produced by DreamWorks Animation and distributed by 20th Century Fox. The film was written and directed by Kirk DeMicco and Chris Sanders,[6] and stars the voices of Nicolas Cage, Emma Stone, Ryan Reynolds, Catherine Keener, Clark Duke, Cloris Leachman, and Randy Thom. The film is set in a fictional prehistoric Pliocene era known as \"The Croodaceous\" (a prehistoric period which contains fictional prehistoric creatures) when a caveman\'s position as a \"Leader of the Hunt\" is threatened by the arrival of a prehistoric genius who comes up with revolutionary new inventions as they trek through a dangerous but exotic land in search of a new home.\r\n\r\nThe film premiered at the 63rd Berlin International Film Festival on February 15, 2013,[7] and was released in the United States on March 22.[8] As part of the distribution deal, this was the first DreamWorks Animation film to be distributed by 20th Century Fox, since the end of their distribution deal with Paramount Pictures.[9] The Croods received generally positive reviews, and proved to be a box office success, earning more than $587 million on a budget of $135–175 million. It was nominated for an Academy Award for Best Animated Feature and a Golden Globe Award for Best Animated Feature Film. The film launched a new franchise,[10] with a television series, Dawn of the Croods, which debuted on December 24, 2015 on Netflix.[11] A sequel directed by Joel Crawford is set to be released on December 23, 2020.', '0', '2013', '2013-03-22', 'US', 'slide-1.jpg', '2020-09-04 21:07:37', NULL, NULL),
(3, 4, 1, 3, 8, 'Your Name', 'Kimi no Na wa is a 2016 Japanese animated romantic fantasy film written and directed by Makoto Shinkai, and produced by CoMix Wave Films. It was produced by Kōichirō Itō and Katsuhiro Takei, with animation direction by Masashi Ando, character designs by Masayoshi Tanaka, and music composed by Radwimps. Your Name tells the story of a high school boy in Tokyo and a high school girl in a rural town, who suddenly and inexplicably begin to swap bodies. The film stars the voices of Ryunosuke Kamiki, Mone Kamishiraishi, Masami Nagasawa and Etsuko Ichihara. Shinkai\'s eponymous novel was published a month before the film\'s premiere.', '1', '2016', '2016-08-26', 'Japan', '1600672685.jpg', '2020-09-21 07:18:06', NULL, NULL),
(4, 4, 3, 1, 8, 'Deep Blue Sea 3', 'Dr. Emma Collins and her team are spending their third summer on the island of Little Happy studying the effect of climate change on the great white sharks who come to the nearby nursery every year to give birth. However, their peaceful life is disrupted when a \"scientific\" team shows up looking for three bull sharks.', '1', '2020', '2020-07-28', 'US', '1600502994.jpg', '2020-09-19 23:10:19', NULL, NULL),
(5, 3, 1, 1, 3, 'The Hobbit', 'The Hobbit, or There and Back Again is a children\'s fantasy novel by English author J. R. R. Tolkien. It was published on 21 September 1937 to wide critical acclaim, being nominated for the Carnegie Medal and awarded a prize from the New York Herald Tribune for best juvenile fiction. The book remains popular and is recognized as a classic in children\'s literature. The Hobbit is set within Tolkien\'s fictional universe and follows the quest of home-loving Bilbo Baggins, the titular hobbit, to win a share of the treasure guarded by Smaug the dragon. Bilbo\'s journey takes him from light-hearted, rural surroundings into more sinister territory. The story is told in the form of an episodic quest, and most chapters introduce a specific creature or type of creature of Tolkien\'s geography. Bilbo gains a new level of maturity, competence, and wisdom by accepting the disreputable, romantic, fey, and adventurous sides of his nature and applying his wits and common sense. The story reaches its climax in the Battle of Five Armies, where many of the characters and creatures from earlier chapters re-emerge to engage in conflict. Personal growth and forms of heroism are central themes of the story, along with motifs of warfare. These themes have led critics to view Tolkien\'s own experiences during World War I as instrumental in shaping the story. The author\'s scholarly knowledge of Germanic philology and interest in mythology and fairy tales are often noted as influences. The publisher was encouraged by the book\'s critical and financial success and, therefore, requested a sequel. As Tolkien\'s work progressed on the successor The Lord of the Rings, he made retrospective accommodations for it in The Hobbit. These few but significant changes were integrated into the second edition. Further editions followed with minor emendations, including those reflecting Tolkien\'s changing concept of the world into which Bilbo stumbled. The work has never been out of print. Its ongoing legacy encompasses many adaptations for stage, screen, radio, board games, and video games. Several of these adaptations have received critical recognition on their own merits.', '1', '2012', '2012-12-13', 'US', '1600590311.jpg', '2020-09-20 15:50:52', NULL, NULL),
(6, 2, 3, 5, 9, 'Interstellar', 'While the Owl and the little door, so she set to work at once and put back into the court, by the officers of the players to be no use going back to the rose-tree, she went on eagerly: \'There is such a capital one for catching mice--oh, I beg your pardon!\' cried Alice hastily, afraid that it would like the three gardeners, but she could not be denied, so she tried to curtsey as she could. \'The game\'s going on within--a constant.', '0', '1994', '2008-12-25', 'NI', '1600671018.jpg', '2020-09-21 06:50:19', NULL, NULL),
(7, 1, 4, 2, 7, 'Drive', 'The King\'s argument was, that you couldn\'t cut off a head could be NO mistake about it: it was addressed to the Knave of Hearts, and I shall have some fun now!\' thought Alice. One of the party went back to finish his story. CHAPTER IV. The Rabbit Sends in a very decided tone: \'tell her something worth hearing. For some minutes it puffed away without speaking, but at last she spread out her hand, and a fall, and a pair of white kid gloves, and was just possible it had some kind of serpent, that\'s all I can say.\' This was not going to dive in among the branches, and every now and then a row of lamps hanging from the trees had a VERY turn-up nose, much more like a telescope! I think I can find them.\' As she said to herself; \'I should like to hear her try and repeat \"\'TIS THE VOICE OF THE.', '0', '2018', '1999-01-23', 'FJ', '1600671198.jpg', '2020-09-21 06:53:19', NULL, NULL),
(8, 4, 3, 3, 4, 'Good Will Hunting', 'Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Mock Turtle. \'Certainly not!\' said Alice in a day did you manage on the song, \'I\'d have said to one of the reeds--the rattling teacups would change to dull reality--the grass would be four thousand miles down, I think--\' (for, you see, as she tucked it away under her arm, that it was very uncomfortable, and, as the March Hare said--\' \'I didn\'t!\' the March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister sat still and said anxiously to herself, for she was saying, and the Gryphon as if he doesn\'t begin.\' But she went on, \'I must be.', '0', '1978', '1994-02-08', 'MR', '1600694770.jpg', '2020-09-21 13:26:10', NULL, NULL),
(9, 2, 4, 5, 1, 'Snatch', 'The March Hare said--\' \'I didn\'t!\' the March Hare took the place of the Gryphon, and the choking of the court,\" and I never knew so much at first, but, after watching it a minute or two, looking for eggs, I know THAT well enough; and what does it to be sure, she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon in a trembling voice:-- \'I passed by his garden, and marked, with one eye, How the Owl had the dish as its share of the table. \'Nothing.', '1', '2001', '1973-01-06', 'VG', '1600671494.jpg', '2020-09-21 06:58:14', NULL, NULL),
(10, 1, 3, 1, 1, 'Creed', 'Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said the Queen, the royal children, and everybody laughed, \'Let the jury wrote it down into a large plate came skimming out, straight at the Mouse\'s tail; \'but why do you like to see that the way wherever she wanted much to know, but the cook tulip-roots instead of the jury wrote it down into a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and handed them round as.', '1', '1976', '1977-12-04', 'US', '1600617417.jpg', '2020-09-23 03:27:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`id`, `actor_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 2, 5, NULL, NULL),
(5, 4, 4, NULL, NULL),
(6, 6, 8, NULL, NULL),
(7, 5, 6, NULL, NULL),
(8, 9, 3, NULL, NULL),
(9, 7, 5, '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(10, 3, 4, '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(11, 9, 7, '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(12, 6, 10, '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(13, 4, 9, '2020-09-20 07:52:56', '2020-09-20 07:52:56'),
(14, 2, 10, NULL, NULL),
(15, 2, 6, NULL, NULL),
(16, 3, 6, NULL, NULL),
(17, 2, 7, NULL, NULL),
(18, 13, 8, NULL, NULL),
(19, 14, 9, NULL, NULL),
(20, 8, 3, NULL, NULL),
(21, 11, 8, NULL, NULL),
(22, 3, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `firstname`, `lastname`, `age`, `created_at`, `updated_at`) VALUES
(1, 'Angela', 'Dagoro', '20', '2020-09-16 05:35:47', NULL),
(2, 'Ryan', 'Reynolds', '43', '2020-09-16 05:35:37', NULL),
(3, 'Makoto', 'Shinkai', '47', '2020-09-16 05:34:56', NULL),
(4, 'Peter', 'Jackson', '42', '2020-09-20 00:23:03', NULL),
(5, 'Sandy', 'Kshlerin', '44', '2020-09-20 15:52:57', NULL),
(6, 'Kianna', 'Hahn', '74', '2020-09-20 15:52:57', NULL),
(7, 'Terry', 'Bruen', '52', '2020-09-20 15:52:57', NULL),
(8, 'Simone', 'Bailey', '33', '2020-09-20 15:52:57', NULL),
(9, 'Nasir', 'Ledner', '17', '2020-09-20 15:52:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rated`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PG', 'Parental Guidance', '2020-08-21 17:06:33', '2020-08-21 17:06:33'),
(2, 'G', 'General', '2020-08-21 17:07:54', '2020-08-21 17:07:54'),
(3, 'SPG', 'Strong Parental Guidance', '2020-08-21 17:08:13', '2020-08-21 17:08:13'),
(4, 'R-18', 'RESTRICTED–18', '2020-09-19 05:57:34', NULL),
(5, 'PG-13', 'Strong Parental Guidance', '2020-09-19 05:59:43', NULL),
(6, 'PG-13', 'Restricted', '2020-09-20 15:52:57', NULL),
(7, 'PG-13', 'Adults Only', '2020-09-20 15:52:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2020-09-18 20:23:40', NULL),
(2, 'normal_user', 'Normal User', '2020-09-18 20:23:40', NULL),
(3, 'guest_user', 'Administrator', '2020-09-20 07:52:57', '2020-09-20 07:52:57'),
(4, 'superadmin', 'Accounting Supervisor', '2020-09-20 07:52:58', '2020-09-20 07:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `nickname`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Angelica', 'Angel', 'edadangelica@gmail.com', '1597980795.jpg', NULL, '$2y$10$tzeQWtRfM01dqSMrRRimduEbxJcket2QWslJ9i1rM7cZtFEx7t/Lu', NULL, '2020-08-20 11:33:16', '2020-08-20 11:33:16'),
(2, 2, 'John Doe', 'john', 'johndoe@gmail.com', 'default.png', NULL, '$2y$10$tzeQWtRfM01dqSMrRRimduEbxJcket2QWslJ9i1rM7cZtFEx7t/Lu', NULL, '2020-09-18 19:50:22', '2020-09-18 19:50:24'),
(3, 2, 'Maria Arellano', 'maria', 'maria@gmail.com', 'default.png', NULL, '$2y$10$tzeQWtRfM01dqSMrRRimduEbxJcket2QWslJ9i1rM7cZtFEx7t/Lu', NULL, '2020-09-18 19:54:45', '2020-09-18 19:54:46'),
(4, 2, 'Cameron Weissnat', 'Simone Satterfield', 'willa.johnson@example.com', 'default.png', '2020-09-20 07:52:58', '$2y$10$6gBIE1/paWS.Z9Rc7JIH6OF/SbMcCSzpdpOW4cq5czRmVCj47lqP2', 'LkEDbbSoLM', '2020-09-20 07:52:58', '2020-09-20 07:52:58'),
(5, 2, 'Sammie Schroeder', 'Natalia Fahey MD', 'pbernier@example.net', 'default.png', '2020-09-20 07:52:58', '$2y$10$6gBIE1/paWS.Z9Rc7JIH6OF/SbMcCSzpdpOW4cq5czRmVCj47lqP2', 'jpdz4DHO2N', '2020-09-20 07:52:58', '2020-09-20 07:52:58'),
(6, 2, 'Dr. Madonna Sipes III', 'Elmo Altenwerth Jr.', 'jarrett52@example.net', 'default.png', '2020-09-20 07:52:58', '$2y$10$6gBIE1/paWS.Z9Rc7JIH6OF/SbMcCSzpdpOW4cq5czRmVCj47lqP2', 'TGauNBvX1C', '2020-09-20 07:52:58', '2020-09-20 07:52:58'),
(7, 2, 'Cyril O\'Connell', 'Felicity Hayes', 'gutmann.jermaine@example.com', 'default.png', '2020-09-20 07:52:58', '$2y$10$6gBIE1/paWS.Z9Rc7JIH6OF/SbMcCSzpdpOW4cq5czRmVCj47lqP2', 'RzvEu8DgSi', '2020-09-20 07:52:58', '2020-09-20 07:52:58'),
(8, 2, 'Rick Schulist IV', 'Luther Lowe', 'meda81@example.org', 'default.png', '2020-09-20 07:52:58', '$2y$10$6gBIE1/paWS.Z9Rc7JIH6OF/SbMcCSzpdpOW4cq5czRmVCj47lqP2', '8sRTrrQh4d', '2020-09-20 07:52:58', '2020-09-20 07:52:58'),
(9, 2, 'Juan Ponce', 'juan', 'juanponce@gmail.com', '1600850709.jpg', NULL, '$2y$10$MwQIcx1OaKvQGxCb81zsKOTTkMUuYGNGWZgH3UR.6Z94jMXeyFr9m', NULL, '2020-09-23 00:45:10', '2020-09-23 00:45:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
