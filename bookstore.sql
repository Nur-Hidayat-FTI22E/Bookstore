-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2024 at 04:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `databooks`
--

CREATE TABLE `databooks` (
  `IdBuku` int(11) NOT NULL,
  `Kategori` varchar(40) NOT NULL,
  `NamaBuku` varchar(60) NOT NULL,
  `Harga` int(20) NOT NULL,
  `Stok` int(3) NOT NULL,
  `penerbit` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databooks`
--

INSERT INTO `databooks` (`IdBuku`, `Kategori`, `NamaBuku`, `Harga`, `Stok`, `penerbit`) VALUES
(1, 'Romance', 'back to reality', 900000, 2, 1),
(2, 'Romance', 'back to reality cuy', 900000, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penerbitbooks`
--

CREATE TABLE `penerbitbooks` (
  `IdPenerbit` int(11) NOT NULL,
  `NamaPenerbit` varchar(40) NOT NULL,
  `Alamat` text NOT NULL,
  `Kota` varchar(20) NOT NULL,
  `Telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbitbooks`
--

INSERT INTO `penerbitbooks` (`IdPenerbit`, `NamaPenerbit`, `Alamat`, `Kota`, `Telepon`) VALUES
(1, 'dayat', 'emmy saelan', 'makassar', '786543'),
(2, 'afiah', 'basuki rahmat', 'kolaka', '786543123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databooks`
--
ALTER TABLE `databooks`
  ADD PRIMARY KEY (`IdBuku`),
  ADD KEY `relasibooks1` (`penerbit`);

--
-- Indexes for table `penerbitbooks`
--
ALTER TABLE `penerbitbooks`
  ADD PRIMARY KEY (`IdPenerbit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `databooks`
--
ALTER TABLE `databooks`
  MODIFY `IdBuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penerbitbooks`
--
ALTER TABLE `penerbitbooks`
  MODIFY `IdPenerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `databooks`
--
ALTER TABLE `databooks`
  ADD CONSTRAINT `relasibooks1` FOREIGN KEY (`penerbit`) REFERENCES `penerbitbooks` (`IdPenerbit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
