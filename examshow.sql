-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2014 at 03:03 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `examshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin456');

-- --------------------------------------------------------

--
-- Table structure for table `cs102`
--

CREATE TABLE IF NOT EXISTS `cs102` (
  `qno` int(11) NOT NULL DEFAULT '0',
  `qname` text,
  `opt1` varchar(300) DEFAULT NULL,
  `opt2` varchar(300) DEFAULT NULL,
  `opt3` varchar(300) DEFAULT NULL,
  `opt4` varchar(300) DEFAULT NULL,
  `ans` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs102`
--

INSERT INTO `cs102` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, '<p>Which port is used for ssh ?</p>', '22', '21', '80', '443', '22');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `scode` varchar(200) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `instructions` text NOT NULL,
  PRIMARY KEY (`scode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`scode`, `startdate`, `enddate`, `instructions`) VALUES
('CS102', '2016-01-31 19:00:00', '2016-02-01 19:00:00', '<p>&nbsp;</p>\r\n<p class="MsoNormal" style="padding-left: 30px; text-align: center;"><strong>&nbsp;&nbsp;</strong><span style="text-decoration: underline;"><strong> RULES FOR PARTICIPATION&nbsp; </strong><br /></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;">There will be negative marking.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;">+4 for correct answer</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;">-1 for wrong answer</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">1.</span><span style="color: black; mso-themecolor: text1;"> Only Individual Participation is allowed (No Teams).</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">2.</span><span style="color: black; mso-themecolor: text1;"> The event will be held online as mentioned in the timeline.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;"><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp; </span>So, all the participants are requested to register on the Examshow website</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;"><span style="mso-spacerun: yes;">&nbsp;&nbsp;&nbsp; </span><a href="http://examshow.codeshare.in">Register Here</a> for participation.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">3.</span><span style="color: black; mso-themecolor: text1;"> The top two Participants will be awarded the goodies.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">4.</span><span style="color: black; mso-themecolor: text1;"><span style="mso-spacerun: yes;">&nbsp; </span>Only students who are studying in any collage or school eligible to take part.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">5.</span><span style="color: black; mso-themecolor: text1;"> If any team(s) is found posting answers in any forum will be immediately disqualified without any prior notice.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">6.</span><span style="color: black; mso-themecolor: text1;"> Any team found having fake information regarding qualification criteria or profile information shall be immediately disqualified.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">7.</span><span style="color: black; mso-themecolor: text1;"><span style="mso-spacerun: yes;">&nbsp; </span>Any team which attempts to hack/deliberately crash the judging system will be immediately disqualified.</span></strong></span></p>\r\n<p class="MsoNormal" style="padding-left: 30px;"><span style="mso-bookmark: _GoBack;"><strong style="mso-bidi-font-weight: normal;"><span style="color: #c0504d; mso-themecolor: accent2;">8.</span><span style="color: black; mso-themecolor: text1;"> The decision of the organizers in declaring the results will be final and will be binding to all. No queries in this regard will be entertained</span></strong></span><strong style="mso-bidi-font-weight: normal;"><span style="color: black; mso-themecolor: text1;">.</span></strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `facultyname` varchar(50) NOT NULL,
  `facultyID` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `authcode` varchar(50) NOT NULL,
  PRIMARY KEY (`facultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyname`, `facultyID`, `passwd`, `institute`, `email`, `mobile`, `dob`, `sex`, `flag`, `authcode`) VALUES
('Nirmal', 'nirmal', '/OqSD3QStdp74M9CuMk3WQ==', 'IIITM', 'pankaj9310@gmail.com', '8989931102', '1/1/1960', 'male', 1, 'VFrtbwC8PNWV'),
('Prof Anupam Shukla', 'shukla', '/OqSD3QStdp74M9CuMk3WQ==', 'IIITM', 'anupam@gmail.com', '7509812005', '1/3/1962', 'male', 1, 'BHw5HmYePqY2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(20) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `number`, `comment`) VALUES
('pankaj', 'pankaj@gmail.com', '8989931101', 'hello                    pankaj chandra                                    '),
('Pankaj Chaudhary', 'pankaj9310@gmail.com', '8989931101', 'Testing feedback system .                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`note`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`note`) VALUES
('\r\n                  Quiz will start 9:30 PM\r\nno of question=40\r\nTime allowed 30min\r\n      Best of Luck :)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentname` varchar(50) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `authcode` varchar(200) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentname`, `studentID`, `password`, `institute`, `semester`, `email`, `mobile`, `dob`, `sex`, `authcode`) VALUES
('Pankaj Chaudhary', 'ipg_2011071', '4QrcOUm6Wau+VuBX8g+IPg==', 'IIITM', '10', 'pankaj9310@gmail.com', '8989931101', '16/4/1993', 'male', 'BCJrbe6ww4TM'),
('Pankaj Chaudhary', 'pankaj9310', '4QrcOUm6Wau+VuBX8g+IPg==', 'IIITM', '00', 'pankaj9310@gmail.com', '8989931101', 'dd/mm/yyyy', 'gender', 'E2t9XSb8HaHb');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subjectname` varchar(50) NOT NULL,
  `subjectcode` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`subjectcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectname`, `subjectcode`, `author`) VALUES
('Computer Science', 'CS102', 'shukla');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
