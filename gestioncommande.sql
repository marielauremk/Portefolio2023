-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 19 Janvier 2023 à 12:26
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_de_commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`num_categorie`, `nom_categorie`, `cat_remise`) VALUES
(338, 'hygiène ', 978),
(455, 'confiserie ', 223),
(678, 'informatique ', 3333),
(778, 'sport ', 788);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL,
  `client_civilite` varchar(20) NOT NULL,
  `client_nom` varchar(20) NOT NULL,
  `client_prenom` varchar(20) NOT NULL,
  `client_ville` varchar(20) NOT NULL,
  `num_telephone` int(11) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_civilite`, `client_nom`, `client_prenom`, `client_ville`, `num_telephone`, `date_naissance`) VALUES
(12, 'madame ', 'marie', 'laure', 'pierrefitte ', 665574585, '1980-04-15'),
(23, 'monsieur ', 'robert ', 'william ', 'paris ', 781624139, '1960-05-22'),
(34, 'monsieur ', 'mukoko ', 'bertrand ', 'val de marne ', 652249183, '1967-11-30'),
(45, 'madame ', 'tontine ', 'alexandra ', 'saint brice ', 763413966, '2003-01-14');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `com_num` int(11) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `com_montant` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `client_id` (`client_id`,`produit_ref`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`com_num`, `date_commande`, `com_montant`, `client_id`, `produit_ref`) VALUES
(45667, '2023-03-13', 100, 23, 324),
(244454, '2023-06-04', 78, 34, 2324),
(2342525, '2023-10-30', 25, 45, 2334);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `produit_ref` int(11) NOT NULL,
  `produit_nom` varchar(20) NOT NULL,
  `produit_prix` float NOT NULL,
  `produit_poids` int(11) NOT NULL,
  `produit_vues` int(11) NOT NULL,
  `produit_stock` int(11) NOT NULL,
  `produit_code` int(11) NOT NULL,
  `num_categorie` int(20) NOT NULL,
  `stock` int(25) DEFAULT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_categorie_2` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `num_categorie`, `stock`) VALUES
(324, 'savon', 3, 345, 345, 5345, 345, 338, 6),
(2324, 'carte mère', 23, 150, 2344444, 2342, 54, 678, 12),
(2334, 'corde a sauter ', 50, 4235, 235, 23, 5235, 778, 56);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`produit_ref`) REFERENCES `produits` (`produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categorie` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
