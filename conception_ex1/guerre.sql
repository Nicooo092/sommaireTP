-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2026 at 10:27 AM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guerre`
--

-- --------------------------------------------------------

--
-- Table structure for table `affecte`
--

CREATE TABLE `affecte` (
  `code_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_unite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_affectation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batailles`
--

CREATE TABLE `batailles` (
  `code_bataille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lieu` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blesse`
--

CREATE TABLE `blesse` (
  `code_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_bataille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_blessure` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_blessure` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blessures`
--

CREATE TABLE `blessures` (
  `code_blessure` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type_blessure` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `code_grade` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `intitule_grade` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promu`
--

CREATE TABLE `promu` (
  `code_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_grade` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_promotion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soldats`
--

CREATE TABLE `soldats` (
  `code_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_soldat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `date_deces` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unites`
--

CREATE TABLE `unites` (
  `code_unite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_unite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affecte`
--
ALTER TABLE `affecte`
  ADD PRIMARY KEY (`code_soldat`,`code_unite`);

--
-- Indexes for table `batailles`
--
ALTER TABLE `batailles`
  ADD PRIMARY KEY (`code_bataille`);

--
-- Indexes for table `blesse`
--
ALTER TABLE `blesse`
  ADD PRIMARY KEY (`code_soldat`,`code_bataille`,`code_blessure`);

--
-- Indexes for table `blessures`
--
ALTER TABLE `blessures`
  ADD PRIMARY KEY (`code_blessure`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`code_grade`);

--
-- Indexes for table `promu`
--
ALTER TABLE `promu`
  ADD PRIMARY KEY (`code_soldat`,`code_grade`),
  ADD KEY `promu_code_grade_FK` (`code_grade`);

--
-- Indexes for table `soldats`
--
ALTER TABLE `soldats`
  ADD PRIMARY KEY (`code_soldat`);

--
-- Indexes for table `unites`
--
ALTER TABLE `unites`
  ADD PRIMARY KEY (`code_unite`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affecte`
--
ALTER TABLE `affecte`
  ADD CONSTRAINT `affecte_code_soldat_FK` FOREIGN KEY (`code_soldat`) REFERENCES `soldats` (`code_soldat`);

--
-- Constraints for table `blesse`
--
ALTER TABLE `blesse`
  ADD CONSTRAINT `blesse_code_soldat_FK` FOREIGN KEY (`code_soldat`) REFERENCES `soldats` (`code_soldat`);

--
-- Constraints for table `promu`
--
ALTER TABLE `promu`
  ADD CONSTRAINT `promu_code_grade_FK` FOREIGN KEY (`code_grade`) REFERENCES `grades` (`code_grade`),
  ADD CONSTRAINT `promu_code_soldat_FK` FOREIGN KEY (`code_soldat`) REFERENCES `soldats` (`code_soldat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
