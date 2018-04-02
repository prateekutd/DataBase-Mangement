-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 11:44 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wunderlist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` varchar(6) NOT NULL,
  `assign_to` varchar(6) NOT NULL,
  `assign_by` varchar(6) NOT NULL,
  `task_id` varchar(6) NOT NULL,
  `assigned_date` date NOT NULL,
  `completed_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `assign_to`, `assign_by`, `task_id`, `assigned_date`, `completed_date`) VALUES
('a1', '10002', '10002', 't1', '2017-10-30', '2017-11-29'),
('a2', '10001', '10003', 't4', '2017-11-30', '2017-12-22'),
('a3', '10007', '10007', 't3', '2017-11-15', '2017-11-28'),
('a4', '10003', '10002', 't5', '2017-11-30', '2017-12-26'),
('a5', '10002', '10001', 't7', '2017-11-30', '2017-12-12'),
('a6', '10004', '10001', 't9', '2017-10-30', '2017-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `coversation`
--

CREATE TABLE `coversation` (
  `converstion_id` varchar(6) NOT NULL,
  `chat_time` datetime NOT NULL,
  `task_id` varchar(6) NOT NULL,
  `list_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coversation`
--

INSERT INTO `coversation` (`converstion_id`, `chat_time`, `task_id`, `list_id`) VALUES
('c1', '2017-11-28 00:00:00', 't2', '1b'),
('c2', '2017-11-20 00:00:00', 't4', '2b'),
('c3', '2017-12-25 00:00:00', 't5', '4a'),
('c4', '2017-12-10 00:00:00', 't5', '4a'),
('c5', '2017-11-20 00:00:00', 't6', '1c'),
('c6', '2017-11-17 00:00:00', 't9', '3c');

-- --------------------------------------------------------

--
-- Table structure for table `export`
--

CREATE TABLE `export` (
  `export_id` varchar(6) NOT NULL,
  `converstion_id` varchar(6) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `export`
--

INSERT INTO `export` (`export_id`, `converstion_id`, `email_id`) VALUES
('e1', 'c2', 'meetprateekrawat@gmail.com'),
('e2', 'c5', 'pxk171130@utdallas.edu'),
('e3', 'c1', 'ssb171130@utdallas.edu'),
('e4', 'c1', 'jsh171130@utdallas.edu'),
('e5', 'c4', 'asb71130@utdallas.edu'),
('e6', 'c3', 'nrp171130@utdallas.edu');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `list_id` varchar(6) NOT NULL,
  `list_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_id`, `list_name`) VALUES
('1a', 'Inbox'),
('1b', 'Project'),
('1c', 'Project'),
('2a', 'Project'),
('2b', 'Family'),
('2c', 'Movies'),
('3a', 'Travel'),
('3b', 'Movies'),
('3c', 'Private'),
('4a', 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` varchar(6) NOT NULL,
  `task_name` varchar(15) NOT NULL,
  `user_id` varchar(6) NOT NULL,
  `list_id` varchar(6) NOT NULL,
  `date_reminder` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task_name`, `user_id`, `list_id`, `date_reminder`) VALUES
('t1', 'find_app', '10002', '1b', '2017-11-30 23:59:00'),
('t10', 'internship_call', '10001', '1a', '2017-11-22 00:00:00'),
('t11', 'Create_Report', '10001', '1c', '2017-11-30 00:00:00'),
('t2', 'review', '10005', '1b', '2017-12-01 00:00:00'),
('t3', 'define_narrativ', '10007', '1b', '2017-11-28 00:00:00'),
('t4', 'thanksgiving', '10001', '2b', '2017-11-23 00:00:00'),
('t5', 'padmavati', '10003', '4a', '2017-12-30 00:00:00'),
('t6', 'DBW', '10006', '1c', '2017-11-29 00:00:00'),
('t7', 'christmas', '10002', '2b', '2017-12-25 00:00:00'),
('t8', 'newyork', '10005', '3a', '2017-12-26 00:00:00'),
('t9', 'laundry', '10004', '3c', '2017-11-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(6) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email_id`) VALUES
('10001', 'pooja', 'kanchan', 'pxk171130@utdallas.edu'),
('10002', 'prateek', 'rawat', 'prr170130@utdallas.edu'),
('10003', 'akshay', 'alse', 'ava170330@utdallas.edu'),
('10004', 'neeraj', 'pathak', 'nrp171130@utdallas.edu'),
('10005', 'suresh', 'bhusare', 'ssb171130@utdallas.edu'),
('10006', 'abhiraj', 'trump', 'asb71130@utdallas.edu'),
('10007', 'jasmeet', 'harjai', 'jsh171130@utdallas.edu');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `user_id` varchar(6) NOT NULL,
  `list_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `list_id`) VALUES
('10001', '1a'),
('10002', '1b'),
('10003', '1c'),
('10004', '2a'),
('10005', '2b'),
('10006', '2c'),
('10007', '3a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `assign_to` (`assign_to`),
  ADD KEY `assign_by` (`assign_by`);

--
-- Indexes for table `coversation`
--
ALTER TABLE `coversation`
  ADD PRIMARY KEY (`converstion_id`,`task_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `coversation_ibfk_2` (`list_id`);

--
-- Indexes for table `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`export_id`,`converstion_id`),
  ADD KEY `converstion_id` (`converstion_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`,`list_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`,`list_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`assign_to`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`assign_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `coversation`
--
ALTER TABLE `coversation`
  ADD CONSTRAINT `coversation_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`),
  ADD CONSTRAINT `coversation_ibfk_2` FOREIGN KEY (`list_id`) REFERENCES `task` (`list_id`);

--
-- Constraints for table `export`
--
ALTER TABLE `export`
  ADD CONSTRAINT `export_ibfk_1` FOREIGN KEY (`converstion_id`) REFERENCES `coversation` (`converstion_id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `list` (`list_id`);

--
-- Constraints for table `user_list`
--
ALTER TABLE `user_list`
  ADD CONSTRAINT `user_list_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `list` (`list_id`),
  ADD CONSTRAINT `user_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
