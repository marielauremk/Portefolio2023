-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 08 Décembre 2022 à 15:13
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(5) NOT NULL,
  `nom_prénom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` text NOT NULL,
  `ville` varchar(10) NOT NULL,
  `code_postale` varchar(5) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `date_permis` date NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prénom`, `date_naissance`, `adresse`, `ville`, `code_postale`, `telephone`, `date_permis`, `email`) VALUES
('12345', 'ntetani_nzumba_claud', '0000-00-00', '', 'pierrefite', '93380', '0652249183', '2022-12-08', 'claudinemukoko@gmail'),
('13456', 'ntetani_nzumba_claud', '0000-00-00', 'pierrefitte ', 'pierrefite', '93380', '0652249183', '2022-12-08', 'claudinemukoko@gmail'),
('67891', 'mukoko_isaac', '0000-00-00', '', 'pierrefitt', '93380', '0781623389', '2022-12-28', 'isaacmukoko@gmail.co'),
('67899', 'mukoko_isaac', '0000-00-00', '', 'pierrefite', '93380', '0652249183', '2022-12-08', 'isaacmukoko@gmail.co'),
('98765', 'mukoko_isaac', '0000-00-00', 'pierrefitte', 'pierrefitt', '93380', '0781623389', '2022-12-28', 'isaacmukoko@gmail.co');

-- --------------------------------------------------------

--
-- Structure de la table `gestion_ticket`
--

CREATE TABLE IF NOT EXISTS `gestion_ticket` (
  `id_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `code_client` varchar(5) NOT NULL,
  `immatriculation` varchar(10) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`,`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `gestion_ticket`
--

INSERT INTO `gestion_ticket` (`id_location`, `date_location`, `duree`, `prix_jour`, `code_client`, `immatriculation`) VALUES
(124, '2022-12-21', 8, 34, '12345', '922GEN21'),
(129, '2022-12-29', 8, 34, '67891', '922GEN21');

-- --------------------------------------------------------

--
-- Structure de la table `reparation_voiture`
--

CREATE TABLE IF NOT EXISTS `reparation_voiture` (
  `num_reparation` int(11) NOT NULL,
  `date_reparation` date NOT NULL,
  `duree_reparation` int(11) NOT NULL,
  `cout_reparation` int(11) NOT NULL,
  `nom_reparateur` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation_voiture`
--


-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(10) NOT NULL,
  `couleur` varchar(10) NOT NULL,
  `kilométrage` int(11) NOT NULL,
  `année_circulation` date NOT NULL,
  `modele` varchar(10) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `couleur`, `kilométrage`, `année_circulation`, `modele`) VALUES
('922GEN21', 'MERCEDES ', 'NOIR ', 55600, '0000-00-00', 'CLA');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `gestion_ticket`
--
ALTER TABLE `gestion_ticket`
  ADD CONSTRAINT `gestion_ticket_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gestion_ticket_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reparation_voiture`
--
ALTER TABLE `reparation_voiture`
  ADD CONSTRAINT `reparation_voiture_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
