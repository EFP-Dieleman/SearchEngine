-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 07:22 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x5search`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `person_id` int NOT NULL,
  `movie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`person_id`, `movie_id`) VALUES
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `label`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Fantasy'),
(5, 'Horror'),
(6, 'Mystery'),
(7, 'Romance'),
(8, 'Thriller'),
(9, 'Western'),
(10, 'Sci-Fi'),
(11, 'Adventure'),
(12, 'Animation'),
(13, 'Crime'),
(14, 'Documentary'),
(15, 'Family'),
(16, 'Musical'),
(17, 'War'),
(18, 'Biography'),
(19, 'Sport'),
(20, 'History'),
(21, 'Short'),
(22, 'Music'),
(23, 'News'),
(24, 'Reality-TV'),
(25, 'Game-Show'),
(26, 'Talk-Show'),
(27, 'Film-Noir'),
(28, 'Adult'),
(29, 'Experimental'),
(30, 'Parody');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int NOT NULL,
  `label` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `released` int NOT NULL COMMENT 'year of release'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `label`, `review`, `realeased`) VALUES
(1, 'The Great Escape', 'A nail-biting thriller with a twist you won\'t see coming.', 2001),
(2, 'Love in Paris', 'Romantic comedy with a heartwarming ending.', 2002),
(3, 'The Space Odyssey', 'A sci-fi adventure that will blow your mind.', 2003),
(4, 'Haunted Nights', 'Horror at its finest, will keep you up all night.', 2004),
(5, 'The Detective', 'A mystery that will leave you guessing till the end.', 2005),
(6, 'Family Ties', 'A beautiful family story that will warm your heart.', 2006),
(7, 'War and Peace', 'A war drama with a powerful message.', 2007),
(8, 'Music of Life', 'A musical journey through life\'s ups and downs.', 2008),
(9, 'The Sports Legend', 'An inspiring sports biopic.', 2009),
(10, 'History Repeats', 'A historical drama with a modern twist.', 2010),
(11, 'The Short Story', 'A collection of short films that pack a punch.', 2011),
(12, 'Animated Adventures', 'Fun for all ages, animation at its best.', 2012),
(13, 'Crime Scene', 'A gritty crime drama with unexpected turns.', 2013),
(14, 'Life Documented', 'A documentary that will change your perspective.', 2014),
(15, 'The Big Game', 'A sports drama that keeps you on the edge of your seat.', 2015),
(16, 'Time Traveller', 'A sci-fi thriller with mind-bending time travel.', 2016),
(17, 'Love in Bloom', 'A romantic comedy that\'s irresistibly charming.', 2017),
(18, 'The Fantasy Realm', 'A magical fantasy adventure.', 2018),
(19, 'The Western Hero', 'Classic western with a modern touch.', 2019),
(20, 'Reality Check', 'A reality TV show that is surprisingly deep.', 2020),
(21, 'Musical Extravaganza', 'A musical that will make you want to sing along.', 2021),
(22, 'The Historical Epic', 'A grand historical drama.', 2022),
(23, 'Crime Busters', 'A comedy crime caper.', 2023),
(24, 'Mystery Mansion', 'A thrilling mystery set in a spooky mansion.', 2024),
(25, 'Thrill Ride', 'An action-packed thriller.', 2025),
(26, 'Romantic Escapades', 'Romance that makes your heart flutter.', 2026),
(27, 'Fantasy Journey', 'A journey through fantastical lands.', 2027),
(28, 'Horror House', 'Horror that will give you chills.', 2028),
(29, 'Sci-Fi Spectacle', 'A sci-fi adventure that\'s out of this world.', 2029),
(30, 'Comedy Club', 'Laugh out loud comedy that never gets old.', 2030);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int NOT NULL,
  `label` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `birthyear` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `label`, `biography`, `birthyear`) VALUES
(1, 'John Doe', 'Born to act, destined to entertain. Loves pineapple on pizza.', 1971),
(2, 'Jane Smith', 'A leading lady with a penchant for mystery novels.', 1972),
(3, 'Tom Johnson', 'Action hero by day, jazz musician by night.', 1973),
(4, 'Emily Davis', 'Comedy queen with a heart of gold and a contagious laugh.', 1974),
(5, 'Michael Brown', 'Drama king who can cry on command.', 1975),
(6, 'Sarah Wilson', 'Sci-fi enthusiast and space travel advocate.', 1976),
(7, 'Chris Taylor', 'Romance specialist who believes in true love.', 1977),
(8, 'Jessica White', 'Fantasy aficionado with a love for unicorns.', 1978),
(9, 'Daniel Harris', 'Horror maestro who lives for the scare.', 1979),
(10, 'Laura Martin', 'Mystery maven with a knack for solving puzzles.', 1980),
(11, 'David Thompson', 'Family man and renowned voice actor.', 1981),
(12, 'Linda Anderson', 'War film veteran with a fierce spirit.', 1982),
(13, 'James Lee', 'Musical talent with a voice like velvet.', 1983),
(14, 'Patricia Walker', 'Sporty and inspiring, a true athlete.', 1984),
(15, 'Robert Hall', 'History buff with a love for reenactments.', 1985),
(16, 'Elizabeth Young', 'Short film creator with a big imagination.', 1986),
(17, 'Paul King', 'Animation wizard who brings characters to life.', 1987),
(18, 'Jennifer Wright', 'Crime drama expert with a gritty edge.', 1988),
(19, 'Kevin Scott', 'Documentary filmmaker with a passion for truth.', 1989),
(20, 'Karen Green', 'Game show host with boundless energy.', 1990),
(21, 'Brian Baker', 'Talk show host who never shies away from tough questions.', 1991),
(22, 'Mary Adams', 'Film noir star with a mysterious aura.', 1992),
(23, 'Steven Roberts', 'Adult film actor with a surprising intellect.', 1993),
(24, 'Barbara Phillips', 'Experimental filmmaker who breaks all the rules.', 1994),
(25, 'Edward Evans', 'Parody master with a sharp wit.', 1995),
(26, 'Susan Campbell', 'Documentary star who brings stories to life.', 1996),
(27, 'Charles Rodriguez', 'Historical drama actor with a regal bearing.', 1997),
(28, 'Michelle Parker', 'Animated film voice artist with a bubbly personality.', 1998),
(29, 'Thomas Moore', 'Sport film star who lives for the game.', 1999),
(30, 'Ashley Turner', 'Fantasy film star who believes in magic.', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `person_id` int NOT NULL,
  `movie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`person_id`, `movie_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(30, 12),
(10, 12),
(27, 12),
(30, 24);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `label`) VALUES
(1, 'Courage'),
(2, 'Love'),
(3, 'Betrayal'),
(4, 'Friendship'),
(5, 'Adventure'),
(6, 'Mystery'),
(7, 'Justice'),
(8, 'Survival'),
(9, 'Redemption'),
(10, 'Sacrifice'),
(11, 'Power'),
(12, 'Revenge'),
(13, 'Freedom'),
(14, 'Hope'),
(15, 'Despair'),
(16, 'Greed'),
(17, 'Faith'),
(18, 'Glory'),
(19, 'Honor'),
(20, 'Peace'),
(21, 'Chaos'),
(22, 'Destiny'),
(23, 'Truth'),
(24, 'Wisdom'),
(25, 'Fear'),
(26, 'Joy'),
(27, 'Sadness'),
(28, 'Courage'),
(29, 'Love'),
(30, 'Harmony');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
