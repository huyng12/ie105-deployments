-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 02:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'OOP'),
(3, 'PHP'),
(9, 'NodeJS'),
(13, 'Javascript'),
(17, 'Java'),
(18, 'Objective C');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 3, 'Quang Pham', 'quang@gmail.com', 'Thank you, i love you guys', 'approved', '2021-11-10'),
(5, 4, 'Eula', 'eulacyogmailcom', 'Cryo Blade', 'approved', '2021-11-28'),
(6, 4, 'Amber', 'amberdryocryocom', 'usagi', 'approved', '2021-11-28'),
(7, 3, 'lumine', 'luminegmaillumine', 'Lumine eat paimon', 'unapproved', '2021-11-28'),
(8, 3, 'lumine', 'luminegmaillumine', 'Lumine eat paimon', 'approved', '2021-11-28'),
(9, 8, 'Amber', 'amberdryocryocom', 'love ho', 'unapproved', '2021-11-28'),
(10, 6, 'Quang Pham', 'quanggodgmailcom', 'Hello world I am GOD', 'approved', '2021-11-29'),
(13, 6, 'Cindy', 'cidyn@gmcindy.com', 'Hello World', 'approved', '2021-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(3) NOT NULL,
  `message_author_email` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `created_at` date NOT NULL,
  `message_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `message_author_email`, `message_content`, `created_at`, `message_status`) VALUES
(3, 'quang@gmail.com', 'I love this page', '2021-11-29', 0),
(4, 'pham@gmail.com', 'I hate this page', '2021-11-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(6, 1, 'JavaScript', 'Quang Pham', '2021-11-30', 'image_2.jpg', 'nothing', 'java course javascript', 2, 'published', 0),
(7, 1, 'OOP', 'Quang Pham', '2021-11-30', 'image_3.jpg', 'OOP for family', 'boostrap oop', 0, 'draft', 0),
(9, 9, 'NodeJS', 'NodeJS Consumer', '2021-11-28', 'image_5.jpg', 'Node Node Node Node Node', 'java course javascript nodejs', 0, 'published', 0),
(10, 1, 'Java Datastructure and Algorithm', 'Java Creator', '2021-11-30', 'image_5.jpg', 'Java Great Course', 'java course java', 0, 'draft', 0),
(11, 1, 'OOP in PHP', 'PHPer', '2021-11-30', 'image_1.jpg', 'pTirednbspp', 'php oop in', 0, 'published', 0),
(12, 18, 'Objective C new features', 'C minus minus', '2021-11-30', 'image_2.jpg', 'pHi hi hi hi hi hi hi hi hi hinbspp', 'c minus objective new features', 0, 'published', 0),
(13, 1, 'JavaScript', 'Quang Pham', '2021-11-30', 'image_2.jpg', 'nothing', 'java course javascript', 2, 'published', 0),
(14, 1, 'OOP', 'Quang Pham', '2021-11-30', 'image_3.jpg', 'OOP for family', 'boostrap oop', 0, 'draft', 0),
(15, 9, 'NodeJS', 'NodeJS Consumer', '2021-11-30', 'image_5.jpg', 'Node Node Node Node Node', 'java course javascript nodejs', 0, 'published', 0),
(16, 9, 'NodeJS', 'NodeJS Consumer', '2021-11-30', 'image_5.jpg', 'Node Node Node Node Node', 'java course javascript nodejs', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` int(11) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(28, 'admin', '$2y$10$iusesomecrazystrings2uwxqVj7J7zQRBheEH.fn4YwpBoRp5IC6', '', '', 'admin@admin.com', 0, 'admin', '$2y$10$iusesomecrazystrings22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
