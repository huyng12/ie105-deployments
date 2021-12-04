-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 01:53 PM
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
(18, 'Objective C'),
(19, 'HTML  CSS');

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
(10, 6, 'Quang Pham', 'quanggodgmailcom', 'Hello world I am GOD', 'approved', '2021-11-29'),
(13, 6, 'Cindy', 'cidyn@gmcindy.com', 'Hello World', 'approved', '2021-11-30'),
(14, 6, 'Aether', 'aether@gmail.com', 'hi world', 'approved', '2021-12-02'),
(15, 9, 'Khung Long Xanh', 'khunglongxanh@khunglong.xanh', 'Tao la Khung Long Xanh o Vinh Long', 'approved', '2021-12-02');

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
(4, 'pham@gmail.com', 'I hate this page', '2021-11-29', 0),
(5, 'quang@gmail.com', 'adasdasdsadasdasda', '2021-12-02', 0),
(6, 'pham@gmail.com', 'Nice web', '2021-12-02', 0);

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
(6, 1, 'JavaScript', 'Quang Pham', '2021-11-30', 'image_2.jpg', 'nothing', 'java course javascript', 3, 'published', 10),
(7, 1, 'OOP', 'Quang Pham', '2021-11-30', 'image_3.jpg', 'OOP for family', 'boostrap oop', 0, 'draft', 1),
(9, 9, 'NodeJS', 'NodeJS Consumer', '2021-11-28', 'image_5.jpg', 'Node Node Node Node Node', 'java course javascript nodejs', 1, 'published', 7),
(10, 17, 'Java Datastructure and Algorithm', 'Java Creator', '2021-12-02', 'image_5.jpg', 'Java Great Course', 'java course java', 0, 'draft', 0),
(11, 1, 'OOP in PHP', 'PHPer', '2021-11-30', 'image_1.jpg', 'pTirednbspp', 'php oop in', 0, 'published', 2),
(13, 13, 'JavaScript', 'Quang Pham', '2021-12-02', 'image_2.jpg', 'nothing', 'java course javascript', 2, 'published', 1),
(14, 3, 'PHP', 'Quang Pham', '2021-12-02', 'image_3.jpg', 'OOP for family', 'boostrap oop', 0, 'draft', 0),
(16, 9, 'NodeJS', 'NodeJS Consumer', '2021-12-02', 'image_5.jpg', 'Node Node Node Node Node', 'java course javascript nodejs', 0, 'published', 4),
(17, 1, 'Design Patern', 'Khung Long XANH', '2021-12-02', 'Logo_UIT.jpg', 'Cay nha la vuon', 'oop design patern xanh khung long', 0, 'published', 2),
(18, 1, 'HTML  CSS', 'Khung Long XANH', '2021-12-02', 'Logo_UIT.jpg', 'Cay nha la vuon', 'html css khung long xanh', 0, 'published', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL DEFAULT 'CMS',
  `user_lastname` varchar(255) NOT NULL DEFAULT 'User',
  `user_email` varchar(255) NOT NULL,
  `user_image` int(11) NOT NULL DEFAULT 0,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(28, 'admin', '$2y$10$iusesomecrazystrings2uwxqVj7J7zQRBheEH.fn4YwpBoRp5IC6', 'Pham', 'Quang', 'admin@admin.com', 0, 'admin', '$2y$10$iusesomecrazystrings22'),
(30, 'user', '$2y$10$iusesomecrazystrings2uhdMPokOSZ/iRZh9BuNsp5gZKUni49l6', '', '', 'user@gmail.com', 0, 'subscriber', '$2y$10$iusesomecrazystrings22'),
(31, 'pham', '$2y$10$iusesomecrazystrings2udZBU0l16f05DtgRfq4NftXpHR9rQDMC', '', '', 'pham@gmail.com', 0, 'admin', '$2y$10$iusesomecrazystrings22'),
(32, 'thanh', '$2y$10$iusesomecrazystrings2uBcF3w/ZfQQCoXePdbRYiafpHx8q99x2', '', '', 'thanh@gmail.com', 0, 'subscriber', '$2y$10$iusesomecrazystrings22');

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
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
