-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2019 at 11:58 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `time`
--
CREATE DATABASE IF NOT EXISTS `time` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `time`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pno` varchar(20) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `pno`, `msg`) VALUES
('sharath', 'sharath@gmail.com', 'sharath@gmail.com', 'sharath@gmail.com'),
('sharu', 'shar@gmail.com', '7353737783', 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `cname` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `sem_ID` varchar(10) NOT NULL,
  `department_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cname`, `cid`, `sem_ID`, `department_id`) VALUES
('C#', '16ECAC805', '4', 'MCA'),
('MTLR', '15ECAH801', '4', 'MCA'),
('IT', '15ECAE805', '4', 'MCA'),
('PLSQL lab', '16ECACP805', '4', 'MCA'),
('C# Lab', '16ECAP804', '4', 'MCA'),
('DM', '16ECAC804', '4', 'MCA'),
('C C', '15ECAC802', '4', 'MCA'),
('M P', '15ECAP806', '4', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department` varchar(10) NOT NULL,
  `d_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department`, `d_id`) VALUES
('MCA', 'MCA123'),
('MCA102', '60');

-- --------------------------------------------------------

--
-- Table structure for table `join`
--

CREATE TABLE IF NOT EXISTS `join` (
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `pnum` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join`
--

INSERT INTO `join` (`name`, `gender`, `mail`, `pnum`, `course`, `address`, `pincode`) VALUES
('sharath', 'Male', 's@gmail.com', '7353737837', 'PC System', 'rnr', '581115');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('sharath', '123456'),
('umesh', '123456'),
('arun', '789456');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room`, `capacity`) VALUES
('MCA102', 60),
('MCA001', 50),
('MCA201', 60),
('MCA202', 60),
('MCA203', 60);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `departmet` varchar(10) NOT NULL,
  `sem` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `email`, `password`, `staff_id`, `address`, `departmet`, `sem`) VALUES
('sharath', 'sharath@gmail.com', '123456', '10', 'ranebennur', 'MCA', '4'),
('arun', 'arun@gmail.com', '1234578', 'arun23', 'haveri', 'MCA', '1'),
('Praveenkumar.S.M', 'praveen@gmail.com', 'praveen123', 'praveen123', 'hubli', 'MCA', '1'),
('S.V.Seeri', 'seeri@gmail.com', 'seeri@gmai', 'seeri123', 'Hubli', 'MCA', '4'),
('P.R.Patil', 'patil@gmail.com', 'patil123', 'patil123', 'hubli', 'MCA', '3'),
('Deepa.M', 'deepa@gmail.com', 'deepa123', 'deepam123', 'Hubli', 'MCA', '1'),
('S.R.Kulkarni', 'kulkarni@gmail.com', 'kulkarli12', 'srk123', 'hubli', 'MCA', '1');

-- --------------------------------------------------------

--
-- Table structure for table `timing`
--

CREATE TABLE IF NOT EXISTS `timing` (
  `time_id` varchar(10) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  `timing` varchar(10) NOT NULL,
  `day` varchar(30) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timing`
--

INSERT INTO `timing` (`time_id`, `cname`, `staff`, `room`, `timing`, `day`, `sem`) VALUES
('7696958323', 'PLSQL lab', 'S.R.Kulkarni', 'MCA202', '09:00', 'monday', 4),
('4187436326', 'PLSQL lab', 'S.R.Kulkarni', 'MCA202', '10:15', 'monday', 4),
('2485609786', 'PLSQL lab', 'S.R.Kulkarni', 'MCA202', '11:15', 'monday', 4),
('1370514899', 'DM', 'Deepa.M', 'MCA202', '01:30', 'monday', 4),
('2334744582', 'C C', 'S.V.Seeri', 'MCA202', '02:30', 'monday', 4),
('6943277877', 'MTLR', 'arun', 'MCA202', '03:30', 'monday', 4),
('2289787276', 'MTLR', 'arun', 'MCA202', '04:30', 'monday', 4),
('8099479756', 'C C', 'S.V.Seeri', 'MCA202', '08:00', 'tuesday', 4),
('3129519274', 'C#', 'Praveenkumar.S.M', 'MCA202', '09:00', 'tuesday', 4),
('8192832581', 'DM', 'Deepa.M', 'MCA202', '10:15', 'tuesday', 4),
('1435648778', 'IT', 'P.R.Patil', 'MCA202', '11:15', 'tuesday', 4),
('6993515648', 'C#', 'Praveenkumar.S.M', 'MCA202', '08:00', 'wednesday', 4),
('4239348567', 'IT', 'P.R.Patil', 'MCA202', '09:00', 'wednesday', 4),
('7448348676', 'C C', 'S.V.Seeri', 'MCA202', '10:15', 'wednesday', 4),
('9598856158', 'DM', 'Deepa.M', 'MCA202', '11:15', 'wednesday', 4),
('4379998993', 'C#', 'Praveenkumar.S.M', 'MCA202', '08:00', 'thursday', 4),
('4161697986', 'DM', 'Deepa.M', 'MCA202', '09:00', 'thursday', 4),
('9072529459', 'IT', 'P.R.Patil', 'MCA202', '10:15', 'thursday', 4),
('5399883126', 'M P', 'Praveenkumar.S.M', 'MCA202', '01:30', 'thursday', 4),
('2246348792', 'M P', 'Praveenkumar.S.M', 'MCA202', '02:30', 'thursday', 4),
('5955859142', 'M P', 'Praveenkumar.S.M', 'MCA202', '03:30', 'thursday', 4),
('3657387467', 'C# Lab', 'Deepa.M', 'MCA202', '09:00', 'friday', 4),
('7355617125', 'C# Lab', 'Deepa.M', 'MCA202', '10:15', 'friday', 4),
('7098465760', 'C# Lab', 'Deepa.M', 'MCA202', '11:15', 'friday', 4),
('8396522339', 'C C', 'S.V.Seeri', 'MCA202', '01:30', 'friday', 4),
('4586869497', 'IT', 'P.R.Patil', 'MCA202', '02:30', 'friday', 4),
('3023326465', 'MTLR', 'arun', 'MCA202', '03:30', 'friday', 4),
('2767574554', 'MTLR', 'arun', 'MCA202', '04:30', 'friday', 4),
('5463544665', 'C C', 'S.V.Seeri', 'MCA202', '08:00', 'saturday', 4),
('2350972330', 'IT', 'P.R.Patil', 'MCA202', '09:00', 'saturday', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
