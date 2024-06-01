-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--
CREATE TABLE `pharmacy` (
  `med_id` int(11) NOT NULL,
  `med_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pharmacy` (`med_id`, `med_name`, `quantity`, `cost`) VALUES
(125243, 'Abiraterone', 65, 245),
(13254, 'Gaviscon', 54, 87),
(13254, 'Gaviscon', 54, 87),
(16621, 'Letrozole', 72, 231),
(42252, 'Indapamide', 78, 94),
(77210, 'Tacrolimus', 99, 100),
(99435, 'Xelstrym', 66, 111),
(88345, 'Wellbutrin', 77, 421),
(99211, 'Fluoxamine', 88, 429),
(44214, 'Ketoconazole', 55, 50),
(12345, 'Aspirin', 10, 50),
(67890, 'Paracetamol', 20, 75),
(11223, 'Amoxicillin', 30, 120),
(44556, 'Ibuprofen', 15, 90),
(77889, 'Ciprofloxacin', 25, 150),
(99001, 'Metformin', 18, 105),
(22334, 'Atorvastatin', 22, 80),
(55667, 'Losartan', 33, 130),
(88990, 'Omeprazole', 40, 200),
(33445, 'Diazepam', 28, 170),
(66778, 'Prednisone', 12, 60),
(90111, 'Azithromycin', 17, 95),
(23444, 'Simvastatin', 19, 110),
(56777, 'Hydrochlorothiazide', 26, 140),
(89010, 'Warfarin', 38, 180),
(11223, 'Lisinopril', 42, 220),
(44556, 'Metoprolol', 16, 75),
(77889, 'Fluoxetine', 29, 160),
(99001, 'Clonazepam', 36, 190),
(22334, 'Levothyroxine', 48, 250),
(55667, 'Prednisolone', 14, 85),
(88990, 'Propranolol', 31, 120),
(33445, 'Cephalexin', 27, 130),
(66778, 'Methotrexate', 39, 200),
(90111, 'Sertraline', 45, 240),
(23444, 'Citalopram', 50, 280),
(56777, 'Venlafaxine', 44, 260),
(89010, 'Celecoxib', 37, 170),
(11223, 'Gabapentin', 41, 210),
(44556, 'Acyclovir', 23, 120),
(77889, 'Allopurinol', 32, 150),
(99001, 'Digoxin', 46, 230),
(22334, 'Amlodipine', 21, 100),
(55667, 'Trazodone', 49, 270),
(88990, 'Carvedilol', 47, 260),
(33445, 'Escitalopram', 35, 180),
(66778, 'Naproxen', 37, 190),
(90111, 'Tramadol', 45, 240),
(23444, 'Clarithromycin', 22, 80),
(56777, 'Duloxetine', 32, 150),
(89010, 'Tamsulosin', 18, 105);


CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');


-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('anand', 'anand123', 'ana23@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 1000),
  ('Emily', 'emily123', 'emily@gmail.com', 'Ophthalmologist', 900),
    ('Brian', 'brian123', 'brian@gmail.com', 'Orthopedic Surgeon', 1200),
    ('Sophie', 'sophie123', 'sophie@gmail.com', 'General', 550),
    ('Chris', 'chris123', 'chris@gmail.com', 'Cardiologist', 950),
    ('Eva', 'eva123', 'eva@gmail.com', 'Dentist', 800),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450),
 ('John', 'john123', 'john@gmail.com', 'Dermatologist', 700),
    ('Mary', 'mary123', 'mary@gmail.com', 'General', 600),
    ('Lisa', 'lisa123', 'lisa@gmail.com', 'Cardiologist', 850),
    ('David', 'david123', 'david@gmail.com', 'Neurologist', 500),
    ('Sara', 'sara123', 'sara@gmail.com', 'Pediatrician', 750);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES

(21, 'Rahul', 'Verma', 'Male', 'rahul@gmail.com', '9876543210', 'rahul123', 'rahul123'),
    (22, 'Priya', 'Singh', 'Female', 'priya@gmail.com', '8976897689', 'priya123', 'priya123'),
    (23, 'Amitabh', 'Mishra', 'Male', 'amitabh@gmail.com', '8976898463', 'amitabh123', 'amitabh123'),
    (24, 'Vijay', 'Sharma', 'Male', 'vijaysharma@gmail.com', '8838489464', 'vijay123', 'vijay123'),
    (25, 'Radha', 'Nair', 'Female', 'radha@gmail.com', '9070897653', 'radha123', 'radha123'),
    (26, 'Vikram', 'Yadav', 'Male', 'vikram@gmail.com', '9059986865', 'vikram123', 'vikram123'),
    (27, 'Jessica', 'Pereira', 'Female', 'jessica@gmail.com', '9128972454', 'jessica123', 'jessica123'),
    (28, 'Rajat', 'Kumar', 'Male', 'rajat@gmail.com', '9809879868', 'rajat123', 'rajat123'),
    (29, 'Samantha', 'Jones', 'Female', 'samantha@gmail.com', '8683619153', 'samantha123', 'samantha123'),
    (30, 'Andrew', 'Smith', 'Male', 'andrew@gmail.com', '9609362815', 'andrew123', 'andrew123'),
    (31, 'Anushka', 'Sharma', 'Female', 'anushka@gmail.com', '9768946252', 'anushka123', 'anushka123'),
    (32, 'Priyanka', 'Chopra', 'Female', 'priyanka@gmail.com', '9768946255', 'priyanka123', 'priyanka123'),
    (33, 'Raj', 'Patel', 'Male', 'raj@gmail.com', '9876543212', 'raj123', 'raj123'),
    (34, 'Emma', 'Watson', 'Female', 'emma@gmail.com', '9090909090', 'emma123', 'emma123'),
    (35, 'Alex', 'Miller', 'Male', 'alex@gmail.com', '9885566779', 'alex123', 'alex123'),
    (36, 'Amitabh', 'Bachchan', 'Male', 'amitabh@gmail.com', '9876543211', 'amitabh123', 'amitabh123'),
    (37, 'Deepika', 'Padukone', 'Female', 'deepika@gmail.com', '9123456789', 'deepika123', 'deepika123'),
    (38, 'Rahul', 'Gupta', 'Male', 'rahul@gmail.com', '9876543222', 'rahul123', 'rahul123'),
    (39, 'Emma', 'Stone', 'Female', 'emma.stone@gmail.com', '9012345678', 'emma_stone123', 'emma_stone123'),
    (40, 'Ravi', 'Verma', 'Male', 'ravi@gmail.com', '9876543233', 'ravi123', 'ravi123'),
    (41, 'Kareena', 'Kapoor', 'Female', 'kareena@gmail.com', '9876543244', 'kareena123', 'kareena123'),
    (42, 'Rohan', 'Mehra', 'Male', 'rohan@gmail.com', '9876543255', 'rohan123', 'rohan123');


-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`med_id`);
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
