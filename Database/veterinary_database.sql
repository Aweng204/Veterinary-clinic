-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 02:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinary_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_ID` varchar(10) NOT NULL,
  `client_ID` varchar(5) NOT NULL,
  `owner_Name` varchar(50) NOT NULL,
  `pet_ID` varchar(5) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `app_Date` date NOT NULL,
  `service_ID` varchar(5) NOT NULL,
  `Time` time NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_management`
--

CREATE TABLE `client_management` (
  `client_ID` varchar(5) NOT NULL,
  `owner_Name` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `owner_ContactNo` varchar(11) NOT NULL,
  `owner_Email` varchar(50) NOT NULL,
  `pet_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_management`
--

INSERT INTO `client_management` (`client_ID`, `owner_Name`, `Address`, `owner_ContactNo`, `owner_Email`, `pet_ID`) VALUES
('', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `confinement`
--

CREATE TABLE `confinement` (
  `service_ID` varchar(5) NOT NULL,
  `pet_ID` varchar(5) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `room_ID` varchar(5) NOT NULL,
  `emp_ID` varchar(5) NOT NULL,
  `emp_Fname` varchar(50) NOT NULL,
  `emp_Lname` varchar(50) NOT NULL,
  `checkin_Date` date NOT NULL,
  `checkout_Date` date NOT NULL,
  `confinement_Days` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confinement_rooms`
--

CREATE TABLE `confinement_rooms` (
  `room_ID` varchar(5) NOT NULL,
  `pet_ID` varchar(5) DEFAULT NULL,
  `pet_Name` varchar(50) DEFAULT NULL,
  `checkin_Date` date DEFAULT NULL,
  `checkout_Date` date DEFAULT NULL,
  `room_Price` int(5) NOT NULL,
  `room_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deworming`
--

CREATE TABLE `deworming` (
  `service_ID` varchar(5) NOT NULL,
  `pet_ID` varchar(5) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `dewormer_No` varchar(5) NOT NULL,
  `dewormer_Name` varchar(50) NOT NULL,
  `dewormer_Dategiven` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deworming_supply`
--

CREATE TABLE `deworming_supply` (
  `dewormer_No` varchar(5) NOT NULL,
  `dewormer_Name` varchar(50) NOT NULL,
  `dewormer_Quantity` int(5) NOT NULL,
  `dewormer_Price` int(5) NOT NULL,
  `dewormer_Expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disesase_list`
--

CREATE TABLE `disesase_list` (
  `disease_Name` varchar(100) NOT NULL,
  `disease_Desc` longtext NOT NULL,
  `pet_Species` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_management`
--

CREATE TABLE `employee_management` (
  `emp_ID` varchar(5) NOT NULL,
  `emp_Fname` varchar(50) NOT NULL,
  `emp_Mname` varchar(50) NOT NULL,
  `emp_Lname` varchar(50) NOT NULL,
  `emp_Position` varchar(50) NOT NULL,
  `emp_Email` varchar(50) NOT NULL,
  `emp_Contactnum` varchar(11) NOT NULL,
  `emp_Address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_accesories`
--

CREATE TABLE `inventory_accesories` (
  `item_Category` varchar(10) NOT NULL,
  `item_No` varchar(5) NOT NULL,
  `item_Name` varchar(50) NOT NULL,
  `item_Quantity` int(5) NOT NULL,
  `item_Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_foodsupply`
--

CREATE TABLE `inventory_foodsupply` (
  `item_Category` varchar(10) NOT NULL,
  `item_No` varchar(5) NOT NULL,
  `item_Name` varchar(50) NOT NULL,
  `item_Quantity` int(5) NOT NULL,
  `item_Price` int(5) NOT NULL,
  `item_Expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_management`
--

CREATE TABLE `inventory_management` (
  `item_No` varchar(5) NOT NULL,
  `item_Name` varchar(50) NOT NULL,
  `item_Quantity` int(5) NOT NULL,
  `item_Supplier` varchar(50) NOT NULL,
  `item_Category` varchar(10) NOT NULL,
  `item_Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_pharmacy`
--

CREATE TABLE `inventory_pharmacy` (
  `item_Category` varchar(5) NOT NULL,
  `item_No` varchar(50) NOT NULL,
  `item_Name` varchar(50) NOT NULL,
  `item_Quantity` int(5) NOT NULL,
  `item_Price` int(5) NOT NULL,
  `item_Expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `client_ID` int(11) NOT NULL,
  `owner_Name` int(11) NOT NULL,
  `pet_ID` int(11) NOT NULL,
  `pet_Name` int(11) NOT NULL,
  `service_ID` int(11) NOT NULL,
  `service_Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pet_information`
--

CREATE TABLE `pet_information` (
  `pet_ID` varchar(5) NOT NULL,
  `owner_Name` varchar(50) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `pet_Bday` date NOT NULL,
  `pet_Sex` varchar(10) NOT NULL,
  `pet_BP` varchar(50) NOT NULL,
  `pet_Weight` varchar(50) NOT NULL,
  `pet_Species` varchar(50) NOT NULL,
  `pet_Breed` varchar(50) NOT NULL,
  `pet_Color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pet_species`
--

CREATE TABLE `pet_species` (
  `pet_Species` varchar(50) NOT NULL,
  `pet_Breed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pet_vaccination`
--

CREATE TABLE `pet_vaccination` (
  `pet_ID` varchar(5) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `pet_Weight` varchar(50) NOT NULL,
  `vaccine_No` varchar(5) DEFAULT NULL,
  `vaccine_Name` varchar(50) DEFAULT NULL,
  `disease_Name` varchar(100) DEFAULT NULL,
  `vaccine_Dategiven` date DEFAULT NULL,
  `dewormer_No` varchar(5) DEFAULT NULL,
  `dewormer_Name` varchar(50) DEFAULT NULL,
  `dewormer_Dategiven` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_ID` varchar(5) NOT NULL,
  `item_No` varchar(5) NOT NULL,
  `item_Name` varchar(50) NOT NULL,
  `item_Quantity` int(5) NOT NULL,
  `item_Price` int(5) NOT NULL,
  `item_Category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_ID` varchar(5) NOT NULL,
  `service_Name` varchar(50) NOT NULL,
  `service_Desc` longtext NOT NULL,
  `service_Fee` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `emp_ID` varchar(5) NOT NULL,
  `emp_Fname` varchar(50) NOT NULL,
  `emp_Lname` varchar(50) NOT NULL,
  `user_Name` varchar(16) NOT NULL,
  `user_Pass` varchar(16) NOT NULL,
  `emp_Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `service_ID` varchar(5) NOT NULL,
  `pet_ID` varchar(5) NOT NULL,
  `pet_Name` varchar(50) NOT NULL,
  `vaccine_No` varchar(5) NOT NULL,
  `vaccine_Name` varchar(50) NOT NULL,
  `vaccine_Dategiven` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_supply`
--

CREATE TABLE `vaccination_supply` (
  `vaccine_No` varchar(5) NOT NULL,
  `vaccine_Name` varchar(50) NOT NULL,
  `vaccine_Quantity` int(5) NOT NULL,
  `vaccine_Price` int(5) NOT NULL,
  `vaccine_Expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian`
--

CREATE TABLE `veterinarian` (
  `emp_ID` varchar(5) NOT NULL,
  `emp_Fname` varchar(50) NOT NULL,
  `emp_Lname` varchar(50) NOT NULL,
  `emp_Position` varchar(50) NOT NULL,
  `date_Availability` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `vet_Lisence` varchar(13) NOT NULL,
  `vet_Signature` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_ID`);

--
-- Indexes for table `client_management`
--
ALTER TABLE `client_management`
  ADD PRIMARY KEY (`client_ID`);

--
-- Indexes for table `employee_management`
--
ALTER TABLE `employee_management`
  ADD PRIMARY KEY (`emp_ID`);

--
-- Indexes for table `pet_information`
--
ALTER TABLE `pet_information`
  ADD PRIMARY KEY (`pet_ID`);

--
-- Indexes for table `pet_species`
--
ALTER TABLE `pet_species`
  ADD PRIMARY KEY (`pet_Species`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
