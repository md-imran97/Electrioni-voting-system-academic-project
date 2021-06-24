-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 08:08 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evsproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `can_database`
--

CREATE TABLE `can_database` (
  `id` int(15) NOT NULL,
  `c_nid` int(15) NOT NULL,
  `c_election_id` int(15) NOT NULL,
  `c_mark` varchar(15) NOT NULL,
  `got_vote` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `can_database`
--

INSERT INTO `can_database` (`id`, `c_nid`, `c_election_id`, `c_mark`, `got_vote`) VALUES
(6, 500009, 900001, '1', 4),
(7, 500011, 900001, '2', 2),
(8, 500010, 900001, '3', 2),
(9, 500001, 900005, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `election_database`
--

CREATE TABLE `election_database` (
  `e_id` int(15) NOT NULL,
  `e_name` varchar(15) NOT NULL DEFAULT 'Unknown',
  `e_type` varchar(15) NOT NULL,
  `e_zone` int(15) NOT NULL DEFAULT '0',
  `status` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election_database`
--

INSERT INTO `election_database` (`e_id`, `e_name`, `e_type`, `e_zone`, `status`) VALUES
(900000, 'demo', 'demo', 0, NULL),
(900001, 'Dhaka-3', 'local', 1, 2),
(900002, 'dhaka 2', 'local', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_database`
--

CREATE TABLE `emp_database` (
  `id` int(15) NOT NULL,
  `emp_nid` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `emp_pass` int(4) NOT NULL,
  `emp_rank` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_database`
--

INSERT INTO `emp_database` (`id`, `emp_nid`, `emp_id`, `emp_pass`, `emp_rank`) VALUES
(2, 500001, 300001, 1234, 0),
(11, 500003, 300003, 1234, 1),
(19, 500004, 300004, 7002, 0);

-- --------------------------------------------------------

--
-- Table structure for table `voter_database`
--

CREATE TABLE `voter_database` (
  `id` int(15) NOT NULL,
  `birth_id` int(15) NOT NULL,
  `birth_date` int(3) NOT NULL,
  `birth_month` int(3) NOT NULL,
  `birth_year` int(5) NOT NULL,
  `birth_age` int(3) NOT NULL,
  `birth_name` varchar(20) NOT NULL,
  `birth_sex` varchar(10) NOT NULL,
  `nid` int(15) NOT NULL,
  `pin` int(4) NOT NULL,
  `zone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter_database`
--

INSERT INTO `voter_database` (`id`, `birth_id`, `birth_date`, `birth_month`, `birth_year`, `birth_age`, `birth_name`, `birth_sex`, `nid`, `pin`, `zone`) VALUES
(100001, 700001, 17, 9, 1997, 21, 'md imran md', 'male', 500001, 1234, 1),
(100003, 700003, 5, 5, 1997, 21, 'md shanin', 'male', 500003, 1234, 1),
(100010, 700004, 1, 1, 1997, 21, 'Md Tofael', 'male', 500004, 5880, 1),
(100011, 700005, 2, 2, 1998, 20, 'Moon Ahmed', 'male', 500005, 7988, 1),
(100013, 700006, 4, 4, 1999, 19, 'Siam Ahmed', 'male', 500006, 5979, 1),
(100014, 700007, 5, 5, 1995, 23, 'Md Suborno', 'male', 500007, 7337, 1),
(100015, 700008, 19, 19, 1990, 28, 'Tarikul Islam', 'male', 500008, 4496, 1),
(100016, 700009, 2, 2, 1950, 68, 'Munni Shaha', 'female', 500009, 9661, 1),
(100018, 700010, 9, 9, 1945, 73, 'Manik khan', 'male', 500010, 8207, 1),
(100019, 700011, 17, 9, 1948, 70, 'Fatema Khan', 'female', 500011, 3687, 1),
(100020, 700012, 8, 8, 1995, 23, 'Habib Ahsan', 'male', 500012, 3836, 2),
(100021, 700013, 1, 9, 1997, 21, 'Md Rafat', 'male', 500013, 2305, 2),
(100022, 700014, 1, 9, 1991, 27, 'Jahid Hasan', 'male', 500014, 8234, 2),
(100023, 700015, 8, 8, 1992, 26, 'Nasir Khan', 'male', 500015, 2661, 2),
(100024, 700016, 7, 7, 1993, 25, 'Md Mamun', 'male', 500016, 6426, 2),
(100025, 700017, 1, 1, 1988, 30, 'Nusrat Faria', 'female', 500017, 1585, 3),
(100026, 700018, 3, 3, 1990, 28, 'Sabbir Ahmed', 'male', 500018, 6354, 4),
(100027, 700019, 17, 9, 1991, 27, 'Irom Rushee', 'female', 500019, 4878, 5),
(100028, 700020, 1, 1, 1992, 26, 'Talha Sarawar', 'male', 500020, 8999, 6),
(100029, 700021, 1, 1, 1980, 38, 'Hero Alom', 'male', 500021, 9190, 7),
(100030, 700022, 1, 1, 1997, 21, 'karim kazi', 'male', 500022, 4314, 2),
(100031, 700023, 2, 5, 1997, 21, 'Alamin ahmed', 'male', 500023, 7040, 1),
(100033, 700029, 19, 11, 1995, 23, 'Mohammed Ismail', 'male', 500025, 1166, 1),
(100034, 700032, 2, 2, 1997, 21, 'Ruhul khan', 'male', 500026, 2232, 4),
(100035, 700035, 17, 9, 1998, 20, 'Nahid Parvez', 'male', 500027, 5664, 1),
(100032, 7000099, 1, 9, 1998, 20, 'abc', 'male', 500024, 3091, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vote_database`
--

CREATE TABLE `vote_database` (
  `id` int(6) NOT NULL,
  `e_id` int(6) NOT NULL,
  `nid` int(6) NOT NULL,
  `mark` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_database`
--

INSERT INTO `vote_database` (`id`, `e_id`, `nid`, `mark`) VALUES
(13, 900001, 500001, '3'),
(14, 900001, 500004, '1'),
(15, 900001, 500003, '1'),
(16, 900001, 500008, '3'),
(17, 900001, 500007, '1'),
(18, 900001, 500025, '1'),
(19, 900001, 500026, '2'),
(20, 900001, 500027, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `can_database`
--
ALTER TABLE `can_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election_database`
--
ALTER TABLE `election_database`
  ADD PRIMARY KEY (`e_id`),
  ADD UNIQUE KEY `e_id` (`e_id`),
  ADD UNIQUE KEY `e_id_2` (`e_id`);

--
-- Indexes for table `emp_database`
--
ALTER TABLE `emp_database`
  ADD PRIMARY KEY (`emp_nid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD UNIQUE KEY `emp_id_2` (`emp_id`);

--
-- Indexes for table `voter_database`
--
ALTER TABLE `voter_database`
  ADD PRIMARY KEY (`birth_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vote_database`
--
ALTER TABLE `vote_database`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `can_database`
--
ALTER TABLE `can_database`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_database`
--
ALTER TABLE `emp_database`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `voter_database`
--
ALTER TABLE `voter_database`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100036;

--
-- AUTO_INCREMENT for table `vote_database`
--
ALTER TABLE `vote_database`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
