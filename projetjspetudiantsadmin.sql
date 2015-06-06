-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 05 Juin 2015 à 10:04
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projetjspetudiantsadmin`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE IF NOT EXISTS `activites` (
`id` int(11) NOT NULL,
  `intitule` varchar(50) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `intitule_ar` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `baccalaureat`
--

CREATE TABLE IF NOT EXISTS `baccalaureat` (
`id_bac` int(11) NOT NULL,
  `mention_bac` varchar(20) NOT NULL,
  `moy_ER` float NOT NULL,
  `moy_EN` float NOT NULL,
  `math_EN` float NOT NULL,
  `phy_EN` float NOT NULL,
  `nat_EN` float NOT NULL,
  `lycee` varchar(100) NOT NULL,
  `academie` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `lycee_ar` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `academie_ar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `province_ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `baccalaureat`
--

INSERT INTO `baccalaureat` (`id_bac`, `mention_bac`, `moy_ER`, `moy_EN`, `math_EN`, `phy_EN`, `nat_EN`, `lycee`, `academie`, `province`, `id_serie`, `id_etudiant`, `lycee_ar`, `academie_ar`, `province_ar`) VALUES
(55, '1', 1, 1, 1, 1, 1, '1', '1', '1', 62, 74, NULL, '1', '1'),
(57, 'Bien', 17, 14, 15, 16, 18, 'ibn zaydoune', 'ain chock', 'Ain chock casablanca', 64, 76, 'ibn zaydoune_ar', 'ain chock', 'عين الشق الدار البيضاء');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
`id_etudiant` int(11) NOT NULL,
  `CNE` varchar(12) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `addresse` varchar(255) NOT NULL,
  `nationalite` varchar(50) NOT NULL,
  `sexe` enum('M','F') NOT NULL,
  `cin` varchar(12) NOT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `handicape` tinyint(1) NOT NULL,
  `nature_handicape` varchar(100) NOT NULL,
  `num_carte_handicape` varchar(10) NOT NULL,
  `bourse` tinyint(1) NOT NULL,
  `id_tuteur` int(11) NOT NULL,
  `id_mere` int(11) NOT NULL,
  `id_pere` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `id_ville_naissance` int(11) NOT NULL,
  `nom_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prenom_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `addresse_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nationalite_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nature_handicape_ar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date_cin` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `CNE`, `nom`, `prenom`, `date_naissance`, `addresse`, `nationalite`, `sexe`, `cin`, `tel`, `email`, `handicape`, `nature_handicape`, `num_carte_handicape`, `bourse`, `id_tuteur`, `id_mere`, `id_pere`, `id_ville`, `id_ville_naissance`, `nom_ar`, `prenom_ar`, `addresse_ar`, `nationalite_ar`, `nature_handicape_ar`, `photo`, `date_cin`) VALUES
(74, '1129294913', '1', '1', '2010-10-10', '1', 'Marocain', 'F', '1', NULL, NULL, 0, '1', '0', 0, 108, 211, 212, 163, 164, '1', '1', '1', 'ÙØºØ±Ø¨ÙØ©', '1', 'AllJewels.png', '2010-10-10'),
(76, '1129377653', 'morabit', 'abdellah', '1993-08-11', 'lol\r\nlol', 'Marocain', 'M', 'BK275058', NULL, NULL, 0, '----', '1', 1, 110, 215, 216, 167, 168, 'mouad', 'ÃÂ¹ÃÂ¨ÃÂ¯ÃÂÃÂ', 'lol\r\nlol', 'مغربية', '', '', '2015-05-11');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_charge`
--

CREATE TABLE IF NOT EXISTS `etudiant_charge` (
  `cne` varchar(12) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` enum('M','F') NOT NULL,
  `nationalite` varchar(50) NOT NULL,
  `serie_bac` varchar(50) NOT NULL,
  `mention_bac` varchar(20) NOT NULL,
  `province` varchar(255) NOT NULL,
  `nom_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prenom_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nationalite_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `serie_bac_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type_bac` varchar(255) NOT NULL,
  `type_bac_ar` varchar(255) NOT NULL,
  `province_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant_charge`
--

INSERT INTO `etudiant_charge` (`cne`, `nom`, `prenom`, `sexe`, `nationalite`, `serie_bac`, `mention_bac`, `province`, `nom_ar`, `prenom_ar`, `nationalite_ar`, `serie_bac_ar`, `type_bac`, `type_bac_ar`, `province_ar`, `cin`) VALUES
('1129294913', 'Morabit', 'Mouad', 'M', 'Marocain', 'Science physiques', 'Bien', 'Ain chock casablanca', 'مرابط', 'معاد', 'مغربية', 'علوم فيزيائية', '', '', 'عين الشق الدار البيضاء', 'wa202425'),
('1129377654', 'Ouasmine', 'Mohammed Amine', 'M', 'Marocain', 'Science physiques', 'Bien', 'Berrechid', 'محمد أمين', 'واسمين', 'مغربية', 'علوم فيزيائية', '', '', 'برشيد', 'wa202424'),
('ligne1', 'ouasmine', 'a', 'M', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'wa202424'),
('ligne2', 'morabit', 'a', 'M', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE IF NOT EXISTS `filiere` (
`id_filiere` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `concour` tinyint(1) NOT NULL,
  `libeller_ar` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `libelle`, `concour`, `libeller_ar`) VALUES
(1, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(2, 'Genie electrique', 0, 'الهندسة الكهربائية'),
(3, 'Genie reseaux', 0, 'هندسة الشبكة المعلوماتية'),
(4, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(5, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(6, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(7, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(8, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(9, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(10, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(11, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(12, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(13, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(14, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(15, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(16, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(17, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(18, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(19, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(20, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(21, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(22, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(23, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(24, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(25, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(26, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(27, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(28, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(29, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(30, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(31, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(32, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(33, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(34, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(35, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(36, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(37, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(38, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(39, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(40, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(41, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(42, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(43, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(44, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(45, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(46, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(47, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(48, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(49, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(50, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(51, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(52, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(53, 'Genie Informatique', 1, 'الهندسة المعلوماتية'),
(54, 'Genie Informatique', 1, 'الهندسة المعلوماتية');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
  `numero` varchar(12) NOT NULL,
  `date_inscription` datetime NOT NULL,
  `etat_inscription` enum('attente','valide') NOT NULL,
  `id_bac` int(11) NOT NULL,
  `id_institut` int(11) NOT NULL,
  `id_filiere` int(11) NOT NULL,
  `resultat` enum('attente','admis','non admis') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscription`
