-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2013 at 10:10 AM
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
-- Table structure for table `cg607`
--

CREATE TABLE IF NOT EXISTS `cg607` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cn102`
--

CREATE TABLE IF NOT EXISTS `cn102` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coa909`
--

CREATE TABLE IF NOT EXISTS `coa909` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp809`
--

CREATE TABLE IF NOT EXISTS `cp809` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp809`
--

INSERT INTO `cp809` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
('1', ' 	  Which of the following statements should be used to obtain a remainder after dividing 3.14 by 2.1 ?', 'rem = 3.14 % 2.1;', 'rem = modf(3.14, 2.1);', 'rem = fmod(3.14, 2.1);', 'Remainder cannot be obtain in floating point division.', 'rem = fmod(3.14, 2.1);'),
('2', 'What are the types of linkages?', 'Internal and External', 'External, Internal and None', 'External and None', 'Internal', 'External, Internal and None'),
('3', 'Which of the following special symbol allowed in a variable name?', '* (asterisk)', '| (pipeline)', '- (hyphen)', '_ (underscore)', '_ (underscore)'),
('4', 'How would you round off a value from 1.66 to 2.0?', 'ceil(1.66)', 'floor(1.66)', 'roundup(1.66)', 'roundto(1.66)', 'ceil(1.66)'),
('5', 'By default a real number is treated as a', 'float', 'double', 'int', 'far double', 'double'),
('6', 'Is the following statement a declaration or definition? extern int i;', 'Declaration', 'Definition', 'Function', 'Error', 'Declaration'),
('7', 'When we mention the prototype of a function', 'Defining', 'Declaring', 'Prototyping', 'calling', 'Declaring'),
('8', 'Which of the following is not logical operator?', '&', '&&', '||', '|', '&'),
('9', ' 	  In mathematics and computer programming, which is the correct order of mathematical operators ?', 'Addition, Subtraction, Multiplication, Division', 'Division, Multiplication, Addition, Subtraction', 'Multiplication, Addition, Division, Subtraction', 'Addition, Division, Modulus, Subtraction', 'Division, Multiplication, Addition, Subtraction'),
('10', 'Which of the following cannot be checked in a switch-case statement?', 'Character', 'Integer', 'Float', 'enum', 'Float');

-- --------------------------------------------------------

--
-- Table structure for table `cs909`
--

CREATE TABLE IF NOT EXISTS `cs909` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daa406`
--

CREATE TABLE IF NOT EXISTS `daa406` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbms405`
--

CREATE TABLE IF NOT EXISTS `dbms405` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ds504`
--

CREATE TABLE IF NOT EXISTS `ds504` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `facultyname` varchar(50) NOT NULL,
  `facultyID` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  PRIMARY KEY (`facultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyname`, `facultyID`, `passwd`, `email`, `mobile`, `dob`, `sex`) VALUES
('Nirmal Robert', 'CP-001', '123456', 'nirmal@gmail.com', '8413514654', '16/8/1973', 'male'),
('KK Pattnaik', 'CS-001', '123456', 'pattnaik@gmail.com', '9454165132', '14/7/1964', 'male'),
('K.V Arya', 'DAA-01', '123456', 'kvarya@gmail.com', '8989456465', '8/8/1980', 'male'),
('Promod Kumar Singh', 'DS-001', '123456', 'pksingh@gmail.com', '8989632541', '18/11/1976', 'male'),
('Anurag Shrivastav', 'IT-502', 'anurag', 'anurag@iiitm.ac.in', '1234567890', '19/12/1976', 'male'),
('Shivjay Singh', 'IT-503', '123456', 'shivjay@gmail.com', '7509812005', '19/12/1975', 'male'),
('Manisha Pattnaik', 'MBSD-01', '123456', 'manish@gmail.com', '9461321315', '18/4/1980', 'female'),
('Shashikala Tapaswi', 'OS-001', '123456', 'tapaswi@gmail.com', '9846543213', '17/9/1960', 'female'),
('Pankaj Srivastav', 'PHY-01', '123456', 'pankaj@gmail.com', '9332321321', '27/8/1972', 'male');

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
('ranneee', '12345@fmail.com', '9090909044', '     Taking test on this web site was a great experience...........really  good\r\n                                                   ');

-- --------------------------------------------------------

--
-- Table structure for table `ie401`
--

CREATE TABLE IF NOT EXISTS `ie401` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `it805`
--

CREATE TABLE IF NOT EXISTS `it805` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mbsd101`
--

CREATE TABLE IF NOT EXISTS `mbsd101` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`note`) VALUES
('\r\n                        Hello');

-- --------------------------------------------------------

--
-- Table structure for table `os101`
--

CREATE TABLE IF NOT EXISTS `os101` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `os101`
--

INSERT INTO `os101` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
('1', 'The part of machine level instruction, which tells the central processor what has to be done, is', 'Operation code', 'Flip-Flop', 'Locator', 'Address', 'Operation code'),
('2', 'Which of the following refers to the associative memory?', 'the address of the data is generated by the CPU', 'the address of the data is supplied by the users', 'there is no need for an address i.e. the data is used as an address', 'the data are accessed sequentially', 'there is no need for an address i.e. the data is used as an address'),
('3', 'To avoid the race condition, the number of processes that may be simultaneously inside their critical section is', '8', '1', '16', '0', '1'),
('4', ' A system program that combines the separately compiled modules of a program into a form suitable for execution', 'assembler', 'linking loader', 'cross compiler', 'load and go', 'linking loader'),
('5', 'Process is', 'program in High level language kept on disk', 'contents of main memory', 'a program in execution', 'a job in secondary memory', 'a program in execution'),
('6', 'Shell is the exclusive feature of', 'UNIX', 'DOC', 'System Software', 'Application Software', 'UNIX'),
('7', 'A program in execution is called', 'Process', 'Instruction', 'Procuder', 'Function', 'Process'),
('8', 'Interval between the time of submission and completion of the job is called', 'Waiting time', 'Throughput', 'Turnaround time', 'Response time', 'Turnaround time'),
('9', 'A scheduler which selects processes from secondary storage device is called', 'Short term scheduler.', 'Long term scheduler.', 'Medium term scheduler.', 'Process scheduler.', 'Long term scheduler.'),
('10', 'The scheduling in which CPU is allocated to the process with least CPU-burst time is called', 'Priority Scheduling', 'Shortest job first Scheduling', 'Multilevel Queue Scheduling', 'Round Robin Scheduling', 'Shortest job first Scheduling');

