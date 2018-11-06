-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2018 at 03:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banglaso_ratingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profilepicture`
--

CREATE TABLE `profilepicture` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profilepicture`
--

INSERT INTO `profilepicture` (`id`, `url`, `name`) VALUES
(1, 'http://banglasofttech.com/rating/images/0.png', 'SN Zisad'),
(2, 'http://banglasofttech.com/rating/images/1.png', 'SN Zisad'),
(3, 'http://banglasofttech.com/rating/images/2.', 'SN Zisad'),
(4, 'http://banglasofttech.com/rating/images/3.', 'SN Zisad'),
(5, 'http://banglasofttech.com/rating/images/4.png', 'SN Zisad'),
(6, 'http://banglasofttech.com/rating/images/5.png', 'SN Zisad'),
(7, 'http://banglasofttech.com/rating/images/6.png', 'SN Zisad'),
(8, 'http://banglasofttech.com/rating/images/7.png', 'SN Zisad'),
(9, 'http://banglasofttech.com/rating/images/8.png', 'SN Zisad'),
(10, 'http://banglasofttech.com/rating/images/9.png', 'SN Zisad'),
(11, 'http://banglasofttech.com/rating/images/10.png', ''),
(12, 'http://banglasofttech.com/rating/images/11.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `ratingtable`
--

CREATE TABLE `ratingtable` (
  `id` int(20) NOT NULL,
  `rater_id` int(20) DEFAULT NULL,
  `rated_id` int(20) DEFAULT NULL,
  `cat_one` int(10) DEFAULT NULL,
  `cat_two` int(10) DEFAULT NULL,
  `cat_three` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(1500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ratingtable`
--

INSERT INTO `ratingtable` (`id`, `rater_id`, `rated_id`, `cat_one`, `cat_two`, `cat_three`, `time`, `comment`) VALUES
(16, NULL, NULL, NULL, NULL, NULL, '2017-10-04 14:19:51', ''),
(17, 1, 1, 2, 2, 4, '2017-10-04 15:10:07', ''),
(18, 10, 9, 3, 4, 5, '2017-10-04 15:28:57', ''),
(19, 11, 9, 5, 4, 3, '2017-10-04 15:35:31', ''),
(20, 12, 10, 3, 5, 5, '2017-10-04 15:51:04', ''),
(21, 10, 12, 2, 4, 1, '2017-10-04 16:29:27', ''),
(22, 10, 11, 4, 3, 5, '2017-10-04 18:31:33', ''),
(23, 11, 10, 5, 4, 5, '2017-10-04 18:33:17', ''),
(24, 14, 13, 3, 3, 5, '2017-10-05 04:24:07', ''),
(25, 14, 15, 1, 3, 5, '2017-10-05 04:27:10', ''),
(26, 10, 15, 1, 4, 4, '2017-10-05 05:48:58', ''),
(27, 17, 13, 5, 3, 2, '2017-10-05 07:28:44', ''),
(28, 18, 13, 3, 4, 4, '2017-10-05 10:07:17', ''),
(29, 19, 10, 4, 3, 2, '2017-10-06 15:45:30', ''),
(30, 19, 14, 2, 5, 2, '2017-10-07 14:49:18', ''),
(31, 14, 20, 2, 5, 1, '2017-10-08 04:37:50', ''),
(32, 19, 20, 3, 5, 4, '2017-10-09 08:14:31', ''),
(33, 21, 18, 3, 4, 2, '2017-10-10 16:28:32', ''),
(34, 21, 22, 2, 4, 3, '2017-10-10 16:34:27', ''),
(35, 19, 17, 5, 3, 2, '2017-10-10 17:55:33', ''),
(36, 10, 21, 3, 4, 2, '2017-10-11 15:21:40', ''),
(37, 17, 1, 2, 1, 3, '2017-10-30 15:07:07', ''),
(38, 80, 13, 5, 2, 1, '2017-10-31 14:48:26', ''),
(39, 2, 1, 5, 3, 4, '2017-11-05 06:41:22', 'sdfsdf'),
(40, 1, 2, 3, 4, 5, '2017-11-05 06:51:38', 'sdfsdfsdfsdfsdanjan'),
(41, 1, 12, 123, 23, 2, '2017-11-05 06:52:59', 'anjan'),
(42, 1, 12, 123, 23, 2, '2017-11-05 07:00:02', 'sfsfsf'),
(43, 2, 3, 1, 2, 5, '2017-11-05 07:02:22', 'bangladesh'),
(44, 2, 3, 1, 2, 5, '2017-11-05 07:03:00', 'bangladesh\'\'\''),
(45, 2, 3, 1, 2, 5, '2017-11-05 07:03:10', 'bangladesh sfsf\''),
(46, 2, 3, 1, 2, 5, '2017-11-15 11:37:12', 'bangladesh\'\'\''),
(47, 26, 31, 2, 4, 5, '2017-11-16 13:49:08', ''),
(48, 27, 31, 4, 5, 3, '2017-11-16 13:49:08', ''),
(49, 28, 31, 5, 4, 3, '2017-11-16 13:49:08', ''),
(50, 29, 31, 4, 3, 2, '2017-11-16 13:49:08', ''),
(51, 30, 31, 2, 4, 5, '2017-11-16 13:49:08', ''),
(52, 2, 3, 1, 2, 5, '2017-11-17 11:53:03', 'bangladesh sfsf\''),
(53, 2, 31, 2, 5, 5, '2017-11-19 06:25:34', 'wrwer'),
(54, 80, 17, 1, 5, 3, '2017-11-19 07:08:13', 'jyhjjsj'),
(55, 80, 17, 1, 5, 3, '2017-11-19 07:08:14', 'jyhjjsj'),
(56, 80, 17, 1, 5, 3, '2017-11-19 07:08:14', 'jyhjjsj'),
(57, 80, 17, 1, 5, 3, '2017-11-19 07:08:15', 'jyhjjsj'),
(58, 80, 17, 1, 5, 3, '2017-11-19 07:08:16', 'jyhjjsj'),
(59, 80, 17, 1, 5, 3, '2017-11-19 07:08:16', 'jyhjjsj'),
(60, 2, 31, 2, 5, 5, '2017-11-19 07:16:46', 'wrwsdfsvwefwer'),
(61, 2, 31, 2, 5, 5, '2017-11-19 07:16:57', 'wrwsdfsvw efwer'),
(62, 80, 16, 2, 5, 4, '2017-11-19 07:24:03', 'kjvbd jjx'),
(63, 80, 20, 2, 3, 2, '2017-11-19 07:31:39', 'nhggsj jygso'),
(64, 80, 20, 2, 3, 2, '2017-11-19 07:31:40', 'nhggsj jygso'),
(65, 80, 14, 4, 5, 2, '2017-11-19 07:34:48', 'hfd'),
(66, 80, 15, 3, 5, 5, '2017-11-19 07:42:22', 'jhgbs dsa'),
(67, 89, 13, 5, 5, 4, '2017-11-19 19:25:32', 'For Business purpose '),
(68, 89, 17, 5, 5, 5, '2017-11-19 19:27:36', 'For coaching'),
(69, 10, 16, 3, 4, 5, '2017-11-20 16:33:23', ''),
(70, 89, 96, 5, 5, 4, '2017-11-21 05:15:41', 'For Business Purpose '),
(71, 89, 97, 5, 5, 5, '2017-11-21 05:21:01', 'Personal Relation '),
(72, 86, 13, 4, 1, 4, '2017-11-21 06:13:38', 'helpful'),
(73, 86, 18, 1, 2, 3, '2017-11-21 06:19:27', 'stupid'),
(74, 89, 15, 5, 5, 5, '2017-11-21 07:03:51', 'Personal relation '),
(75, 86, 98, 5, 5, 5, '2017-11-21 07:25:59', 'dusto'),
(76, 86, 99, 5, 5, 5, '2017-11-21 07:41:52', ''),
(77, 86, 100, 2, 4, 2, '2017-11-21 10:38:00', 'fgh'),
(78, 86, 15, 1, 1, 1, '2017-11-21 10:48:28', 'hh'),
(79, 25, 83, 4, 4, 3, '2017-11-21 20:24:00', ''),
(80, 86, 104, 5, 4, 5, '2017-11-24 13:19:06', ''),
(81, 25, 42, 3, 4, 1, '2017-11-25 20:32:17', 'like him'),
(82, 25, 42, 3, 4, 1, '2017-11-25 20:32:26', 'like him'),
(83, 10, 21, 3, 5, 4, '2017-11-25 22:53:45', ''),
(84, 10, 12, 4, 3, 5, '2017-11-25 23:06:04', 'nothing'),
(85, 2, 3, 1, 2, 5, '2017-12-28 11:43:00', 'bangladesh\'\'\''),
(86, 2, 3, 1, 2, 5, '2017-12-31 03:10:10', 'bangladesh sfsf\''),
(87, 105, 80, 3, 5, 2, '2018-02-20 03:21:38', 'jzhshd');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `user_id` int(20) NOT NULL,
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `job` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(1000) COLLATE utf8_bin NOT NULL,
  `password` varchar(500) COLLATE utf8_bin NOT NULL,
  `picturepath` varchar(500) COLLATE utf8_bin NOT NULL,
  `verification` int(11) NOT NULL,
  `comment` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`user_id`, `name`, `phone`, `email`, `job`, `address`, `location`, `password`, `picturepath`, `verification`, `comment`) VALUES
(6, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, ''),
(7, '752', 'saefsdf', 'gr@se.df', 'etg', 'et', '', '', '', 0, ''),
(9, 'numatech', '57754', 'numa@info', 'developer', 'ctg', '', '', '', 0, ''),
(10, 'Numatech', '1220', 'wer@sfd.sdf', 'wer', 'sdfsdf', '', '123', '', 0, ''),
(11, 'Zisad', '5787', 'numatech', 'developer', 'ctg', '', '1234', '', 0, ''),
(12, 'Hello', '12205010', 'jsjsj@jsjs.com', 'jdje', 'jsj', '', '', '', 0, ''),
(13, 'Machbah', '01725839308', 'sa@yy.com', 'Teaching', 'Bau', '', '', '', 0, ''),
(14, 'Amm', '01717494574', 'gh@nn.com', 'Bb', 'Hhh', '', '', '', 0, ''),
(15, 'Bbbb', '01723645664', 'gv@nm.com', 'Ujj', 'Gff', '', '', '', 0, ''),
(16, 'Cu', '01812684100', 'hg@cf.com', '', '', '', '', '', 0, ''),
(17, 'robiul', '01722341962', 'robi.cse07@gmail.com', 'Govt. Employee', 'Thakurgaon', '', '', '', 0, ''),
(18, 'Amin', '01812078605', 'aminul0102@gmail@.com', 'Teaching', 'kewatkhali', '', '', '', 0, ''),
(19, 'sdf', '1220501', 'sdf@saf.sdf', 'sf', 'sdfsdf', '', '', '', 0, ''),
(20, 'Azim', '01815604480', 'azimhta@gmail.com', '', 'Hh', '', '', '', 0, ''),
(21, 'snzisad', '01995458558', 'snzisad@gmail.com', 'Student', 'CTG', '', '2345', '', 1, ''),
(22, 'Zisad', '123', '', 'stu', 'ctg', '', '', '', 565409, ''),
(23, '', '147866', '', '', '', '', '', '', 565409, ''),
(24, 'Hello', '0123', 'sn@g', 'student', 'ctg here', '', '1234', '', 1, ''),
(25, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(26, 'gv', '865', 'chf', 'ch', 'gg', '', 'abc', '', 0, ''),
(27, 'gv', '865', 'chf', 'ch', 'gg', '', 'abc', '', 0, ''),
(28, 'Sn', '018', 'snz@gm', 'stu', 'ctg', '', 'abc', '', 0, ''),
(29, 'hg', '682', 'gv', 'gvg', 'gb', '', 'abc', '', 0, ''),
(30, 'gvh', '99', 'vh', 'gb', 'hjg', '', 'asd', '', 0, ''),
(31, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(32, 'ajz', '682', 'gzh', 'hzh', 'hzh', '', 'abc', '', 0, ''),
(33, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(34, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(35, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(36, 'Zisad', '123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(37, 'Zisad', '00123', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(38, 'Zisad', '01867', 'bsjz', 'jsh', 'ush', '', 'abc', '', 0, ''),
(39, 'hsj', '64', 'baj', 'hsj', 'hsj', '', 'abc', '', 0, ''),
(40, 'av', '668', 'vh', 'bhmv', 'vhh', '', 'abc', '', 0, ''),
(41, 'SharifNoorZisad', '0186789', 'snzisad@gmail.com', 'Student', 'Chittagong', '', '2345', '', 1, ''),
(42, 'Zisad Arif', '1234', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(43, 'Zisad Arif', '123456', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(44, 'Zisad Arif', '1234567', 's@z', 'stu', 'ctg', '', '1234', '', 631778, ''),
(45, 'Zisad Arif', '123456789', 's@z', 'stu', 'ctg', '', '1234 75', '', 0, ''),
(46, 'Zisad Arif', '1234567890', 's@z', 'stu', 'ctg', '', '1234 ~numatech75', '', 0, ''),
(47, 'as gfg', '010', 'fhg', 'gh', 'bv', '', 'abc', '', 0, ''),
(48, 'Zisad ~numatech~Arif', '12345690', 's@z', 'stu', 'ctg', '', '1234~numatech~~numatech75', '', 0, ''),
(49, 'Sharif Noor Zisad', '01867301260', 'snzisad@gmail.com', 'Student', 'Chittagong', '', '2345', '', 1, ''),
(50, 'SN Zisad', '0000', 'sn', 'un', 'cyk', '', 'abc efg', '', 0, ''),
(51, 'snziaa', '0188', 'snzia@gmail.com', 'stu', 'chi', '', 'zisad bd', '', 0, ''),
(52, 'Zisad', '0011123', 'sn@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(53, 'Zisad', '00112123', 's2n@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(54, 'Zisad', '001122123', 's22n@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(55, 'Zisad', '0012122123', 's223n@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(56, 'Zisad', '00212122123', 's2223n@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(57, 'Zisad', '002121322123', 's22223n@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(58, 'Zisad', '322123', 's2@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(59, 'Zisad', '5123', 's27@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(60, 'Numatech', '51233', 's247@z.com', 'stu', 'ctg', '', '1234', '', 0, ''),
(61, 'ghg', '085', 'gh', 'gbb', 'ghb', '', 'zi', 'http://banglasofttech.com/rating/profile_picture/085.png', 0, ''),
(62, 'hh', '6588', 'x', 'g', 'g', '', 'zg', '', 0, ''),
(63, 'hvv', '968', 'vgf', 'gh', 'gb', '', 'za', 'http://banglasofttech.com/rating/profile_picture/968.png', 0, ''),
(64, 'Abul', '07934', 'jsb', 'jzj', 'hzj', '', 'za', 'http://banglasofttech.com/rating/profile_picture/07934.png', 0, ''),
(65, 'hsj', '67', 'vz', 'bzj', 'bzj', '', 'za', 'http://banglasofttech.com/rating/profile_picture/67.png', 0, ''),
(66, 'hb', '96', 'bh', 'bj', 'bj', '', 'va', 'http://banglasofttech.com/rating/profile_picture/96.png', 0, ''),
(67, 'g', '8', 'v', 'vmg', 'v', '', 'v', 'http://banglasofttech.com/rating/profile_picture/8.png', 0, ''),
(71, 'hsb', '97648', 'biao@', 'jizhz', 'bzizm', '', 'ab', 'http://banglasofttech.com/rating/profile_picture/97648.png', 365292, ''),
(72, 'gbh', '5855', 'hfg', 'ghj', 'vv', '', 'vb', 'http://banglasofttech.com/rating/profile_picture/5855.png', 251530, ''),
(75, 'uaham', '6784', 'vuam', 'gvb', 'gzgs', '', 'zc', 'http://banglasofttech.com/rating/profile_picture/6784.png', 824197, ''),
(76, 'gvg', '595', 'fvg', 'vhb', 'hvb', '', 'zv', 'http://banglasofttech.com/rating/profile_picture/595.png', 993698, ''),
(79, 'knowb4', '055568', 'mrknowb4@gmail.com', 'ub', 'hbh', '', 'abc', 'http://banglasofttech.com/rating/profile_picture/055568.png', 1, ''),
(80, 'hshssh', '255', 'cff@fgh.ghd', ' gtd', 'cyyf', '', 'ghghghgh', 'http://banglasofttech.com/rating/profile_picture/255.png', 738390, ''),
(81, 'hello', '808080', 'jaha@hsjs.hshs', 'jshdg', 'hshdv', '', '8080', 'http://banglasofttech.com/rating/profile_picture/808080.png', 603086, ''),
(82, 'Robi', '01554068749', 'robiul.cse.cu@gmail.com', 'job', 'ctg', '', '123456', 'http://banglasofttech.com/rating/profile_picture/01554068749.png', 1, ''),
(83, 'hsh', '0181888', 'hshsh@jsjzj.zjzjz', 'jsjzjs', 'hznzn', '', 'abababab', 'http://banglasofttech.com/rating/profile_picture/0181888.png', 557852, ''),
(84, 'jsj', '017', 'dhh', 'bxh', 'hzh', '', 'hghg', '', 0, ''),
(85, 'ziaad', '01846', 'snzisadhajsnj', 'jdjd', 'bxjd', '', 'zisad', 'http://banglasofttech.com/rating/profile_picture/01846.png', 848146, ''),
(86, 'machbah', '01717274973', 'sazzadcse@yahoo.com', 'teacher', 'mymensingh', '', '123456', 'http://banglasofttech.com/rating/profile_picture/01717274973.png', 1, ''),
(87, 'qq', '0658', 'dr', 'a', 'gy', '', '1', 'http://banglasofttech.com/rating/profile_picture/0658.png', 708777, ''),
(88, 'Zisad', '0186730', 'snzi@gg..com', 'Fhf', 'bc', '', 'zisad', '', 622812, ''),
(89, 'Robiul', '01995895178', 'robiul_cse_bd@yahoo.com', 'Govt. Employee', 'CTG', '', '123456', '', 1, ''),
(90, 'z', '0000022220000', NULL, NULL, NULL, '', '', '', 0, 'NotLike'),
(91, 'Zisa', 'Zisa', NULL, NULL, NULL, '', '', '', 0, 'Zisa'),
(92, 'zz', 'zz', NULL, NULL, NULL, '', '', '', 0, 'zz'),
(93, 'zi', 'zi', NULL, NULL, NULL, '', '', '', 0, 'zi'),
(94, 'Ziaas', '008855', NULL, NULL, NULL, '', '', '', 0, 'Nothing'),
(95, 'Zisas', '8555', NULL, NULL, NULL, '', '', '', 0, 'gxf'),
(96, 'Rabbul Hossain', '01723891258', NULL, NULL, NULL, '', '', '', 0, 'Business relation '),
(97, 'Md. Jamal Uddin', '01723429623', NULL, NULL, NULL, '', '', '', 0, 'Personal Relation '),
(98, 'habi', '01725888888', NULL, NULL, NULL, '', '', '', 0, 'new'),
(99, 'jaionto', '01721614219', NULL, NULL, NULL, '', '', '', 0, 'shoitan'),
(100, 'sayeed', '01817115629', NULL, NULL, NULL, '', '', '', 0, 'good'),
(101, 'numatech', '752', 'numa@info', 'developer', 'ctg', '', '3456', '', 0, ''),
(102, 'numatech', '784512', 'numa', 'developer', 'ctg', '', 'abc', '', 0, ''),
(103, 'hello', '8656', 'shffx@ggfg', 'hello', 'ahj', '', '', '', 765427, 'none'),
(104, 'u', '098', NULL, NULL, NULL, '', '', '', 0, 'kk'),
(105, 'abcsls', '0188194645596', 'abcd@gmail.com', 'g', 'g', '', 'mzmz', '', 912645, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profilepicture`
--
ALTER TABLE `profilepicture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratingtable`
--
ALTER TABLE `ratingtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profilepicture`
--
ALTER TABLE `profilepicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ratingtable`
--
ALTER TABLE `ratingtable`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
