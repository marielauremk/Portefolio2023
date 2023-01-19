-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 14:30
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_pays`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_communes`
--

CREATE TABLE IF NOT EXISTS `table_communes` (
  `code_commune` int(11) NOT NULL,
  `Nom_commune` varchar(20) NOT NULL,
  `population VF` int(11) DEFAULT NULL,
  `Surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `numero_dep` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `numero_dep` (`numero_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_communes`
--

INSERT INTO `table_communes` (`code_commune`, `Nom_commune`, `population VF`, `Surface`, `longitude`, `latitude`, `numero_dep`) VALUES
(15014, 'aurillac', 28210, 29, 2, 45, 15),
(23200, 'aubusson', 3900, 19, 46, 2, 23),
(27229, 'evreux', 52000, 26, 1, 49, 27),
(67000, 'strasbourg', 280000, 78, 8, 49, 67),
(71510, 'aluze ', 170000, 6, 47, 5, 71),
(93380, 'pierrefitte-sur-sein', 18000, 3, 2, 49, 93);

-- --------------------------------------------------------

--
-- Structure de la table `table_departements`
--

CREATE TABLE IF NOT EXISTS `table_departements` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(20) NOT NULL,
  `code-region` int(11) NOT NULL,
  PRIMARY KEY (`num_departement`),
  KEY `code-region` (`code-region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_departements`
--

INSERT INTO `table_departements` (`num_departement`, `nom_departement`, `code-region`) VALUES
(15, 'cantal', 83),
(23, 'creuse', 74),
(27, 'leure', 42),
(67, 'bas-rhin', 26),
(71, 'saone_et-loire', 23),
(93, 'seine-saint-denis', 11);

-- --------------------------------------------------------

--
-- Structure de la table `table_regions`
--

CREATE TABLE IF NOT EXISTS `table_regions` (
  `code_region` int(11) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_regions`
--

INSERT INTO `table_regions` (`code_region`, `nom_region`) VALUES
(11, 'ile-de-france'),
(23, 'haute_normandie'),
(26, 'bourgogne'),
(42, 'alsace'),
(74, 'limousin'),
(83, 'auvergne');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table_departements`
--
ALTER TABLE `table_departements`
  ADD CONSTRAINT `table_departements_ibfk_2` FOREIGN KEY (`code-region`) REFERENCES `table_regions` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_departements_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `table_communes` (`numero_dep`) ON DELETE CASCADE ON UPDATE CASCADE;
