-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 10, 2025 at 05:02 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminID` varchar(20) NOT NULL,
  `adminName` varchar(50) DEFAULT NULL,
  `adminNIC` varchar(20) DEFAULT NULL,
  `adminPassword` varchar(20) DEFAULT NULL,
  `adminSecretPin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminNIC`, `adminPassword`, `adminSecretPin`) VALUES
('A001', 'Admin One', '980100123V', 'adminPass1', '9999'),
('A002', 'Admin Two', '880100234V', 'adminPass2', '8888'),
('A003', 'Admin Three', '780100345V', 'adminPass3', '7777'),
('A004', 'Admin Four', '680100456V', 'adminPass4', '6666'),
('A005', 'Admin Five', '580100567V', 'adminPass5', '5555');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `courseID` varchar(20) NOT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `numberOfStudents` int DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`courseID`)
) ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `numberOfStudents`, `startDate`, `endDate`) VALUES
('C001', 'Software Engineering', 120, '2025-02-01', '2025-06-01'),
('C002', 'Data Science', 151, '2025-03-01', '2025-07-01'),
('C003', 'Artificial Intelligence', 200, '2025-01-15', '2025-05-15'),
('C004', 'Web Development', 100, '2025-04-01', '2025-08-01'),
('C005', 'Database Management', 80, '2025-02-15', '2025-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `lecturerID` varchar(20) NOT NULL,
  `lecturerName` varchar(50) DEFAULT NULL,
  `lecturerNIC` varchar(20) DEFAULT NULL,
  `lecturerContactNo` varchar(20) DEFAULT NULL,
  `lecturerEmail` varchar(50) DEFAULT NULL,
  `lecturerDOB` date DEFAULT NULL,
  `lecturerGender` varchar(20) DEFAULT NULL,
  `lecturerPassword` varchar(50) DEFAULT NULL,
  `lecturerSecretPin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lecturerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturerID`, `lecturerName`, `lecturerNIC`, `lecturerContactNo`, `lecturerEmail`, `lecturerDOB`, `lecturerGender`, `lecturerPassword`, `lecturerSecretPin`) VALUES
('L001', 'Dr. John Doe', '990100123V', '0771234567', 'johndoe@gmail.com', '1985-07-12', 'Male', 'password123', '1234'),
('L002', 'Prof. Jane Smith', '890100234V', '0782345678', 'janesmith@gmail.com', '1982-09-14', 'Female', 'pass456', '5678'),
('L003', 'Mr. Mark Brown', '790100345V', '0793456789', 'markbrown@gmail.com', '1990-11-10', 'Male', 'markPass', '1357'),
('L004', 'Dr. Lucy White', '680100456V', '0714567890', 'lucywhite@gmail.com', '1987-03-20', 'Female', 'lucyPass2025', '2468'),
('L005', 'Prof. Peter Green', '580100567V', '0725678901', 'petergreen@gmail.com', '1980-01-05', 'Male', 'greenPass2025', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `subjectName` varchar(20) DEFAULT NULL,
  `studentID` varchar(50) DEFAULT NULL,
  `studentMarks` int DEFAULT NULL,
  `Grade` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `studentID` (`studentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`subjectName`, `studentID`, `studentMarks`, `Grade`) VALUES
('Software Engineering', 'S001', 85, 'A'),
('Data Science Basics', 'S002', 66, 'B'),
('Artificial Intellige', 'S003', 92, 'A'),
('Web Development Foun', 'S004', 88, 'A'),
('Database Management ', 'S005', 67, 'B'),
('Object-Oriented Prog', 'S001', 91, 'A'),
('Software Testing and', 'S001', 84, 'A'),
('Software Development', 'S001', 69, 'B'),
('Machine Learning for', 'S002', 92, 'A'),
('Big Data Technologie', 'S002', 60, 'C'),
('Statistical Methods ', 'S002', 88, 'A'),
('Software Engineering', 'S001', 66, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `studentID` varchar(50) NOT NULL,
  `studentName` varchar(50) DEFAULT NULL,
  `studentNIC` varchar(20) DEFAULT NULL,
  `studentDOB` date DEFAULT NULL,
  `studentAddress` varchar(50) DEFAULT NULL,
  `studentContactNo` varchar(50) DEFAULT NULL,
  `studentEmail` varchar(50) DEFAULT NULL,
  `studentGender` varchar(20) DEFAULT NULL,
  `studentPassword` varchar(20) DEFAULT NULL,
  `studentSecretPin` varchar(20) DEFAULT NULL,
  `courseID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  KEY `courseID` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studentName`, `studentNIC`, `studentDOB`, `studentAddress`, `studentContactNo`, `studentEmail`, `studentGender`, `studentPassword`, `studentSecretPin`, `courseID`) VALUES
('S001', 'Alice Brown', '991100123V', '2000-05-10', '123 Main St', '0788765432', 'aliceb@gmail.com', 'Female', 'alice123', '3333', 'C001'),
('S002', 'Bob Green', '890200234V', '1999-07-20', '456 Elm St', '0799876542', 'bobg@gmail.com', 'Male', 'bob123', '4444', 'C002'),
('S003', 'Charlie White', '790300345V', '2001-09-25', '789 Oak St', '0711122334', 'charliew@gmail.com', 'Male', 'charlie123', '5555', 'C003'),
('S004', 'Diana Black', '680400456V', '2000-02-05', '321 Pine St', '0723344556', 'dianab@gmail.com', 'Female', 'diana123', '6666', 'C004'),
('S005', 'Eva Blue', '580500567V', '1998-12-15', '654 Cedar St', '0734455667', 'evab@gmail.com', 'Female', 'eva123', '7777', 'C005');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subjectName` varchar(20) NOT NULL,
  `courseID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`subjectName`),
  KEY `courseID` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectName`, `courseID`) VALUES
('Software Engineering', 'C001'),
('Data Science Basics', 'C002'),
('Artificial Intellige', 'C003'),
('Web Development Foun', 'C004'),
('Database Management ', 'C005'),
('Object-Oriented Prog', 'C001'),
('Software Testing and', 'C001'),
('Software Development', 'C001'),
('Machine Learning for', 'C002'),
('Big Data Technologie', 'C002'),
('Statistical Methods ', 'C002');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `scheduleDate` date DEFAULT NULL,
  `scheduleTime` time DEFAULT NULL,
  `subjectName` varchar(20) DEFAULT NULL,
  `courseID` varchar(20) DEFAULT NULL,
  `lecturerID` varchar(20) DEFAULT NULL,
  KEY `courseID` (`courseID`),
  KEY `lecturerID` (`lecturerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`scheduleDate`, `scheduleTime`, `subjectName`, `courseID`, `lecturerID`) VALUES
('2025-02-01', '09:00:00', 'Software Engineering', 'C001', 'L001'),
('2025-03-01', '10:00:00', 'Data Science Basics', 'C002', 'L002'),
('2025-01-15', '11:00:00', 'Artificial Intellige', 'C003', 'L003'),
('2025-04-01', '14:00:00', 'Web Development Foun', 'C004', 'L004'),
('2025-02-15', '15:00:00', 'Database Management ', 'C005', 'L005');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
