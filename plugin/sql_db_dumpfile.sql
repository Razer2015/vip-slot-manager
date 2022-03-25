-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 20. Apr 2017 um 13:19
-- Server-Version: 5.6.33-0ubuntu0.14.04.1-log
-- PHP-Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `db_293921_1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vsm_tbrowsersessions`
--

CREATE TABLE IF NOT EXISTS `vsm_tbrowsersessions` (
  `id` int(11) NOT NULL,
  `sessionID` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `lockedUntil` INT NOT NULL DEFAULT 0,
  `error` varchar(300) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `tSessionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vsm_tfilter`
--

CREATE TABLE IF NOT EXISTS `vsm_tfilter` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `server` varchar(10) DEFAULT NULL,
  `gruppe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vsm_tuser`
--

CREATE TABLE IF NOT EXISTS `vsm_tuser` (
  `id` int(11) NOT NULL,
  `sessionID` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `passwordDummy` varchar(20) DEFAULT NULL,
  `salt` varchar(5) DEFAULT NULL,
  `rights` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tabellenstruktur für Tabelle `vsm_vips`
--

CREATE TABLE IF NOT EXISTS `vsm_vips` (
  `ID` int(11) NOT NULL,
  `gametype` varchar(3) NOT NULL,
  `servergroup` varchar(2) NOT NULL,
  `playername` varchar(35) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(8) NOT NULL,
  `admin` varchar(35) DEFAULT NULL,
  `comment` text NULL DEFAULT NULL,
  `guid` varchar(35) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `vsm_tbrowsersessions`
--
ALTER TABLE `vsm_tbrowsersessions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vsm_tfilter`
--
ALTER TABLE `vsm_tfilter`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vsm_tuser`
--
ALTER TABLE `vsm_tuser`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vsm_vips`
--
ALTER TABLE `vsm_vips`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `servergroup` (`servergroup`,`playername`,`gametype`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `vsm_tbrowsersessions`
--
ALTER TABLE `vsm_tbrowsersessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `vsm_tfilter`
--
ALTER TABLE `vsm_tfilter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `vsm_tuser`
--
ALTER TABLE `vsm_tuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `vsm_vips`
--
ALTER TABLE `vsm_vips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Daten für Tabelle `vsm_tuser`
--

INSERT INTO vsm_tuser (email, password, salt, rights) SELECT * FROM (SELECT 'admin', '8a2c156a7d5c76b1f9e4c75353627a3a', '28g7d', 0) AS tmp WHERE NOT EXISTS ( SELECT email FROM vsm_tuser ) LIMIT 1;
-- --------------------------------------------------------