--

INSERT INTO `inscription` (`numero`, `date_inscription`, `etat_inscription`, `id_bac`, `id_institut`, `id_filiere`, `resultat`) VALUES
('DOS19', '2015-05-25 00:00:00', 'valide', 57, 46, 47, 'non admis'),
('DOS26', '2015-06-04 00:00:00', 'valide', 55, 44, 45, 'attente');

-- --------------------------------------------------------

--
-- Structure de la table `institut`
--

CREATE TABLE IF NOT EXISTS `institut` (
`id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `nom_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ville_ar` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Contenu de la table `institut`
--

INSERT INTO `institut` (`id`, `nom`, `ville`, `nom_ar`, `ville_ar`) VALUES
(1, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(2, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(3, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(4, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(5, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(6, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(7, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(8, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(9, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(10, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(11, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(12, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(13, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(14, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(15, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(16, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(17, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(18, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(19, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(20, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(21, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(22, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(23, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(24, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(25, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(26, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(27, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(28, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(29, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(30, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(31, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(32, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(33, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(34, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(35, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(36, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(37, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(38, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(39, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(40, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(41, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(42, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(43, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(44, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(45, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(46, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(47, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(48, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(49, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(50, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(51, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(52, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة'),
(53, 'Ecole Nationale des Sciences Appliquees', 'Khouribga', 'المدرسة الوطنية للعلوم التطبيقية ', 'خريبجة');

-- --------------------------------------------------------

--
-- Structure de la table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
`identifiant` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `nom_ar` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prenom_ar` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession_ar` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Contenu de la table `parent`
--

INSERT INTO `parent` (`identifiant`, `nom`, `prenom`, `profession`, `nom_ar`, `prenom_ar`, `profession_ar`) VALUES
(1, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(2, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(3, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(4, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(5, 'jilal', 'malika', 'prof', 'جلال', 'مليكة', ''),
(6, 'morabit', 'abdellah', 'prof', 'mouad', 'عبدلله', 'prof_ar'),
(7, 'morabit', 'malika', 'prof', 'mouad', 'ÃÂÃÂÃÂÃÂÃÂ©', 'ÃÂÃÂ£ÃÂ'),
(8, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(9, '1', '1', '1', '11', '1', '1'),
(10, '1', '1', '1', '1', '1', '1'),
(11, '1', '1', '1', '11', '1', '1'),
(12, '1', '1', '1', '1', '1', '1'),
(13, '1', '1', '1', '11', '1', '1'),
(14, '1', '1', '1', '1', '1', '1'),
(15, '1', '1', '1', '11', '1', '1'),
(16, '1', '1', '1', '1', '1', '1'),
(17, '1', '1', '1', '1', '1', '1'),
(18, '1', '1', '1', '11', '1', '1'),
(19, '1', '1', '1', '11', '1', '1'),
(20, '1', '1', '1', '1', '1', '1'),
(21, '1', '1', '1', '11', '1', '1'),
(22, '1', '1', '1', '1', '1', '1'),
(23, '1', '1', '1', '1', '1', '1'),
(24, '1', '1', '1', '11', '1', '1'),
(25, '1', '1', '1', '11', '1', '1'),
(26, '1', '1', '1', '1', '1', '1'),
(27, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(28, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(29, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(30, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(31, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(32, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(33, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(34, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(35, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(36, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(37, '1', '1', '1', '11', '1', '1'),
(38, '1', '1', '1', '1', '1', '1'),
(39, '1', '1', '1', '1', '1', '1'),
(40, '1', '1', '1', '11', '1', '1'),
(41, '1', '1', '1', '11', '1', '1'),
(42, '1', '1', '1', '1', '1', '1'),
(43, '1', '1', '11', '1', '1', '1'),
(44, '1', '1', '1', '1', '1', '1'),
(45, '1', '1', '1', '1', '1', '1'),
(46, '1', '', '1', '1', '1', '1'),
(47, '1', '1', '1', '1', '1', '1'),
(48, '1', '1', '1', '1', '1', '1'),
(49, '1', '1', '1', '1', '1', '1'),
(50, '1', '1', '1', '1', '1', '1'),
(51, '1', '1', '1', '1', '1', '1'),
(52, '1', '1', '1', '1', '1', '1'),
(53, '1', '1', '1', '1', '1', '1'),
(54, '1', '1', '1', '1', '1', '1'),
(55, '1', '1', '1', '1', '1', '1'),
(56, '1', '1', '1', '1', '1', '1'),
(57, '1', '1', '1', '1', '1', '1'),
(58, '1', '1', '1', '1', '1', '1'),
(59, '1', '1', '1', '1', '1', '1'),
(60, '1', '1', '1', '1', '1', '1'),
(61, '1', '1', '1', '1', '1', '1'),
(62, '1', '1', '1', '1', '1', '1'),
(63, '1', '1', '1', '1', '1', '1'),
(64, '1', '1', '1', '1', '1', '1'),
(65, '1', '1', '1', '1', '1', '1'),
(66, '1', '1', '1', '1', '1', '1'),
(67, '1', '1', '1', '1', '1', '1'),
(68, '1', '1', '1', '1', '1', '1'),
(69, '1', '1', '1', '1', '1', '1'),
(70, '1', '1', '1', '1', '1', '1'),
(71, '1', '11', '1', '1', '1', '1'),
(72, '1', '1', '1', '1', '1', '1'),
(73, '1', '11', '1', '1', '1', '1'),
(74, '1', '1', '1', '1', '1', '1'),
(75, '1', '11', '1', '1', '1', '1'),
(76, '1', '1', '1', '1', '1', '1'),
(77, '1', '11', '1', '1', '1', '1'),
(78, '1', '1', '1', '1', '1', '1'),
(79, '1', '1', '1', '1', '1', '1'),
(80, '1', '1', '1', '1', '1', '1'),
(81, '1', '1', '1', '1', '1', '1'),
(82, '1', '1', '1', '1', '1', '1'),
(83, '1', '1', '1', '1', '1', '1'),
(84, '1', '1', '1', '1', '1', '1'),
(85, '1', '1', '1', '1', '1', '1'),
(86, '1', '1', '1', '1', '1', '1'),
(87, '1', '1', '1', '1', '1', '1'),
(88, '1', '1', '1', '1', '1', '1'),
(89, '1', '1', '1', '1', '1', '1'),
(90, '1', '1', '1', '1', '1', '1'),
(91, '1', '1', '1', '1', '1', '1'),
(92, '1', '1', '1', '1', '1', '1'),
(93, '1', '1', '1', '1', '1', '1'),
(94, '1', '1', '1', '1', '1', '1'),
(95, '1', '1', '1', '1', '1', '1'),
(96, '1', '1', '1', '1', '1', '1'),
(97, '1', '1', '1', '1', '1', '1'),
(98, '1', '1', '1', '1', '1', '1'),
(99, '1', '1', '1', '1', '1', '1'),
(100, '1', '1', '1', '1', '1', '1'),
(101, '1', '1', '1', '1', '1', '1'),
(102, '1', '1', '1', '1', '1', '1'),
(103, '1', '1', '1', '1', '1', '1'),
(104, '1', '1', '1', '1', '1', '1'),
(105, '1', '1', '1', '1', '1', '1'),
(106, '1', '1', '1', '1', '1', '1'),
(107, '1', '1', '1', '1', '1', '1'),
(108, '1', '1', '1', '1', '1', '1'),
(109, '1', '1', '1', '1', '1', '1'),
(110, '1', '1', '1', '1', '1', '1'),
(111, '1', '1', '1', '1', '1', '1'),
(112, '1', '1', '1', '1', '1', '1'),
(113, '1', '1', '1', '1', '1', '1'),
(114, '1', '1', '1', '1', '1', '1'),
(115, '1', '1', '1', '1', '1', '1'),
(116, '1', '1', '1', '1', '1', '1'),
(117, '1', '1', '1', '1', '1', '1'),
(118, '1', '1', '1', '1', '1', '1'),
(119, '1', '1', '1', '1', '1', '1'),
(120, '1', '1', '1', '1', '1', '1'),
(121, '1', '1', '1', '1', '1', '1'),
(122, '1', '1', '1', '1', '1', '1'),
(123, '1', '1', '1', '1', '1', '1'),
(124, '1', '1', '1', '1', '1', '1'),
(125, '1', '1', '1', '1', '1', '1'),
(126, '1', '1', '1', '1', '1', '1'),
(127, '1', '1', '1', '1', '1', '1'),
(128, '1', '1', '1', '1', '1', '1'),
(129, '1', '1', '1', '1', '1', '1'),
(130, '1', '1', '1', '1', '1', '1'),
(131, '1', '1', '1', '1', '1', '1'),
(132, '1', '1', '1', '1', '1', '1'),
(133, '1', '1', '1', '1', '1', '1'),
(134, '1', '1', '1', '1', '1', '1'),
(135, '1', '1', '1', '1', '1', '1'),
(136, '1', '1', '1', '1', '1', '1'),
(137, '1', '1', '1', '1', '1', '1'),
(138, '1', '1', '1', '1', '1', '1'),
(139, '1', '1', '1', '1', '1', '1'),
(140, '1', '1', '1', '1', '1', '1'),
(141, '1', '1', '1', '1', '1', '1'),
(142, '1', '1', '1', '1', '1', '1'),
(143, '1', '1', '1', '1', '1', '1'),
(144, '1', '1', '1', '1', '1', '1'),
(145, '1', '1', '1', '1', '1', '1'),
(146, '1', '1', '1', '1', '1', '1'),
(147, '1', '1', '1', '1', '1', '1'),
(148, '1', '1', '1', '1', '1', '1'),
(149, '1', '1', '1', '1', '1', '1'),
(150, '1', '1', '1', '1', '1', '1'),
(151, '1', '1', '1', '1', '1', '1'),
(152, '1', '1', '1', '1', '1', '1'),
(153, '1', '1', '1', '1', '1', '1'),
(154, '1', '1', '1', '1', '1', '1'),
(155, '1', '1', '1', '1', '1', '1'),
(156, '1', '1', '1', '1', '1', '1'),
(157, '1', '1', '1', '1', '1', '1'),
(158, '1', '1', '1', '1', '1', '1'),
(159, '1', '1', '1', '1', '1', '1'),
(160, '1', '1', '1', '1', '1', '1'),
(161, '1', '1', '1', '1', '1', '1'),
(162, '1', '1', '1', '1', '1', '1'),
(163, '1', '1', '1', '1', '1', '1'),
(164, '1', '1', '1', '1', '1', '1'),
(165, '1', '1', '1', '1', '1', '1'),
(166, '1', '1', '1', '1', '1', '1'),
(167, '1', '1', '1', '1', '1', '1'),
(168, '1', '1', '1', '1', '1', '1'),
(169, '1', '1', '1', '1', '1', '1'),
(170, '1', '1', '1', '1', '1', '1'),
(171, '1', '1', '1', '1', '1', '1'),
(172, '1', '1', '1', '1', '1', '1'),
(173, '1', '1', '1', '1', '1', '1'),
(174, '1', '1', '1', '1', '1', '1'),
(175, '1', '1', '1', '1', '1', '1'),
(176, '1', '1', '1', '1', '1', '1'),
(177, '1', '1', '1', '1', '1', '1'),
(178, '1', '1', '1', '1', '1', '1'),
(179, '1', '1', '1', '1', '1', '1'),
(180, '1', '1', '1', '1', '1', '1'),
(181, '1', '1', '1', '1', '1', '1'),
(182, '1', '1', '1', '1', '1', '1'),
(183, '1', '1', '1', '1', '1', '1'),
(184, '1', '1', '1', '1', '1', '1'),
(185, '1', '1', '1', '1', '1', '1'),
(186, '1', '1', '1', '1', '1', '1'),
(187, '1', '1', '1', '1', '1', '1'),
(188, '1', '1', '1', '1', '1', '1'),
(189, '1', '1', '1', '1', '1', '1'),
(190, '1', '1', '1', '1', '1', '1'),
(191, '1', '1', '1', '1', '1', '1'),
(192, '1', '1', '1', '1', '1', '1'),
(193, '1', '1', '1', '1', '1', '1'),
(194, '1', '1', '1', '1', '1', '1'),
(195, '1', '1', '1', '1', '1', '1'),
(196, '1', '1', '1', '1', '1', '1'),
(197, '1', '1', '1', '1', '1', '1'),
(198, '1', '1', '1', '1', '1', '1'),
(199, '1', '1', '1', '1', '1', '1'),
(200, '1', '1', '1', '1', '1', '1'),
(201, '1', '1', '1', '1', '1', '1'),
(202, '1', '1', '1', '1', '1', '1'),
(203, '1', '1', '1', '1', '1', '1'),
(204, '1', '1', '1', '1', '1', '1'),
(205, '1', '1', '1', '1', '1', '1'),
(206, '1', '1', '1', '1', '1', '1'),
(207, '1', '1', '1', '1', '1', '1'),
(208, '1', '1', '1', '1', '1', '1'),
(209, '1', '1', '1', '1', '1', '1'),
(210, '1', '1', '1', '1', '1', '1'),
(211, '1', '1', '1', '1', '1', '1'),
(212, '1', '1', '1', '1', '1', '1'),
(213, '1', '1', '1', '1', '1', '1'),
(214, '1', '1', '1', '1', '1', '1'),
(215, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(216, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(217, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(218, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(219, 'morabit', 'malika', 'prof', 'mouad', 'malika(ar)', 'لأم'),
(220, 'morabit', 'abdellah', 'prof', 'mouad', 'abdellah_ar', 'prof'),
(221, '1', '1', '1', '1', '1', '1'),
(222, '1', '1', '1', '1', '1', '1'),
(223, '1', '1', '1', '1', '1', '1'),
(224, '1', '1', '1', '1', '1', '1'),
(225, '1', '1', '1', '1', '1', '1'),
(226, '1', '1', '1', '1', '1', '1'),
(227, '1', '1', '1', '1', '1', '1'),
(228, '1', '1', '1', '1', '1', '1'),
(229, '1', '1', '1', '1', '1', '1'),
(230, '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
`id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `nom_ar` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `nom_ar`) VALUES
(1, 'Maroc', 'المغرب'),
(2, '1', '1'),
(3, '1', '1'),
(4, '1', '1'),
(5, '1', '1'),
(6, '1', '1'),
(7, '1', '1'),
(8, '1', '1'),
(9, '1', '1'),
(10, '1', '1'),
(11, '1', '1'),
(12, '1', '1'),
(13, '1', '1'),
(14, '1', '1'),
(15, '1', '1'),
(16, '1', '1'),
(17, '1', '1'),
(18, '1', '1'),
(19, 'Maroc', 'المغرب'),
(20, 'Maroc', 'المغرب'),
(21, 'Maroc', 'المغرب'),
(22, 'Maroc', 'المغرب'),
(23, 'Maroc', 'المغرب'),
(24, 'Maroc', 'المغرب'),
(25, 'Maroc', 'المغرب'),
(26, 'Maroc', 'المغرب'),
(27, 'Maroc', 'المغرب'),
(28, 'Maroc', 'المغرب'),
(29, '1', '1'),
(30, '1', '1'),
(31, '1', '1'),
(32, '1', '1'),
(33, '1', '1'),
(34, '1', '1'),
(35, '1', '1'),
(36, '1', '1'),
(37, '1', '1'),
(38, '1', '1'),
(39, '1', '1'),
(40, '1', '1'),
(41, '1', '1'),
(42, '1', '1'),
(43, '1', '1'),
(44, '1', '1'),
(45, '1', '1'),
(46, '1', '1'),
(47, '1', '1'),
(48, '1', '1'),
(49, '1', '1'),
(50, '1', '1'),
(51, '1', '1'),
(52, '1', '1'),
(53, '1', '1'),
(54, '1', '1'),
(55, '1', '1'),
(56, '1', '1'),
(57, '1', '1'),
(58, '1', '1'),
(59, '1', '1'),
(60, '1', '1'),
(61, '1', '1'),
(62, '1', '1'),
(63, '1', '1'),
(64, '1', '1'),
(65, '1', '1'),
(66, '1', '1'),
(67, '1', '1'),
(68, 'maroc', 'maroc'),
(69, 'maroc', 'maroc'),
(70, 'maroc', 'maroc'),
(71, 'maroc', 'maroc'),
(72, 'maroc', 'maroc'),
(73, 'maroc', 'maroc'),
(74, '1', '1'),
(75, '1', '1'),
(76, '1', '1'),
(77, '1', '1'),
(78, '1', '1'),
(79, '1', '1'),
(80, '1', '1'),
(81, '1', '1'),
(82, '1', '1'),
(83, '1', '1'),
(84, '1', '1'),
(85, '1', '1'),
(86, '1', '1'),
(87, '1', '1'),
(88, '1', '1'),
(89, '1', '1'),
(90, '1', '1'),
(91, '1', '1'),
(92, '1', '1'),
(93, '1', '1'),
(94, '1', '1'),
(95, '1', '1'),
(96, '1', '1'),
(97, '1', '1'),
(98, '1', '1'),
(99, '1', '1'),
(100, '1', '1'),
(101, '1', '1'),
(102, '1', '1'),
(103, '1', '1'),
(104, '1', '1'),
(105, '1', '1'),
(106, '1', '1'),
(107, '1', '1'),
(108, '1', '1'),
(109, '1', '1'),
(110, '1', '1'),
(111, '1', '1'),
(112, '1', '1'),
(113, '1', '1'),
(114, '1', '1'),
(115, '1', '1'),
(116, '1', '1'),
(117, '1', '1'),
(118, '1', '1'),
(119, '1', '1'),
(120, '1', '1'),
(121, '1', '1'),
(122, '1', '1'),
(123, '1', '1'),
(124, '1', '1'),
(125, '1', '1'),
(126, '1', '1'),
(127, '1', '1'),
(128, '1', '1'),
(129, '1', '1'),
(130, '1', '1'),
(131, '1', '1'),
(132, '1', '1'),
(133, '1', '1'),
(134, '1', '1'),
(135, '1', '1'),
(136, '1', '1'),
(137, '1', '1'),
(138, '1', '1'),
(139, '1', '1'),
(140, '1', '1'),
(141, '1', '1'),
(142, '1', '1'),
(143, '1', '1'),
(144, '1', '1'),
(145, '1', '1'),
(146, '1', '1'),
(147, '1', '1'),
(148, '1', '1'),
(149, '1', '1'),
(150, '1', '1'),
(151, '1', '1'),
(152, '1', '1'),
(153, '1', '1'),
(154, '1', '1'),
(155, '1', '1'),
(156, '1', '1'),
(157, '1', '1'),
(158, '1', '1'),
(159, '1', '1'),
(160, '1', '1'),
(161, '1', '1'),
(162, '1', '1'),
(163, '1', '1'),
(164, '1', '1'),
(165, '1', '1'),
(166, '1', '1'),
(167, '1', '1'),
(168, '1', '1'),
(169, '1', '1'),
(170, '1', '1'),
(171, '1', '1'),
(172, '1', '1'),
(173, '1', '1'),
(174, '1', '1'),
(175, '1', '1'),
(176, '1', '1'),
(177, '1', '1'),
(178, '1', '1'),
(179, '1', '1'),
(180, '1', '1'),
(181, '1', '1'),
(182, '1', '1'),
(183, '1', '1'),
(184, '1', '1'),
(185, '1', '1'),
(186, '1', '1'),
(187, '1', '1'),
(188, 'Maroc', 'المغرب'),
(189, 'Maroc', 'المغرب'),
(190, 'Maroc', 'المغرب'),
(191, 'Maroc', 'المغرب'),
(192, 'Maroc', 'المغرب'),
(193, 'Maroc', 'المغرب'),
(194, '1', '1'),
(195, '1', '1'),
(196, '1', '1'),
(197, '1', '1'),
(198, '1', '1'),
(199, '1', '1'),
(200, '1', '1'),
(201, '1', '1'),
(202, '1', '1'),
(203, '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `serie_baccalauréat`
--

CREATE TABLE IF NOT EXISTS `serie_baccalauréat` (
`id` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL,
  `id_type` int(11) NOT NULL,
  `intitule_ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Contenu de la table `serie_baccalauréat`
--

INSERT INTO `serie_baccalauréat` (`id`, `intitule`, `id_type`, `intitule_ar`) VALUES
(1, 'Science physique', 1, 'علوم فيزيائية'),
(2, 'Science de la vie et de la terre', 1, 'علوم الحياة والأرض'),
(3, 'Science mathématiques A', 1, 'علوم رياضية أ'),
(4, 'Science mathématiques B', 1, 'علوم رياضية ب'),
(5, 'Science physique', 2, 'علوم فيزيائية'),
(6, 'Science physique', 3, 'علوم فيزيائية'),
(7, 'Science physique', 5, 'علوم فيزيائية'),
(8, 'Science physique', 6, 'علوم فيزيائية'),
(9, 'Science physique', 7, 'علوم فيزيائية'),
(10, 'Science physique', 8, 'علوم فيزيائية'),
(11, 'Science physique', 9, 'علوم فيزيائية'),
(12, 'Science physique', 10, 'علوم فيزيائية'),
(13, 'Science physique', 11, 'علوم فيزيائية'),
(14, 'Science physique', 12, 'علوم فيزيائية'),
(15, 'Science physique', 13, 'علوم فيزيائية'),
(16, 'Science physique', 14, 'علوم فيزيائية'),
(17, 'Science physique', 15, 'علوم فيزيائية'),
(18, 'Science physique', 16, 'علوم فيزيائية'),
(19, 'Science physique', 17, 'علوم فيزيائية'),
(20, 'Science physique', 18, 'علوم فيزيائية'),
(21, 'Science physique', 19, 'علوم فيزيائية'),
(22, 'Science physique', 20, 'علوم فيزيائية'),
(23, 'Science physique', 21, 'علوم فيزيائية'),
(24, 'Science physique', 22, 'علوم فيزيائية'),
(25, 'Science physique', 23, 'علوم فيزيائية'),
(26, 'Science physique', 24, 'علوم فيزيائية'),
(27, 'Science physique', 25, 'علوم فيزيائية'),
(28, 'Science physique', 26, 'علوم فيزيائية'),
(29, 'Science physique', 27, 'علوم فيزيائية'),
(30, 'Science physique', 28, 'علوم فيزيائية'),
(31, 'Science physique', 29, 'علوم فيزيائية'),
(32, 'Science physique', 30, 'علوم فيزيائية'),
(33, 'Science physique', 31, 'علوم فيزيائية'),
(34, 'Science physique', 32, 'علوم فيزيائية'),
(35, 'Science physique', 33, 'علوم فيزيائية'),
(36, 'Science physique', 34, 'علوم فيزيائية'),
(37, 'Science physique', 35, 'علوم فيزيائية'),
(38, 'Science physique', 36, 'علوم فيزيائية'),
(39, 'Science physique', 37, 'علوم فيزيائية'),
(40, 'Science physique', 38, 'علوم فيزيائية'),
(41, 'Science physique', 39, 'علوم فيزيائية'),
(42, 'Science physique', 40, 'علوم فيزيائية'),
(43, 'Science physique', 41, 'علوم فيزيائية'),
(44, 'Science physique', 42, 'علوم فيزيائية'),
(45, 'Science physique', 43, 'علوم فيزيائية'),
(46, 'Science physique', 44, 'علوم فيزيائية'),
(47, 'Science physique', 45, 'علوم فيزيائية'),
(48, 'Science physique', 46, 'علوم فيزيائية'),
(49, 'Science physique', 47, 'علوم فيزيائية'),
(50, 'Science physique', 48, 'علوم فيزيائية'),
(51, 'Science physique', 49, 'علوم فيزيائية'),
(52, 'Science physique', 50, 'علوم فيزيائية'),
(53, 'Science physique', 51, 'علوم فيزيائية'),
(54, 'Science physique', 52, 'علوم فيزيائية'),
(55, 'Science physique', 53, 'علوم فيزيائية'),
(56, 'Science physique', 54, 'علوم فيزيائية'),
(57, 'Science physique', 55, 'علوم فيزيائية'),
(58, 'Science physique', 56, 'علوم فيزيائية'),
(59, 'Science physique', 57, 'علوم فيزيائية'),
(60, 'Science physique', 58, 'علوم فيزيائية'),
(61, 'Science physique', 59, 'علوم فيزيائية'),
(62, 'Science physique', 60, 'علوم فيزيائية'),
(63, 'Science physique', 61, 'علوم فيزيائية'),
(64, 'Science physique', 62, 'علوم فيزيائية'),
(65, 'Science physique', 63, 'علوم فيزيائية'),
(66, 'Science physique', 64, 'علوم فيزيائية'),
(67, 'Science physique', 65, 'علوم فيزيائية'),
(68, 'Science physique', 66, 'علوم فيزيائية'),
(69, 'Science physique', 67, 'علوم فيزيائية'),
(70, 'Science physique', 68, 'علوم فيزيائية'),
(71, 'Science physique', 69, 'علوم فيزيائية');

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE IF NOT EXISTS `tuteur` (
`identifiant` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nom_ar` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prenom_ar` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession_ar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `adresse_ar` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Contenu de la table `tuteur`
--

INSERT INTO `tuteur` (`identifiant`, `nom`, `prenom`, `profession`, `adresse`, `tel`, `email`, `nom_ar`, `prenom_ar`, `profession_ar`, `adresse_ar`) VALUES
(1, 'morabit', 'abdellah', 'prof', 'lol\r\nlol', '+212522219674', 'mouad2005@yopmail.com', 'mouad', 'abdellah_ar', 'prof', 'lol\r\nlol'),
(2, 'morabit', 'abdellah', 'prof', 'lol\r\nlol', '+212522219674', 'mouad2005@yopmail.com', 'mouad', 'abdellah_ar', 'prof', 'lol\r\nlol'),
(3, 'morabit', 'abdellah', 'prof', 'hay moulay abdellah', '0522219664', 'mouad2005@yopmail.com', 'مرابط', 'عبدلله', 'prof_ar', 'حي مولاي عبد'),
(4, 'morabit', 'abdellah', 'prof', 'lol\r\nlol', '+212522219674', 'mouad2005@yopmail.com', 'mouad', 'ÃÂ¹ÃÂ¨ÃÂ¯ÃÂÃÂ', 'prof', 'lol\r\nlol'),
(5, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(6, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(7, 'morabit', 'abdellah', 'prof', 'lol\r\nlol', '+212522219674', 'mouad2005@yopmail.com', 'mouad', 'ÃÂ¹ÃÂ¨ÃÂ¯ÃÂÃÂ', 'prof', 'lol\r\nlol'),
(8, 'morabit', 'abdellah', 'prof', 'lol\r\nlol', '+212522219674', 'mouad2005@yopmail.com', 'mouad', 'ÃÂ¹ÃÂ¨ÃÂ¯ÃÂÃÂ', 'prof', 'lol\r\nlol'),
(9, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(10, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(11, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(12, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(13, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(14, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(15, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(16, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(17, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(18, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(19, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(20, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(21, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(22, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(23, '1', '11', '1', '1', '1', '1', '1', '1', '1', '1'),
(24, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(25, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(26, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(27, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(28, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(29, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(30, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(31, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(32, '1', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(33, '1', 'Mouad', '1', '1', '1', '1', '1', 'ÙØ¹Ø§Ø¯', '1', '1'),
(34, '1', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(35, '1', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(36, '1', 'Mouad', '1', '1', '1', '1', '1', 'ÙØ¹Ø§Ø¯', '1', '1'),
(37, '1', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(38, '11', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(39, '11', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(40, '11', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(41, '11', '1', '1', '11', '1', '1', '1', '1', '1', '1'),
(42, '1', '1', '1', '1', '1', '', '1', '1', '1', '1'),
(43, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(44, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(45, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(46, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(47, 'Morabit', '1', '1', '1', '1', '1', '', '1', '1', '1'),
(48, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(49, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(50, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(51, 'Morabit', '1', '1', '1', '1', '1', '', '1', '1', '1'),
(52, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(53, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(54, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(55, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(56, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(57, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(58, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(59, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(60, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(61, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(62, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(63, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(64, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(65, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(66, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(67, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(68, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(69, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(70, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(71, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(72, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(73, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(74, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(75, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(76, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(77, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(78, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(79, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(80, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(81, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(82, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(83, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(84, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(85, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(86, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(87, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(88, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(89, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(90, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(91, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(92, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(93, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(94, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(95, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(96, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(97, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(98, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(99, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(100, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(101, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(102, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(103, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(104, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(105, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(106, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(107, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(108, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(109, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(110, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(111, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(112, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(113, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(114, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(115, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(116, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1'),
(117, 'Morabit', 'Mouad', '1', '1', '1', '1', 'ÙØ±Ø§Ø¨Ø·', 'ÙØ¹Ø§Ø¯', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `type_baccalauréat`
--

CREATE TABLE IF NOT EXISTS `type_baccalauréat` (
`id` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL,
  `intitule_ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Contenu de la table `type_baccalauréat`
--

INSERT INTO `type_baccalauréat` (`id`, `intitule`, `intitule_ar`) VALUES
(1, 'Science expérimentales', 'علوم تطبيقية'),
(2, 'Science expérimentales', 'علوم تطبيقية'),
(3, 'Science expérimentales', 'علوم تطبيقية'),
(4, 'Science expérimentales', 'علوم تطبيقية'),
(5, 'Science expérimentales', 'علوم تطبيقية'),
(6, 'Science expérimentales', 'علوم تطبيقية'),
(7, 'Science expérimentales', 'علوم تطبيقية'),
(8, 'Science expérimentales', 'علوم تطبيقية'),
(9, 'Science expérimentales', 'علوم تطبيقية'),
(10, 'Science expérimentales', 'علوم تطبيقية'),
(11, 'Science expérimentales', 'علوم تطبيقية'),
(12, 'Science expérimentales', 'علوم تطبيقية'),
(13, 'Science expérimentales', 'علوم تطبيقية'),
(14, 'Science expérimentales', 'علوم تطبيقية'),
(15, 'Science expérimentales', 'علوم تطبيقية'),
(16, 'Science expérimentales', 'علوم تطبيقية'),
(17, 'Science expérimentales', 'علوم تطبيقية'),
(18, 'Science expérimentales', 'علوم تطبيقية'),
(19, 'Science expérimentales', 'علوم تطبيقية'),
(20, 'Science expérimentales', 'علوم تطبيقية'),
(21, 'Science expérimentales', 'علوم تطبيقية'),
(22, 'Science expérimentales', 'علوم تطبيقية'),
(23, 'Science expérimentales', 'علوم تطبيقية'),
(24, 'Science expérimentales', 'علوم تطبيقية'),
(25, 'Science expérimentales', 'علوم تطبيقية'),
(26, 'Science expérimentales', 'علوم تطبيقية'),
(27, 'Science expérimentales', 'علوم تطبيقية'),
(28, 'Science expérimentales', 'علوم تطبيقية'),
(29, 'Science expérimentales', 'علوم تطبيقية'),
(30, 'Science expérimentales', 'علوم تطبيقية'),
(31, 'Science expérimentales', 'علوم تطبيقية'),
(32, 'Science expérimentales', 'علوم تطبيقية'),
(33, 'Science expérimentales', 'علوم تطبيقية'),
(34, 'Science expérimentales', 'علوم تطبيقية'),
(35, 'Science expérimentales', 'علوم تطبيقية'),
(36, 'Science expérimentales', 'علوم تطبيقية'),
(37, 'Science expérimentales', 'علوم تطبيقية'),
(38, 'Science expérimentales', 'علوم تطبيقية'),
(39, 'Science expérimentales', 'علوم تطبيقية'),
(40, 'Science expérimentales', 'علوم تطبيقية'),
(41, 'Science expérimentales', 'علوم تطبيقية'),
(42, 'Science expérimentales', 'علوم تطبيقية'),
(43, 'Science expérimentales', 'علوم تطبيقية'),
(44, 'Science expérimentales', 'علوم تطبيقية'),
(45, 'Science expérimentales', 'علوم تطبيقية'),
(46, 'Science expérimentales', 'علوم تطبيقية'),
(47, 'Science expérimentales', 'علوم تطبيقية'),
(48, 'Science expérimentales', 'علوم تطبيقية'),
(49, 'Science expérimentales', 'علوم تطبيقية'),
(50, 'Science expérimentales', 'علوم تطبيقية'),
(51, 'Science expérimentales', 'علوم تطبيقية'),
(52, 'Science expérimentales', 'علوم تطبيقية'),
(53, 'Science expérimentales', 'علوم تطبيقية'),
(54, 'Science expérimentales', 'علوم تطبيقية'),
(55, 'Science expérimentales', 'علوم تطبيقية'),
(56, 'Science expérimentales', 'علوم تطبيقية'),
(57, 'Science expérimentales', 'علوم تطبيقية'),
(58, 'Science expérimentales', 'علوم تطبيقية'),
(59, 'Science expérimentales', 'علوم تطبيقية'),
(60, 'Science expérimentales', 'علوم تطبيقية'),
(61, 'Science expérimentales', 'علوم تطبيقية'),
(62, 'Science expérimentales', 'علوم تطبيقية'),
(63, 'Science expérimentales', 'علوم تطبيقية'),
(64, 'Science expérimentales', 'علوم تطبيقية'),
(65, 'Science expérimentales', 'علوم تطبيقية'),
(66, 'Science expérimentales', 'علوم تطبيقية'),
(67, 'Science expérimentales', 'علوم تطبيقية'),
(68, 'Science expérimentales', 'علوم تطبيقية'),
(69, 'Science expérimentales', 'علوم تطبيقية');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utilisateur` varchar(100) NOT NULL,
  `utilisateur_ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`login`, `password`, `utilisateur`, `utilisateur_ar`) VALUES
('yunho', 'lolilol', 'Morabit Mouad', 'مرابط معاد');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
`id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `id_pays` int(11) NOT NULL,
  `nom_ar` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`, `id_pays`, `nom_ar`) VALUES
