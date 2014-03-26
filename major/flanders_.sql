-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2014 at 03:30 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `flanders_`
--

-- --------------------------------------------------------

--
-- Table structure for table `flanders_points`
--

CREATE TABLE `flanders_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `flanders_points`
--

INSERT INTO `flanders_points` (`id`, `longitude`, `latitude`, `type`) VALUES
(1, 1, 1, 1),
(2, 0, 0, 2),
(3, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `flanders_stories`
--

CREATE TABLE `flanders_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `lifetime` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `H_pic` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `flanders_stories`
--

INSERT INTO `flanders_stories` (`id`, `title`, `lifetime`, `text`, `H_pic`) VALUES
(1, 'Andre Mare', '1914-2014', 'tetten tetten tetten.', 'image1');
