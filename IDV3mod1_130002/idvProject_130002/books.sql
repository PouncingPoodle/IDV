-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2015 at 10:23 PM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

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
  `id` int(11) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(25) NOT NULL,
  `rating` int(5) NOT NULL,
  `imgurl` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `free` varchar(15) NOT NULL,
  `recent` varchar(1) NOT NULL,
  `recommend` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `genre`, `title`, `author`, `rating`, `imgurl`, `summary`, `free`, `recent`, `recommend`) VALUES
(1, 'Novel', 'Charlie and the Chocolate Factory', 'Roald Dahl', 5, 'images/charlie.jpg', 'Charlie and the Chocolate Factory is a 1964 children''s book by British author Roald Dahl. The story features the adventures of young Charlie Bucket inside the chocolate factory of eccentric...', 'FREE SAMPLE', '1', '1'),
(2, 'Novel', 'James and the Giant Peach', 'Roald Dahl', 4, 'images/james.jpg', 'A boy named James Henry Trotter, 4 years old, lives with his loving parents in a pretty and bright cottage by the sea in the south of England. James''s world is turned upside down when...', 'FREE SAMPLE', '1', '1'),
(3, 'Academic Journal', 'What comes after Carnaby street?', 'Hughes-Stanton, C', 3, 'images/journals.png', 'In this article Corin Hughes-Stanton analyses the impact of Pop or Post-Modern design symbolised by Carnaby Street. He suggests that it is not, as many claim, a passing fashion...', 'FREE SAMPLE', '0', '0'),
(4, 'Academic Books', 'Defining Postmodernism', 'Keep, C', 3, 'images/acadbooks.jpg', 'The term postmodernism, as applied to the law, has engendered much\ncontroversy.\n It has been called “dangerous”2\n and characterized as\n“trendy”3\n by some and “useless” or “irrelevant” by others...', 'Buy the book', '0', '0'),
(5, 'Academic Journal', 'Re-learning Postmodernism', 'Moszkowicz, J', 5, 'images/journals.png', 'This article provides a historical understanding of the term postmodernism, in light of its use by members of the British design community in the late 1960s...', 'Buy the book', '0', '0'),
(6, 'Short stories', 'The Cactus', 'Henry, O', 2, 'images/shortstories.jpg', 'The most notable thing about Time is that it is so purely relative. A large amount of reminiscence is, by common consent, conceded to the drowning man; and it is not past belief that one may review an', 'FREE SAMPLE', '0', '1'),
(9, 'Short stories', 'A Vine on a House', 'Ambrose Bierce', 4, 'images/shortstories.jpg', 'About three miles from the little town of Norton, in Missouri, on the road leading to Maysville, stands an old house that was last occupied by a family named Harding...', 'FREE SAMPLE', '0', '1'),
(10, 'Short stories', 'The Skylight Room', 'Henry, O', 3, 'images/shortstories.jpg', 'First Mrs. Parker would show you the double parlours. You would not dare to interrupt her description of their advantages and of the merits of the gentleman who had occupied them for eight years...', 'Buy the book', '0', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
