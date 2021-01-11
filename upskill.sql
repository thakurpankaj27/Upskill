-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 07:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upskill`
--

-- --------------------------------------------------------

--
-- Table structure for table `dietplan`
--

CREATE TABLE `dietplan` (
  `sr` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `diet` varchar(200) NOT NULL,
  `timing` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dietplan`
--

INSERT INTO `dietplan` (`sr`, `id`, `day`, `diet`, `timing`) VALUES
(3, 26, 'Monday', 'PROTEIN SMOOTHIE', '8-9 AM'),
(5, 26, 'Monday', '1 ORANGE, 3 WHOLE WHEAT BREAD, 5 EGG WHITES', '11-12 AM'),
(6, 26, 'Monday', '100g GRILLED CHICKEN, 100g SWEET POTATO,\n1/2 CUP WHITE CHICKPEAS', '2-3 PM'),
(7, 26, 'Monday', 'SPINACH OMELETE, 1/2 CUP WHEY,1/2 CUP OATS', '4-5 PM'),
(8, 26, 'Monday', '3 EGGS, 1 BANANA, 3 CHAPATI, 240ml NON FAT MILK', '8-9 PM');

-- --------------------------------------------------------

--
-- Table structure for table `fdbc`
--

CREATE TABLE `fdbc` (
  `id` varchar(100) NOT NULL,
  `fdbk` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fdbc`
--

INSERT INTO `fdbc` (`id`, `fdbk`) VALUES
('', ''),
('12', 'this help me a lot , great initiative.'),
('15', 'great work'),
('26', 'This app helps a lot.');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `bfat` double NOT NULL,
  `tweight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `gender`, `height`, `weight`, `bfat`, `tweight`) VALUES
(1, 'SHIVA', 'male', 172, 200, 18, 175),
(20, 'pankaj', 'male', 154, 165, 13.6, 175),
(21, 'pankaj', 'male', 147, 251, 19.9, 200),
(22, 'pankaj thakur', 'male', 185, 200, 25.3, 200),
(23, 'suraj', 'male', 192, 170, 19.3, 180),
(24, 'suraj', 'male', 157, 178, 20.3, 180),
(25, 'suraj thakur', 'male', 178, 157, 20.3, 157),
(26, 'aman', 'male', 182, 204, 18.3, 190),
(27, 'anku ', 'male', 168, 200, 21.5, 180),
(28, 'manu', 'female', 154, 145, 15.3, 175);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `frname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`frname`, `lname`, `username`, `password`) VALUES
('', '', '', ''),
('anku', 'bali', 'ankubali', '654@123'),
('batman', 'superman', 'batman', 'batman123'),
('DEEPINDER', 'BAINS', 'deepi28', '123456'),
('pankaj', 'thakur', 'pankajthakur', '123456'),
('Pankaj', 'Thakur', 'pankajthakur27', '123456'),
('RAHUL', 'GROVER', 'RAHULGROVER', '123456'),
('shivam', 'grover', 'shivam', 'shivam0531'),
('Suraj', 'Thakur', 'Thakur@007', 'Thakur@007');

-- --------------------------------------------------------

--
-- Table structure for table `workoutplan`
--

CREATE TABLE `workoutplan` (
  `sr` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `exercises` varchar(200) NOT NULL,
  `tips` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workoutplan`
--

INSERT INTO `workoutplan` (`sr`, `id`, `day`, `exercises`, `tips`) VALUES
(2, 5, 'Tuesday', 'BICHEPS', '5 EXERCISES'),
(4, 5, 'Wednesday', 'TRICHEPS', '5 EXERCISES'),
(5, 19, 'Thursday', 'chest nd back', '4 set each exercise'),
(8, 26, 'Monday', 'CHEST AND BACK	', 'INCREASE WEIGHT IN EVERY SET.'),
(9, 26, 'Tuesday', 'SHOULDERS AND ARMS', 'NO REST BETWEEN SUPERSETS.'),
(10, 26, 'Wednesday', 'LEGS', 'USE WAIST BELT FOR PROTECTION IF U LIFT HEAVY'),
(11, 26, 'Thursday', 'CARDIO AND ABS', 'CARDIO : WALK 5 min, RUNNING 20min, COOLDOWN 5min'),
(12, 26, 'Friday', 'CHEST AND BACK', 'DO WARM UP 2-3 SETS WITH LIGHT WEIGHT'),
(13, 26, 'Saturday', 'SHOULDER AND ARMS', 'NO REST B/W SUPERSETS.'),
(14, 26, 'Sunday', 'REST ', 'REST'),
(15, 26, 'Wednesday', 'cardio ', '30 min'),
(16, 27, 'Monday', 'BICHEPS AND TRICHEPS	', 'MIN. 3 EXERCISES OF EACH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dietplan`
--
ALTER TABLE `dietplan`
  ADD PRIMARY KEY (`id`,`day`,`diet`,`timing`),
  ADD UNIQUE KEY `sr` (`sr`);

--
-- Indexes for table `fdbc`
--
ALTER TABLE `fdbc`
  ADD PRIMARY KEY (`id`,`fdbk`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`,`name`,`gender`,`height`,`weight`,`bfat`,`tweight`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`frname`,`lname`,`username`,`password`);

--
-- Indexes for table `workoutplan`
--
ALTER TABLE `workoutplan`
  ADD PRIMARY KEY (`id`,`day`,`exercises`,`tips`),
  ADD UNIQUE KEY `sr` (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dietplan`
--
ALTER TABLE `dietplan`
  MODIFY `sr` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `workoutplan`
--
ALTER TABLE `workoutplan`
  MODIFY `sr` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
