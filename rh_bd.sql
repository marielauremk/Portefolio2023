-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 05 Janvier 2023 à 16:13
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmp` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Sexe` varchar(1) NOT NULL,
  `Salaire` int(11) NOT NULL,
  `TypeContrat` varchar(20) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(20) NOT NULL,
  `DateEmbauche` date NOT NULL,
  `DateNaissance` date NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmp`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `TypeContrat`, `Fonction`, `Site`, `DateEmbauche`, `DateNaissance`, `NoSrv`) VALUES
(5678, 'WILLI', 'LOW', 'm', 35000, 'CDI', 'salarie', 'roissy', '2023-01-05', '2004-07-01', 2442),
(24677, 'marie', 'laure', 'f', 1500, 'CDD', 'interimaire', 'cdg', '2023-01-18', '2007-01-16', 1234),
(45677, 'Tristou', 'loulou', 'm', 2600, 'CDI', 'salarie', 'roissy', '2023-01-26', '1998-04-14', 4321),
(233434, 'WILLI', 'laure', 'm', 1500, 'CDI', 'directeurs', 'roissy', '2023-01-05', '2004-07-01', 1342553),
(2334344, 'Roh ', 'Lanta ', 'f', 36777, 'CDI', 'directeurs', 'google ', '2023-01-23', '2004-01-13', 4321),
(2344656, 'Roh ', 'laure', 'm', 2600, 'CDI', 'etudiant ', 'paris ', '2023-01-18', '2004-01-14', 1342553),
(3456777, 'nganou', 'francis ', 'm', 4500, 'CDI', 'comptable ', 'LOGITECH ', '2023-01-18', '2004-01-14', 23444),
(5463464, 'WILLI', 'laure', 'm', 1500, 'CDI', 'menage', 'cdg', '2009-01-26', '2023-01-13', 2334454);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` varchar(20) NOT NULL,
  `NoProj` int(11) NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `NoProj` (`NoProj`),
  KEY `NoEmp` (`NoEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NoProj`, `NoEmp`, `NbHeures`) VALUES
('234556', 67, 45677, 45),
('3455666', 67, 3456777, 45),
('5456', 48, 24677, 35),
('645', 23, 5678, 32);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProj` int(11) NOT NULL,
  `LibelleProjet` varchar(20) NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProj`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProj`, `LibelleProjet`, `NoSrv`) VALUES
(23, 'lolo', 1234),
(34, 'ok', 23444),
(48, 'MDR', 2442),
(67, 'XPTDR', 4321);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL,
  `NomSrv` varchar(20) NOT NULL,
  PRIMARY KEY (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NomSrv`) VALUES
(274, 'directeurs'),
(1234, 'voiturier'),
(2442, 'menage'),
(4321, 'acceuille'),
(23444, 'comptable '),
(223444, 'directeurs'),
(1342553, 'directeurs'),
(2334454, 'etudiant '),
(678899989, 'menage'),
(2147483647, 'voiturier');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NoEmp`) REFERENCES `employe` (`NoEmp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoProj`) REFERENCES `projet` (`NoProj`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;
