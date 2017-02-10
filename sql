-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 09 Février 2017 à 15:14
-- Version du serveur: 5.1.36
-- Version de PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `questionnaire_stjo`
--

-- --------------------------------------------------------

--
-- Structure de la table `connaitre`
--

CREATE TABLE IF NOT EXISTS `connaitre` (
  `Id_Connaitre` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_Connaitre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `connaitre`
--


-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE IF NOT EXISTS `diplome` (
  `Id_diplome` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_diplome`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `diplome`
--

INSERT INTO `diplome` (`Id_diplome`, `Libelle`) VALUES
(1, 'BTS'),
(2, 'BAC General'),
(3, 'BAC Technologique'),
(4, 'BAC Professionnel'),
(5, 'CAP');

-- --------------------------------------------------------

--
-- Structure de la table `diplome-actuelle`
--

CREATE TABLE IF NOT EXISTS `diplome-actuelle` (
  `Id_Diplome_Actuelle` int(11) NOT NULL AUTO_INCREMENT,
  `Diplome` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_Diplome_Actuelle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `diplome-actuelle`
--

INSERT INTO `diplome-actuelle` (`Id_Diplome_Actuelle`, `Diplome`) VALUES
(1, 'BAC GENERAL'),
(2, 'BAC TECHNOLOGIQUE'),
(3, 'BAC PRO'),
(4, 'CAP'),
(5, 'BTS'),
(6, 'LICENCE'),
(7, 'MASTER'),
(8, 'DOCTORAT'),
(9, 'AUCUN'),
(10, 'AUTRE');

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
  `Id_Etablissement` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_Etablissement`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `etablissement`
--

INSERT INTO `etablissement` (`Id_Etablissement`, `Libelle`) VALUES
(1, 'LYCEE LE CASTEL'),
(2, 'LYCEE SIMONE WEIL'),
(3, 'LYCEE EUROPEEN CHARLES DE GAULLE'),
(4, 'LYCEE HIPPOLYTE FONTAINE'),
(5, 'LYCEE CARNOT'),
(6, 'LYCEE MONTCHAPET'),
(7, 'LYCEE GUSTAVE EIFFEL'),
(8, 'LYCEE LES MARCS D''OR'),
(9, 'LYCEE NOTRE-DAME'),
(10, 'LYCEE SAINT-BENIGNE'),
(11, 'LYCEE SAINT-JOSEPH'),
(12, 'LYCEE LES ARCADES'),
(13, 'UNIVERSITE DE BOURGOGNE'),
(14, 'IUT DIJON');

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `Id_Section` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  `FK_Diplome` int(11) NOT NULL,
  PRIMARY KEY (`Id_Section`),
  KEY `FK_Diplome` (`FK_Diplome`),
  KEY `FK_Diplome_2` (`FK_Diplome`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `section`
--

INSERT INTO `section` (`Id_Section`, `Libelle`, `FK_Diplome`) VALUES
(1, 'SN', 1),
(2, 'E', 1),
(3, 'CRSA', 1),
(4, 'CPI', 1),
(5, 'BAC SSI', 2),
(6, 'BAC S-SVT', 2),
(7, 'BAC ES', 2),
(8, 'BAC STI 2D', 3),
(9, 'BAC SEN EIE', 4),
(10, 'BAC SEN ASI', 4),
(11, 'BAC SEN ED', 4),
(12, 'BAC EDPI', 4),
(13, 'BAC MELEC', 4),
(14, 'BAC MEI', 4),
(15, 'BAC MAV', 4),
(16, 'BAC OBM', 4),
(17, 'BAC TFCA', 4),
(18, 'BAC TMA', 4),
(19, 'BAC TU', 4),
(20, 'CAP MBC', 5);

-- --------------------------------------------------------

--
-- Structure de la table `section_provenance`
--

CREATE TABLE IF NOT EXISTS `section_provenance` (
  `Id_Section_Povenance` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  `FK_Diplome_Actuelle` int(11) NOT NULL,
  PRIMARY KEY (`Id_Section_Povenance`),
  KEY `FK_Diplome_Actuelle` (`FK_Diplome_Actuelle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Contenu de la table `section_provenance`
--

INSERT INTO `section_provenance` (`Id_Section_Povenance`, `Libelle`, `FK_Diplome_Actuelle`) VALUES
(1, 'SSI', 1),
(2, 'S-SVT', 1),
(3, 'ES', 1),
(4, 'L', 1),
(5, 'STI 2D', 2),
(6, 'TMD', 2),
(7, 'HOTELLERIE', 2),
(8, 'STD2A', 2),
(9, 'STL', 2),
(10, 'ST2S', 2),
(11, 'STMG', 2),
(12, 'SEN EIE', 3),
(13, 'SEN ASI', 3),
(14, 'SEN ED', 3),
(15, 'MELEC', 3),
(16, 'EDPI', 3),
(17, 'MEI', 3),
(18, 'MAV', 3),
(19, 'OBM', 3),
(20, 'TFCA', 3),
(21, 'TMA', 3),
(22, 'TU', 3),
(23, 'PE', 4),
(24, 'E', 4),
(25, 'CUISINE', 4),
(26, 'BOULANGERIE', 4),
(27, 'PATISSERIE', 4),
(28, 'COIFFURE', 4),
(29, 'MBC', 4),
(30, 'SN', 5),
(31, 'E', 5),
(32, 'CRSA', 5),
(33, 'CPI', 5),
(34, 'STS', 6),
(35, 'SH', 6),
(36, 'EG', 6),
(37, 'MASTER', 7),
(38, 'DOCTORAT', 8);

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE IF NOT EXISTS `visiteur` (
  `Id_Visiteur` int(11) NOT NULL AUTO_INCREMENT,
  `Code Postal` varchar(6) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Date` date NOT NULL,
  `FK_Etablissement` int(11) NOT NULL,
  `FK_Section_Provenance` int(11) NOT NULL,
  `FK_Connaitre` int(11) NOT NULL,
  `FK_Section` int(11) NOT NULL,
  PRIMARY KEY (`Id_Visiteur`),
  KEY `FK_Etablissement` (`FK_Etablissement`),
  KEY `FK_Connaitre` (`FK_Connaitre`),
  KEY `FK_Section_Provenance` (`FK_Section_Provenance`),
  KEY `FK_Section` (`FK_Section`),
  KEY `FK_Section_Provenance_2` (`FK_Section_Provenance`),
  KEY `FK_Section_2` (`FK_Section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `visiteur`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`FK_Diplome`) REFERENCES `diplome` (`Id_diplome`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `section_provenance`
--
ALTER TABLE `section_provenance`
  ADD CONSTRAINT `section_provenance_ibfk_1` FOREIGN KEY (`FK_Diplome_Actuelle`) REFERENCES `diplome-actuelle` (`Id_Diplome_Actuelle`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `visiteur_ibfk_1` FOREIGN KEY (`FK_Etablissement`) REFERENCES `etablissement` (`Id_Etablissement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `visiteur_ibfk_2` FOREIGN KEY (`FK_Connaitre`) REFERENCES `connaitre` (`Id_Connaitre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `visiteur_ibfk_3` FOREIGN KEY (`FK_Section_Provenance`) REFERENCES `section_provenance` (`Id_Section_Povenance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `visiteur_ibfk_4` FOREIGN KEY (`FK_Section`) REFERENCES `section` (`Id_Section`) ON DELETE NO ACTION ON UPDATE NO ACTION;