-- --------------------------------------------------------

--
-- Table structure for table `resultcg607`
--

CREATE TABLE IF NOT EXISTS `resultcg607` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultcn102`
--

CREATE TABLE IF NOT EXISTS `resultcn102` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultcoa909`
--

CREATE TABLE IF NOT EXISTS `resultcoa909` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultcp809`
--

CREATE TABLE IF NOT EXISTS `resultcp809` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `score` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultcp809`
--

INSERT INTO `resultcp809` (`username`, `score`) VALUES
('ipg_2011003', '30'),
('ipg_2011071', '35'),
('ipg_2015017', '5');

-- --------------------------------------------------------

--
-- Table structure for table `resultcs909`
--

CREATE TABLE IF NOT EXISTS `resultcs909` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultdaa406`
--

CREATE TABLE IF NOT EXISTS `resultdaa406` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultdbms405`
--

CREATE TABLE IF NOT EXISTS `resultdbms405` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultds504`
--

CREATE TABLE IF NOT EXISTS `resultds504` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultie401`
--

CREATE TABLE IF NOT EXISTS `resultie401` (
  `username` varchar(50) NOT NULL,
  `score` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultit805`
--

CREATE TABLE IF NOT EXISTS `resultit805` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultmbsd101`
--

CREATE TABLE IF NOT EXISTS `resultmbsd101` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultos101`
--

CREATE TABLE IF NOT EXISTS `resultos101` (
  `username` varchar(50) DEFAULT NULL,
  `score` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultse402`
--

CREATE TABLE IF NOT EXISTS `resultse402` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `score` int(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultse402`
--

INSERT INTO `resultse402` (`username`, `score`) VALUES
('ipg_2011003', 4),
('ipg_2011078', -1);

-- --------------------------------------------------------

--
-- Table structure for table `se402`
--

CREATE TABLE IF NOT EXISTS `se402` (
  `qno` varchar(10) DEFAULT NULL,
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se402`
--

INSERT INTO `se402` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
('1', 'which of the following is software development model ?', 'minar', 'waterfall', 'pythagoras', 'pert', 'waterfall');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentname` varchar(50) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentname`, `studentID`, `password`, `semester`, `email`, `mobile`, `dob`, `sex`) VALUES
('Abdul Qadir Faridi', 'ipg_2011003', 'aqfaridi', '5', 'aqfaridi@gmail.com', '7566062327', '28/12/1992', 'male'),
('Amresh Chauhan', 'ipg_2011017', '123456', '5', 'amr@gmail.com', '9655464441', '15/9/1991', 'male'),
('Ishu Garg', 'ipg_2011043', '123456', '5', 'ishu@gmail.com', '9325213132', '16/12/1991', 'male'),
('Kapil Dhakad', 'ipg_2011045', '123456', '5', 'dhakad@gmail.com', '9335544144', '14/3/1969', 'male'),
('Kuldeep Yadav', 'ipg_2011051', '123456', '5', 'kuldeep@gmail.com', '9131313131', '17/10/1990', 'male'),
('Kumar Sandesh', 'ipg_2011052', '123456', '5', 'sandesh@gmail.com', '9313215614', '12/6/1992', 'male'),
('Kumar Saurabh', 'ipg_2011053', '123456', '5', 'saurabh@gmail.com', '9365522441', '5/7/1990', 'male'),
('Pankaj Chaudhary', 'ipg_2011071', 'pankaj', '5', 'pankaj9310@gmail.com', '8989931101', '13/9/1993', 'male'),
('pranjal kumar', 'ipg_2011078', 'pranjal', '5', 'prnjl777@gmail.com', '8989931107', '18/11/1993', 'male'),
('Pronoy ', 'ipg_2011083', '123456', '5', 'pronoy@gmail.com', '9514654134', '16/12/1990', 'male'),
('Raj Kumar Muniya', 'ipg_2011089', '123456', '5', 'rajkumar.muniya@gmail.com', '9362552114', '30/7/1992', 'male'),
('rajnee', 'ipg_2015017', 'password', '8', 'amr@gmail.com', '1234567890', '31/2/2011', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subjectname` varchar(50) NOT NULL,
  `subjectcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectname`, `subjectcode`) VALUES
('Software Engg', 'SE402'),
('Operating System', 'os101'),
('Computer Networks', 'cn102'),
('Datat Structutes', 'ds504'),
('MBSD', 'MBSD101'),
('Database Management System', 'DBMS405'),
('Internet Technology', 'IT805'),
('Design Algorithm and Analysis', 'DAA406'),
('Computer Programming', 'CP809'),
('Computer Graphics', 'CG607'),
('Computer Architechture And Design', 'COA909'),
('Control Systems', 'CS909'),
('Industrial Economics', 'IE401');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
