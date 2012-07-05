-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2012 at 01:57 PM
-- Server version: 5.5.24-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `moovees`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACTORS`
--

CREATE TABLE IF NOT EXISTS `ACTORS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DIRECTORS`
--

CREATE TABLE IF NOT EXISTS `DIRECTORS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MOVIEACTOR`
--

CREATE TABLE IF NOT EXISTS `MOVIEACTOR` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `MOVIEID` int(6) NOT NULL,
  `ACTORID` int(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MOVIEDIRECTOR`
--

CREATE TABLE IF NOT EXISTS `MOVIEDIRECTOR` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `MOVIEID` int(6) NOT NULL,
  `DIRECTORID` int(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MOVIES`
--

CREATE TABLE IF NOT EXISTS `MOVIES` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `RATED` varchar(7) NOT NULL,
  `RELEASED` varchar(12) NOT NULL,
  `RUNTIME` varchar(12) NOT NULL,
  `GENRE` int(11) NOT NULL,
  `PLOT` varchar(1000) NOT NULL,
  `POSTER` varchar(200) NOT NULL,
  `IMDBRATING` varchar(6) NOT NULL,
  `IMDBVOTES` int(10) NOT NULL,
  `IMDBID` varchar(10) NOT NULL,
  `TMETER` varchar(3) NOT NULL,
  `TIMAGE` varchar(20) NOT NULL,
  `TREVIEWS` varchar(6) NOT NULL,
  `TFRESH` varchar(6) NOT NULL,
  `TROTTEN` varchar(6) NOT NULL,
  `TCONSENSUS` varchar(200) NOT NULL,
  `TUSERMETER` varchar(5) NOT NULL,
  `TUSERRATING` varchar(6) NOT NULL,
  `TUSERREVIEWS` varchar(10) NOT NULL,
  `ADDED` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MOVIEWRITER`
--

CREATE TABLE IF NOT EXISTS `MOVIEWRITER` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `MOVIEID` int(6) NOT NULL,
  `MOVIEWRITER` int(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `OWNED`
--

CREATE TABLE IF NOT EXISTS `OWNED` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `MOVIEID` int(2) NOT NULL,
  `1080P` int(2) NOT NULL,
  `720P` int(2) NOT NULL,
  `BRRIP` int(2) NOT NULL,
  `DIVX` int(2) NOT NULL,
  `BLURAY` int(2) NOT NULL,
  `DVD` int(2) NOT NULL,
  `VHS` int(2) NOT NULL,
  `ADDED` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WRITERS`
--

CREATE TABLE IF NOT EXISTS `WRITERS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

