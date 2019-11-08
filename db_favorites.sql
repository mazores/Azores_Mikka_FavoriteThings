-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 08, 2019 at 12:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favorites`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

CREATE TABLE `tbl_card` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Name`, `Photo`) VALUES
(1, 'Hiking', 'mountain.svg'),
(2, 'The beach', 'beach.svg'),
(3, 'Reading books', 'open-book.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desc`
--

CREATE TABLE `tbl_desc` (
  `ID` int(11) NOT NULL,
  `thingID` int(11) NOT NULL,
  `Title` varchar(400) NOT NULL,
  `Description` varchar(600) NOT NULL,
  `favorite` varchar(400) NOT NULL,
  `DescPhoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_desc`
--

INSERT INTO `tbl_desc` (`ID`, `thingID`, `Title`, `Description`, `favorite`, `DescPhoto`) VALUES
(1, 1, 'Hiking', 'I have loved hiking since 2009 when I first hiked the Banaue Rice Terraces. After that, my dad has always brought me along to his hikes whether major or minor. Walking through the forest and up mountains is difficult but it teaches a lot of lessons to the hiker.', 'Mt. Guiting-Guiting, Mt. Maculot, Banaue Rice Terraces', 'hikingdesc.jpg'),
(2, 2, 'The beach', 'Being from the Philippines, the beach has always been a part of me. There is something therapeutic about being under the sun, looking at the ocean, and even just floating in the water.', 'Romblon, La Union, Baler', 'beachdesc.jpg'),
(3, 3, 'Reading books', 'I started reading books when I was three years old. Since then, I have always loved reading it. I lost time to do it for a bit but I eventually managed to do so again recently. I love when writers know how to describe and talk about places, people, and situations creatively and metaphorically.', 'Places I Stopped On the Way Home by Meg Fee, The Art of Racing in the Rain by Garth Stein, And Every Morning the Way Home Gets Longer and Longer by Fredrick Backman', 'booksdesc.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_card`
--
ALTER TABLE `tbl_card`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_desc`
--
ALTER TABLE `tbl_desc`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_card`
--
ALTER TABLE `tbl_card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_desc`
--
ALTER TABLE `tbl_desc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
