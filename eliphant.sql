-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 08:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eliphant`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desp` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `sub_title`, `title`, `desp`, `action_name`, `link`, `photo`) VALUES
(1, 'Theme Developer', 'William Stephen', 'I work in the spot for innovation, somewhere between strategy, design and technology.I love the Web and the work we do.', 'About Me', 'https://app.creativeitinstitute.com', 'banner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `id` int NOT NULL,
  `topic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`id`, `topic`, `percentage`, `status`) VALUES
(28, 'HTML', 95, 1),
(29, 'CSS', 85, 1),
(30, 'JAVA SCRIPT', 90, 1),
(32, 'PHP', 75, 1),
(33, 'Iusto ea perspiciati', 31, 1),
(34, 'Fugiat qui officia d', 26, 1),
(35, 'Aliquam sit nisi pr', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `footerlogos`
--

CREATE TABLE `footerlogos` (
  `id` int NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footerlogos`
--

INSERT INTO `footerlogos` (`id`, `logo`) VALUES
(1, 'footer_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`) VALUES
(1, 'main_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `menu_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_link` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_link`) VALUES
(20, 'Home', '#home'),
(21, 'Expertise', '#skillbar'),
(22, 'Protfolio', '#portfolio'),
(23, 'Service', '#service'),
(24, 'Testimonial', '#testimonial'),
(25, 'Contact', '#contact'),
(27, 'Dashboard', 'dashboard.php');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`) VALUES
(4, 'Dean Cunningham', 'powi@mailinator.com', 'Ut vitae irure et la', 'Quis proident et nu', '1', NULL),
(5, 'Keelie Buchanan', 'qabo@mailinator.com', 'Voluptatem in recus', 'Nisi in commodo magn', '1', NULL),
(6, 'Kristen Chaney', 'vepico@mailinator.com', 'Asperiores pariatur', 'Enim sit exercitati', '1', NULL),
(7, 'Xerxes Salinas', 'nuhanimi@mailinator.com', 'Atque at esse assum', 'In similique amet e', '1', NULL),
(9, 'Keaton Townsend', 'nojoq@mailinator.com', 'Sed quam autem omnis', 'Est aliquam itaque ', '1', NULL),
(10, 'Dieter Poole', 'kiqil@mailinator.com', 'Duis culpa at verit', 'Dolor nulla eos off', '1', NULL),
(11, 'Nevada Ware', 'fadycozo@mailinator.com', 'Quae sit est minim ', 'Laboriosam elit ad', '1', NULL),
(26, 'Amela Humphrey', 'gesyly@mailinator.com', 'In quod tempor offic', 'Aut officia perferen', '1', '2023-06-11 04:23:24.00'),
(27, 'Wade Bowen', 'divowi@mailinator.com', 'Labore iure harum au', 'Sunt sed ut nesciunt', '1', '2023-06-11 04:23:27.00'),
(29, 'Aristotle Peters', 'fakopoq@mailinator.com', 'Labore aut sed eos ', 'Rem facere voluptate', '1', '2023-06-11 04:23:30.00'),
(30, 'Burton Marquez', 'nomijypuw@mailinator.com', 'Pariatur Perferendi', 'Illo fuga Enim dolo', '1', '2023-06-11 04:23:32.00'),
(31, 'Forrest Lowery', 'tygicuqox@mailinator.com', 'Dignissimos perspici', 'Consectetur debitis', '1', '2023-06-11 04:23:34.00'),
(32, 'Kylan Rhodes', 'qycece@mailinator.com', 'Dolores debitis sed ', 'Omnis et totam nesci', '1', '2023-06-11 04:23:36.00'),
(33, 'Yasir Hughes', 'nihylisaxa@mailinator.com', 'Velit ipsa eaque n', 'Odit aute sit dolor', '1', '2023-06-11 04:23:38.00'),
(34, 'Stacey Fitzgerald', 'vimysaf@mailinator.com', 'Nulla eu elit ullam', 'Dolorum anim earum f', '1', '2023-06-11 04:23:39.00'),
(35, 'Jenna Stone', 'jojerol@mailinator.com', 'Quaerat cum amet ne', 'Ex in ipsam tempora ', '1', '2023-06-11 04:23:42.00'),
(36, 'Dolan Sanchez', 'guhuq@mailinator.com', 'Corrupti harum dign', 'Deserunt a consequat', '1', '2023-06-11 04:34:31.00'),
(37, 'Uriah Shelton', 'fyqyf@mailinator.com', 'In dignissimos dolor', 'Ea possimus est con', '1', '2023-06-12 08:54:28.00'),
(38, 'Jeanette Drake', 'vaxi@mailinator.com', 'In et voluptatem cum', 'Nam harum cumque vol', '1', '2023-06-12 08:54:46.00'),
(39, 'Serena Melton', 'vutif@mailinator.com', 'Dolorum commodo quis', 'Architecto nisi even', '1', '2023-06-12 09:13:07.00'),
(40, 'Oren Jordan', 'rawe@mailinator.com', 'Quos sed eius nostru', 'Aut quo repudiandae ', '1', '2023-06-13 01:31:26.00'),
(41, 'Mikayla Garrison', 'hydebe@mailinator.com', 'Voluptas omnis est e', 'Qui adipisci autem f', '1', '2023-06-13 01:31:59.00'),
(42, 'Jorden Evans', 'nuhecateh@mailinator.com', 'Elit sequi quo nobi', 'Dolorum vel deserunt', '1', '2023-06-13 01:35:49.00');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desp` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desp` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demo_link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `desp`, `long_desp`, `demo`, `demo_link`, `photo`, `status`) VALUES
(17, 'Graphics Design', 'Designed by Photoshop, Illustrator..etc', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Logo Design', 'http://127.0.0.1/elephant', '17.jpg', 0),
(18, 'Web Design', 'Web Designed by HTML, CSS, JS, BOOTSTRAP...etc', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Web Design', 'http://127.0.0.1/elephant', '18.jpg', 0),
(19, 'Web Development', 'Web Developed by PHP, LARAVEL.. etc', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Dynamic Dashboard', 'http://127.0.0.1/elephant/dashboard.php', '19.jpg', 0),
(20, 'Frontend Designer', 'HTML CSS JS BOOTSTRAP JQUERY', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Web Design', 'Example', '20.jpg', 0),
(21, 'Backend Developer', 'Web Developed by PHP, LARAVEL.. etc', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Dynamic Dashboard', 'http://127.0.0.1/elephant/dashboard,php', '21.jpg', 0),
(22, 'Logo Designer', 'Logo Design', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus voluptatum, atque mollitia asperiores, maxime eaque sequi unde deserunt nostrum nesciunt commodi consequuntur culpa repellendus vero ut accusantium! Cumque fugit quisquam nemo? Magni nemo perspiciatis id non quam architecto tenetur repudiandae molestiae assumenda dolores inventore sapiente cumque nam laborum est perferendis fugit ad, debitis vel quaerat, porro provident mollitia similique. Unde deserunt ratione rerum aliquam, voluptatibus error doloremque ipsam eius quisquam atque voluptatum in voluptates assumenda sint debitis corporis? Aliquid voluptatibus ducimus odio adipisci quo nihil architecto. Exercitationem cum aliquid voluptatibus ducimus quis enim culpa quasi corrupti cupiditate veniam eveniet ullam ad nobis amet quo, debitis nam laboriosam non officiis maxime excepturi sequi.', 'Logo Design', 'Example', '22.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desp` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `desp`, `status`) VALUES
(14, 'Front End Design Development', 'It can change the way we feel about a company and the products & services they offer. ', 1),
(15, 'Wordpress Development', ' It can change the way we feel about a company and the products & services they offer.', 1),
(16, 'Videography Photography', ' It can change the way we feel about a company and the products & services they offer.', 1),
(18, 'Application Devlopment', ' It can change the way we feel about a company and the products & services they offer.', 1),
(20, 'Digital Content Marketing', 'It can change the way we feel about a company and the products & services they offer. ', 1),
(21, 'Graphics Branding Design', ' It can change the way we feel about a company and the products & services they offer.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int NOT NULL,
  `desp` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_about` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `desp`, `name`, `name_about`, `photo`, `status`) VALUES
(1, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Ursula Branch', 'Kai Pacheco', '1.jpeg', '1'),
(2, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Tamara Espinoza', 'Tatum Hurst', '2.jpg', '1'),
(3, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Hasad Acevedo', 'Basil Le', '3.jpg', '1'),
(4, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Xena Prince', 'Quon Wall', '4.jpg', '1'),
(5, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Colton Hatfield', 'Yen Torres', '5.jpg', '1'),
(6, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Cara Avila', 'Dexter Murray', '6.jpeg', '1'),
(7, 'They do this through collaboration between our strategists, designers and technologists.They craft beautiful and unique digital experiences.Unlimited power and customization possibilities.Pixel perfect design & clear code delivered to you.', 'Hadley Bradford', 'Scarlett Ellis', '7.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `photo`, `created_at`) VALUES
(1, 'Abu Esa', 'mhabuesa@gmail.com', '$2y$10$DWJyC7Meg5v1wpAFLiLhyeD4ikZkY.y9DBRqjCWxn6LpEGdRAlMnm', 'male', '1.jpg', '2023-06-12 05:12:05.00'),
(2, 'Irene Duffy', 'vefiby@mailinator.com', '$2y$10$8PURkopnMAE7jKwCeak40O2jeJWHw5Lb8w6lXiw7Negcd7uyYByiu', 'male', '2.jpg', '2023-06-12 05:12:16.00'),
(3, 'Dahlia Short', 'welixi@mailinator.com', '$2y$10$HPgOaWvk5bovDUceYH3YKu2RxE2baxeKBPzB48XCr.OF8VMx08YjS', 'male', '3.jpg', '2023-06-12 05:12:19.00'),
(4, 'Dominic Blackwell', 'baji@mailinator.com', '$2y$10$WDdPhc5YWmwMifJmQQDRT.M49Z/.02l3M0KkTOpLEIxfxY99TAjRK', 'male', '4.jpg', '2023-06-12 05:12:21.00'),
(5, 'Bruce Stephenson', 'paleka@mailinator.com', '$2y$10$s6WlCUpgsk5Ta5xmR/e7fOcjmtuiTJzOFtT8196y7mzYe8ogCkBLK', 'female', '5.jpg', '2023-06-12 05:12:25.00'),
(6, 'Paloma Potts', 'qyjafesydi@mailinator.com', '$2y$10$nXwtiS5sbDCqugnTVMGiLumZ0WjN8Mxxvq9eOKr4ur8w2gviGmT0u', 'female', '6.jpg', '2023-06-12 05:12:28.00'),
(7, 'Hadley Gould', 'voveh@mailinator.com', '$2y$10$NGpfXvD6x.OVUoeiBadQ4OiDyEztr9vihqMx3AvAehRhB42yMaVx2', 'male', '7.jpg', '2023-06-12 05:12:31.00'),
(8, 'Cain Floyd', 'vibotohadu@mailinator.com', '$2y$10$NsvAKOnfunnJ8bg/q7d1pOAKv6PBY4gSUeWpKPJd0bGDAY6XXeSvG', 'male', '8.jpg', '2023-06-12 05:12:34.00'),
(9, 'Ian Walsh', 'simut@mailinator.com', '$2y$10$115BP9hwwzYFZW22FnofHuLuCaZF68ORT8m9h2YPh9tlczphLbue.', 'male', '9.jpg', '2023-06-12 05:12:37.00'),
(10, 'Winifred Porter', 'witicibido@mailinator.com', '$2y$10$kQLWzBck7zQxpHan.LtcbOLSulPg.e.b3uwjaNQTvJOZQI6z33rVS', 'male', '11.jpg', '2023-06-12 05:12:40.00'),
(11, 'Harper Evans', 'jujyfekyp@mailinator.com', '$2y$10$m/Ecved9Tq6sAY9YB1t34uHDo1NJHtEL.Zca.2A30JRUaOPf3Of6q', 'female', '11.jpg', '2023-06-12 05:12:42.00'),
(12, 'Allegra Rice', 'radacywo@mailinator.com', '$2y$10$.CoLbeIvXY5yn2l55XRwMed1xVsHTKBmY2Dw7Ler6aYiYR0X.jDam', 'male', '12.jpg', '2023-06-12 05:15:23.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
