-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 01:13 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lib_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(25) NOT NULL,
  `rating` int(5) NOT NULL,
  `imgurl` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `genre`, `title`, `author`, `rating`, `imgurl`, `summary`) VALUES
(1, 'Novel', 'Charlie and the Chocolate Factory', 'Roald Dahl', 5, 'images/charlie.jpg', 'Charlie and the Chocolate Factory is a 1964 children''s book by British author Roald Dahl. The story features the adventures of young Charlie Bucket inside the chocolate factory of eccentric …'),
(2, 'Novel', 'James and the Giant Peach', 'Roald Dahl', 4, 'images/james.jpg', 'A boy named James Henry Trotter, 4 years old, lives with his loving parents in a pretty and bright cottage by the sea in the south of England. James''s world is turned upside down when...'),
(3, 'Academic Journals', 'What comes after Carnaby street?', 'Hughes-Stanton, C', 3, '', ''),
(4, 'Academic Books', 'Defining Postmodernism', 'Keep, C', 3, '', ''),
(5, 'Academic Papers', 'Re-learning Postmodernism in the history of graphi', 'Moszkowicz, J', 5, '', ''),
(6, 'Academic Papers', 'Re-learning Postmodernism in the history of graphi', 'Moszkowicz, J', 5, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