(1, 'Casablanca', 1, 'الدار البيضاء'),
(2, '1', 2, '1'),
(3, '1', 3, '1'),
(4, '1', 4, '1'),
(5, '1', 5, '1'),
(6, '1', 6, '1'),
(7, '1', 7, '1'),
(8, '1', 8, '1'),
(9, '1', 9, '1'),
(10, '1', 10, '1'),
(11, '1', 12, '1'),
(12, '1', 13, '1'),
(13, '1', 14, '1'),
(14, '1', 15, '1'),
(15, '1', 17, '1'),
(16, '1', 18, '1'),
(17, 'Casablanca', 19, 'الدار البيضاء'),
(18, 'Casablanca', 20, 'الدار البيضاء'),
(19, 'Casablanca', 21, 'الدار البيضاء'),
(20, 'Casablanca', 22, 'الدار البيضاء'),
(21, 'Casablanca', 23, 'الدار البيضاء'),
(22, 'Casablanca', 24, 'الدار البيضاء'),
(23, 'Casablanca', 25, 'الدار البيضاء'),
(24, 'Casablanca', 26, 'الدار البيضاء'),
(25, 'Casablanca', 27, 'الدار البيضاء'),
(26, 'Casablanca', 28, 'الدار البيضاء'),
(27, '1', 29, '1'),
(28, '1', 30, '1'),
(29, '1', 32, '1'),
(30, '1', 33, '1'),
(31, 'casablanca', 34, '1'),
(32, 'casablanca', 35, '1'),
(33, '1', 36, '1'),
(34, '1', 37, '1'),
(35, '1', 38, '1'),
(36, '1', 39, '1'),
(37, '1', 41, '1'),
(38, '1', 42, '1'),
(39, '1', 43, '1'),
(40, '1', 44, '1'),
(41, '1', 46, '1'),
(42, '1', 47, '1'),
(43, '1', 48, '1'),
(44, '1', 49, '1'),
(45, '1', 51, '1'),
(46, '1', 52, '1'),
(47, '1', 53, '1'),
(48, '1', 54, '1'),
(49, '1', 56, '1'),
(50, '1', 57, '1'),
(51, '1', 58, '1'),
(52, '1', 59, '1'),
(53, '1', 60, '1'),
(54, '1', 61, '1'),
(55, '1', 62, '1'),
(56, '1', 63, '1'),
(57, '1', 64, '1'),
(58, '1', 65, '1'),
(59, '1', 66, '1'),
(60, '1', 67, '1'),
(61, 'casablanca', 68, 'casablanca'),
(62, 'casablanca', 69, 'casablanca'),
(63, 'casablanca', 70, 'casablanca'),
(64, 'casablanca', 71, 'casablanca'),
(65, 'casablanca', 72, 'casablanca'),
(66, 'casablanca', 73, 'casablanca'),
(67, '1', 74, '1'),
(68, '1', 75, '1'),
(69, '1', 77, '1'),
(70, '1', 78, '1'),
(71, '1', 79, '1'),
(72, '1', 80, '1'),
(73, '1', 81, '1'),
(74, '1', 82, '1'),
(75, '1', 84, '1'),
(76, '1', 85, '1'),
(77, '1', 86, '1'),
(78, '1', 87, '1'),
(79, '1', 88, '1'),
(80, '1', 89, '1'),
(81, '1', 90, '1'),
(82, '1', 91, '1'),
(83, '1', 92, '1'),
(84, '1', 93, '1'),
(85, '1', 94, '1'),
(86, '1', 95, '1'),
(87, '1', 97, '1'),
(88, '1', 98, '1'),
(89, '1', 99, '1'),
(90, '1', 100, '1'),
(91, '1', 102, '1'),
(92, '1', 103, '1'),
(93, '1', 104, '1'),
(94, '1', 105, '1'),
(95, '1', 107, '1'),
(96, '1', 108, '1'),
(97, '1', 109, '1'),
(98, '1', 110, '1'),
(99, '1', 112, '1'),
(100, '1', 113, '1'),
(101, '1', 114, '1'),
(102, '1', 115, '1'),
(103, '1', 117, '1'),
(104, '1', 118, '1'),
(105, '1', 119, '1'),
(106, '1', 120, '1'),
(107, '1', 121, '1'),
(108, '1', 122, '1'),
(109, '1', 124, '1'),
(110, '1', 125, '1'),
(111, '1', 126, '1'),
(112, '1', 127, '1'),
(113, '1', 128, '1'),
(114, '1', 129, '1'),
(115, '1', 131, '1'),
(116, '1', 132, '1'),
(117, '1', 133, '1'),
(118, '1', 134, '1'),
(119, '1', 135, '1'),
(120, '1', 136, '1'),
(121, '1', 138, '1'),
(122, '1', 139, '1'),
(123, '1', 140, '1'),
(124, '1', 141, '1'),
(125, '1', 142, '1'),
(126, '1', 143, '1'),
(127, '1', 145, '1'),
(128, '1', 146, '1'),
(129, '1', 147, '1'),
(130, '1', 148, '1'),
(131, '1', 149, '1'),
(132, '1', 150, '1'),
(133, '1', 152, '1'),
(134, '1', 153, '1'),
(135, '1', 154, '1'),
(136, '1', 155, '1'),
(137, '1', 156, '1'),
(138, '1', 157, '1'),
(139, '1', 159, '1'),
(140, '1', 160, '1'),
(141, '1', 161, '1'),
(142, '1', 162, '1'),
(143, '1', 163, '1'),
(144, '1', 164, '1'),
(145, '1', 166, '1'),
(146, '1', 167, '1'),
(147, '1', 168, '1'),
(148, '1', 169, '1'),
(149, '1', 170, '1'),
(150, '1', 171, '1'),
(151, '1', 172, '1'),
(152, '1', 173, '1'),
(153, '1', 174, '1'),
(154, '1', 175, '1'),
(155, '1', 176, '1'),
(156, '1', 177, '1'),
(157, '1', 178, '1'),
(158, '1', 179, '1'),
(159, '1', 180, '1'),
(160, '1', 181, '1'),
(161, '1', 182, '1'),
(162, '1', 183, '1'),
(163, '1', 184, '1'),
(164, '1', 185, '1'),
(165, '1', 186, '1'),
(166, '1', 187, '1'),
(167, 'Casablanca', 188, 'الدار البيضاء'),
(168, 'Casablanca', 189, 'الدار البيضاء'),
(169, 'Casablanca', 190, 'الدار البيضاء'),
(170, 'Casablanca', 191, 'الدار البيضاء'),
(171, 'Casablanca', 192, 'الدار البيضاء'),
(172, 'Casablanca', 193, 'الدار البيضاء'),
(173, '1', 194, '1'),
(174, '1', 195, '1'),
(175, '1', 196, '1'),
(176, '1', 197, '1'),
(177, '1', 198, '1'),
(178, '1', 199, '1'),
(179, '1', 200, '1'),
(180, '1', 201, '1'),
(181, '1', 202, '1'),
(182, '1', 203, '1');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
 ADD PRIMARY KEY (`id`), ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `baccalaureat`
