-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 04, 2021 at 12:00 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madhur_db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_featured_type`
--

CREATE TABLE `tbl_featured_type` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_featured_type`
--

INSERT INTO `tbl_featured_type` (`id`, `type`) VALUES
(1, 'video'),
(2, 'image');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_linking_project_tools`
--

CREATE TABLE `tbl_linking_project_tools` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_linking_project_tools`
--

INSERT INTO `tbl_linking_project_tools` (`id`, `project_id`, `tool_id`) VALUES
(1, 1, 4),
(2, 1, 3),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 9),
(11, 3, 2),
(12, 4, 2),
(13, 4, 1),
(14, 4, 3),
(15, 5, 16),
(16, 5, 1),
(17, 5, 3),
(18, 5, 2),
(19, 6, 1),
(20, 6, 2),
(21, 6, 6),
(22, 6, 7),
(23, 6, 16),
(24, 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_linking_project_type`
--

CREATE TABLE `tbl_linking_project_type` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_linking_project_type`
--

INSERT INTO `tbl_linking_project_type` (`id`, `project_id`, `type_id`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 2, 2),
(4, 2, 4),
(5, 3, 5),
(6, 4, 4),
(7, 4, 5),
(8, 4, 3),
(9, 5, 1),
(10, 5, 3),
(11, 5, 4),
(12, 6, 1),
(13, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `teaser_image` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `feature_image` varchar(100) NOT NULL,
  `feature_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `name`, `description`, `teaser_image`, `content`, `feature_image`, `feature_type`) VALUES
(1, 'Sportsnet Intro', 'A sports net introduction video was created using cinema 4d. All the elements of the video has been done in cinema 4d from making of material to the animation. This video is created for Monday night football.', 'sportsnet1.png', '', 'sportsnet.mp4', 1),
(2, 'MINI APP', 'Mini app is the one webpage created using vue js. The webpage is about the Mini Cooper car models. One clicking any of the three car models you will be able to see the description of it.', 'miniapp1.png', '', 'mini_app1.mp4', 1),
(3, 'Makeup ', 'Makeup, this work has been done in photoshop for the advertising purpose. \r\nFor this advertisement package, typography, logo, everything was done in photoshop.\r\nMakeup, this work has been done in photoshop for the advertising purpose. \r\nFor this advertisement package, typography, logo, everything was done in photoshop.\r\nMakeup, this work has been done in photoshop for the advertising purpose. \r\nFor this advertisement package, typography, logo, everything was done in photoshop.\r\n', 'make_up1.png', '', 'makeup.mp4', 2),
(4, 'Brand Mashup', 'This is brand mashup of two different brands, beer and beer body with different brand that is mashed together to get clean clear cleaning beer. \r\n\r\n', 'ccc.png', '', 'beer.mp4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_images`
--

CREATE TABLE `tbl_slider_images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `image_path` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider_images`
--

INSERT INTO `tbl_slider_images` (`id`, `project_id`, `image_path`) VALUES
(1, 1, 'sportsnet-1.jpg'),
(2, 1, 'sportsnet-2.jpg'),
(9, 5, 'atf-2.png'),
(8, 5, 'atf-1.png'),
(3, 1, 'sportsnet-3.jpg'),
(4, 1, 'sportsnet-4.jpg'),
(5, 1, 'sportsnet-5.png'),
(10, 5, 'atf-3.png'),
(11, 5, 'atf-4.png'),
(12, 5, 'atf-5.png'),
(13, 6, 'ballmer-1.png'),
(14, 6, 'ballmer-2.png'),
(15, 6, 'ballmer-3.png'),
(16, 6, 'ballmer-4.png'),
(17, 6, 'ballmer-5.png'),
(18, 2, 'balla-5.png'),
(19, 2, 'balla-1.png'),
(20, 2, 'balla-2.png'),
(21, 2, 'balla-3.png'),
(22, 2, 'balla-4.png'),
(23, 3, 'flower-1.png'),
(24, 3, 'flower-2.png'),
(25, 3, 'flower-3.png'),
(26, 3, 'flower-4.png'),
(27, 3, 'flower-5.png'),
(28, 4, 'ceci-1.png'),
(29, 4, 'ceci-2.png'),
(30, 4, 'ceci-3.png'),
(31, 4, 'ceci-4.png'),
(32, 4, 'ceci-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools`
--

CREATE TABLE `tbl_tools` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tools`
--

INSERT INTO `tbl_tools` (`id`, `name`) VALUES
(1, 'Photoshop'),
(2, 'Illustrator'),
(3, 'After Effects'),
(4, 'Cinema4D'),
(5, 'InDesign'),
(6, 'HTML'),
(7, 'CSS'),
(8, 'SASS'),
(9, 'Javascript'),
(10, 'PHP'),
(11, 'JSON'),
(12, 'Vue.js'),
(13, '3dsMax'),
(14, 'Mudbox'),
(15, 'Unity'),
(16, 'Xd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_types`
--

CREATE TABLE `tbl_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_types`
--

INSERT INTO `tbl_types` (`id`, `name`) VALUES
(1, 'Website'),
(2, 'Advertising '),
(3, 'Video'),
(4, 'Branding'),
(5, 'Illustration');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_featured_type`
--
ALTER TABLE `tbl_featured_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_linking_project_tools`
--
ALTER TABLE `tbl_linking_project_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_linking_project_type`
--
ALTER TABLE `tbl_linking_project_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider_images`
--
ALTER TABLE `tbl_slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_types`
--
ALTER TABLE `tbl_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_featured_type`
--
ALTER TABLE `tbl_featured_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_linking_project_tools`
--
ALTER TABLE `tbl_linking_project_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_linking_project_type`
--
ALTER TABLE `tbl_linking_project_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_slider_images`
--
ALTER TABLE `tbl_slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_types`
--
ALTER TABLE `tbl_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