--
ALTER TABLE `baccalaureat`
 ADD PRIMARY KEY (`id_bac`), ADD KEY `id_serie` (`id_serie`), ADD KEY `CNE` (`id_etudiant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
 ADD PRIMARY KEY (`id_etudiant`), ADD UNIQUE KEY `CNE` (`CNE`), ADD KEY `id_tuteur` (`id_tuteur`), ADD KEY `id_mere` (`id_mere`), ADD KEY `id_pere` (`id_pere`), ADD KEY `id_ville` (`id_ville`), ADD KEY `id_ville_naissance` (`id_ville_naissance`);

--
-- Index pour la table `etudiant_charge`
--
ALTER TABLE `etudiant_charge`
 ADD PRIMARY KEY (`cne`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
 ADD PRIMARY KEY (`id_filiere`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
 ADD PRIMARY KEY (`numero`), ADD KEY `id_bac` (`id_bac`), ADD KEY `id_institut` (`id_institut`), ADD KEY `id_filiere` (`id_filiere`);

--
-- Index pour la table `institut`
--
ALTER TABLE `institut`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parent`
--
ALTER TABLE `parent`
 ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serie_baccalauréat`
--
ALTER TABLE `serie_baccalauréat`
 ADD PRIMARY KEY (`id`), ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
 ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `type_baccalauréat`
--
ALTER TABLE `type_baccalauréat`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
 ADD PRIMARY KEY (`id`), ADD KEY `id_pays` (`id_pays`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `baccalaureat`
--
ALTER TABLE `baccalaureat`
MODIFY `id_bac` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
MODIFY `id_filiere` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `institut`
--
ALTER TABLE `institut`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT pour la table `parent`
--
ALTER TABLE `parent`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT pour la table `serie_baccalauréat`
--
ALTER TABLE `serie_baccalauréat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `tuteur`
--
ALTER TABLE `tuteur`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT pour la table `type_baccalauréat`
--
ALTER TABLE `type_baccalauréat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `activites`
--
ALTER TABLE `activites`
ADD CONSTRAINT `activites_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`);

--
-- Contraintes pour la table `baccalaureat`
--
ALTER TABLE `baccalaureat`
ADD CONSTRAINT `baccalaureat_ibfk_1` FOREIGN KEY (`id_serie`) REFERENCES `serie_baccalauréat` (`id`),
ADD CONSTRAINT `baccalaureat_ibfk_2` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteur` (`identifiant`),
ADD CONSTRAINT `etudiant_ibfk_2` FOREIGN KEY (`id_mere`) REFERENCES `parent` (`identifiant`),
ADD CONSTRAINT `etudiant_ibfk_3` FOREIGN KEY (`id_pere`) REFERENCES `parent` (`identifiant`),
ADD CONSTRAINT `etudiant_ibfk_4` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`),
ADD CONSTRAINT `etudiant_ibfk_5` FOREIGN KEY (`id_ville_naissance`) REFERENCES `ville` (`id`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_bac`) REFERENCES `baccalaureat` (`id_bac`),
ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`id_institut`) REFERENCES `institut` (`id`),
ADD CONSTRAINT `inscription_ibfk_3` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `serie_baccalauréat`
--
ALTER TABLE `serie_baccalauréat`
ADD CONSTRAINT `serie_baccalaur@0pat_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_baccalauréat` (`id`);

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
ADD CONSTRAINT `ville_ibfk_1` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
