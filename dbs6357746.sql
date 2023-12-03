-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : db5007690686.hosting-data.io
-- Généré le : lun. 29 août 2022 à 08:55
-- Version du serveur : 5.7.38-log
-- Version de PHP : 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbs6357746`
--

-- --------------------------------------------------------

--
-- Structure de la table `ambu_emploi`
--

CREATE TABLE `ambu_emploi` (
  `emploi_id` int(11) NOT NULL,
  `nom_emploi` varchar(30) NOT NULL,
  `description_emploi` longtext NOT NULL,
  `obligation_emploi` varchar(250) NOT NULL,
  `contrat` varchar(30) NOT NULL,
  `temps` int(3) NOT NULL,
  `salaire_heure` float NOT NULL,
  `fk_societe` int(11) NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `mail_alerte` varchar(80) NOT NULL DEFAULT 'candidature@etoilesecours.com'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ambu_emploi`
--

INSERT INTO `ambu_emploi` (`emploi_id`, `nom_emploi`, `description_emploi`, `obligation_emploi`, `contrat`, `temps`, `salaire_heure`, `fk_societe`, `statut`, `date`, `mail_alerte`) VALUES
(9, 'Ambulancier', 'conduire une ambulance', 'Permis B', 'CDI', 35, 15, 89, 0, '2022-06-22', 'candidature@etoilesecours.com'),
(10, 'Ambulancier - Ambulanci&egrave', 'Vous assurez le transport sanitaire ou l&amp;#039;accompagnement de personnes vers les structures de soins selon les r&egrave;gles d&amp;#039;hygi&egrave;ne, de confort et de s&eacute;curit&eacute;', 'Vous assurez le transport sanitaire ou l&amp;#039;accompagnement de personnes vers les structures de soins selon les r&egrave;gles d&amp;#039;hygi&egrave;ne, de confort et de s&eacute;curit&eacute;.\r\nVous r&eacute;alisez des op&eacute;rations ou miss', 'CDI', 35, 0, 75, 1, '2022-06-21', 'candidature@etoilesecours.com'),
(11, 'Ambulancier', 'conduire une ambulance', 'Avoir du swagg', 'CDD', 8, 100, 89, 1, '2022-06-30', 'candidature@etoilesecours.com');

-- --------------------------------------------------------

--
-- Structure de la table `ambu_postulant`
--

CREATE TABLE `ambu_postulant` (
  `postulant_id` int(11) NOT NULL,
  `fk_emploi` int(2) NOT NULL,
  `nom_postulant` varchar(30) NOT NULL,
  `prenom_postulant` varchar(30) NOT NULL,
  `mail_postulant` varchar(40) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `motivation` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ambu_rdv`
--

CREATE TABLE `ambu_rdv` (
  `rdv_id` int(10) NOT NULL,
  `fk_user` int(10) NOT NULL,
  `rdv_date` date NOT NULL,
  `heure` time NOT NULL,
  `transport_type` tinyint(1) NOT NULL,
  `transport_kms` tinyint(1) NOT NULL,
  `rdv_raison` tinyint(1) NOT NULL,
  `ald` tinyint(1) NOT NULL,
  `pick_name` varchar(40) NOT NULL,
  `pick_adress` varchar(80) NOT NULL,
  `pick_zip` int(6) NOT NULL,
  `pick_ville` varchar(60) NOT NULL,
  `dest_name` varchar(40) NOT NULL,
  `dest_adress` varchar(80) NOT NULL,
  `dest_zip` int(6) NOT NULL,
  `dest_ville` varchar(60) NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '0',
  `fk_societe` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ambu_rdv`
--

INSERT INTO `ambu_rdv` (`rdv_id`, `fk_user`, `rdv_date`, `heure`, `transport_type`, `transport_kms`, `rdv_raison`, `ald`, `pick_name`, `pick_adress`, `pick_zip`, `pick_ville`, `dest_name`, `dest_adress`, `dest_zip`, `dest_ville`, `statut`, `fk_societe`) VALUES
(1, 49, '2022-06-24', '00:00:00', 1, 1, 0, 0, 'Afpa', 'paris', 17300, 'Rochefort', 'maison', '322 route de Caours', 80132, 'VAUCHELLES LES QUESNOY', 1, 89),
(2, 49, '2022-06-30', '15:37:00', 0, 0, 0, 0, '125046', 'Chomeur', 0, '1514694', 'maison', '2 bis rue galvanie', 91300, 'massy', 1, 89);

-- --------------------------------------------------------

--
-- Structure de la table `ambu_site_societe`
--

CREATE TABLE `ambu_site_societe` (
  `id_societe` int(9) NOT NULL,
  `societe_nom` varchar(40) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `societe_adress` text CHARACTER SET latin1,
  `societe_zip` int(8) DEFAULT NULL,
  `societe_ville` text CHARACTER SET latin1,
  `societe_tel` int(12) DEFAULT NULL,
  `societe_mail` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `story_1` longtext CHARACTER SET latin1,
  `story_2` longtext CHARACTER SET latin1,
  `img_1` longtext CHARACTER SET latin1,
  `img_2` longtext CHARACTER SET latin1,
  `img_3` longtext CHARACTER SET latin1,
  `slider_1` varchar(80) DEFAULT NULL,
  `slider_2` varchar(80) DEFAULT NULL,
  `slider_3` varchar(80) DEFAULT NULL,
  `logo` varchar(80) DEFAULT NULL,
  `map` varchar(350) DEFAULT NULL,
  `template_id` int(9) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `dossier` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ambu_site_societe`
--

INSERT INTO `ambu_site_societe` (`id_societe`, `societe_nom`, `date_creation`, `societe_adress`, `societe_zip`, `societe_ville`, `societe_tel`, `societe_mail`, `story_1`, `story_2`, `img_1`, `img_2`, `img_3`, `slider_1`, `slider_2`, `slider_3`, `logo`, `map`, `template_id`, `active`, `dossier`) VALUES
(37, 'Ambulances ATLANTIQUE', '2001-01-01', 'aa', 75000, 'Paris', 123456789, 'test@test.test', 'story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 story 1 ', 'story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 story 2 ', '37-img1-pexels-moses-londo-10434596.webp', '37-img2-pexels-cottonbro-4065156.webp', '37-img3-pexels-ryutaro-tsukata-5191376.webp', '37-slider_1-pexels-antonio-batinić-4164378.webp', '37-slider_2-pexels-pixabay-263402 (1).webp', '37-slider_3-pexels-mikhail-nilov-8942484.webp', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5580.678802522693!2d-1.0170524897353224!3d45.62391771865277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4801766f8e71c0d9%3A0xcf614f4f70730a0c!2sAmbulances%20Saint%20Bernard!5e0!3m2!1sfr!2sfr!4v1651141791374!5m2!1sfr!2sfr', 1, 1, 'ATLANTIQUE'),
(64, 'Ambulances ASUR', '1986-07-01', '29B boulevard du Guedeau', 79300, 'Bressuire', 549651208, 'pac.pierre@gmail.com', 'Nos &eacute;quipes d&amp;amp;amp;amp;amp;#039;ambulanciers dipl&ocirc;m&eacute;s sont qualifi&eacute;es pour r&eacute;pondre &agrave; toutes les situations d&amp;amp;amp;amp;amp;#039;urgence. Nous sommes &agrave; votre &eacute;coute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de s&eacute;curit&eacute;.\r\n\r\nNos v&eacute;hicules climatis&eacute;s sont r&eacute;cents et &eacute;quip&eacute;s de tout le mat&eacute;riel n&eacute;cessaire au secours d&amp;amp;amp;amp;amp;#039;urgence.\r\n\r\nVous pouvez nous joindre 24h/24 7j/7 par t&eacute;l&eacute;phone.', 'story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 story2 ', '64-img1-pexels-moses-londo-10434596.webp', '64-img2-pexels-cottonbro-4065156.webp', '64-img3-pexels-ryutaro-tsukata-5191376.webp', '64-slider_1-pexels-antonio-batinić-4164378.webp', '64-slider_2-pexels-pixabay-263402 (1).webp', '64-slider_3-pexels-mikhail-nilov-8942484.webp', '64-logo-croix_ambulances.webp', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5580.678802522693!2d-1.0170524897353224!3d45.62391771865277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4801766f8e71c0d9%3A0xcf614f4f70730a0c!2sAmbulances%20Saint%20Bernard!5e0!3m2!1sfr!2sfr!4v1651141791374!5m2!1sfr!2sfr', 2, 1, 'ASUR'),
(65, 'Ambulances ATLANTIQUE', '1989-01-01', '2 rue de la Pérouse', 17440, 'Aytré', 546272519, 'mail@mail.fr', 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', 'bla bla', 'rectangle.webp', 'carre.webp', 'carre.webp', 'rectangle.webp', 'rectangle.webp', 'rectangle.webp', 'carre.webp', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5580.678802522693!2d-1.0170524897353224!3d45.62391771865277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4801766f8e71c0d9%3A0xcf614f4f70730a0c!2sAmbulances%20Saint%20Bernard!5e0!3m2!1sfr!2sfr!4v1651141791374!5m2!1sfr!2sfr', 1, 1, 'ATLANTIQUE'),
(66, 'Ambulances ATLANTIS', '1996-07-01', 'aa', 75000, 'Paris', 549057806, 'test@test.test', 'Nos &eacute;quipes d&amp;amp;#039;ambulanciers dipl&ocirc;m&eacute;s sont qualifi&eacute;es pour r&eacute;pondre &agrave; toutes les situations d&amp;amp;#039;urgence. Nous sommes &agrave; votre &eacute;coute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de s&eacute;curit&eacute;.  Nos v&eacute;hicules climatis&eacute;s sont r&eacute;cents et &eacute;quip&eacute;s de tout le mat&eacute;riel n&eacute;cessaire au secours d&amp;amp;#039;urgence.  Vous pouvez nous joindre 24h/24 7j/7 par t&eacute;l&eacute;phone .', 'Nos &eacute;quipes d&amp;amp;#039;ambulanciers dipl&ocirc;m&eacute;s sont qualifi&eacute;es pour r&eacute;pondre &agrave; toutes les situations d&amp;amp;#039;urgence. Nous sommes &agrave; votre &eacute;coute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de s&eacute;curit&eacute;.  Nos v&eacute;hicules climatis&eacute;s sont r&eacute;cents et &eacute;quip&eacute;s de tout le mat&eacute;riel n&eacute;cessaire au secours d&amp;amp;#039;urgence.  Vous pouvez nous joindre 24h/24 7j/7 par t&eacute;l&eacute;phone .', 'pexels-moses-londo-10434596.webp', '66-pexels-ryutaro-tsukata-5191376.webp', '66-pexels-cottonbro-4065156.webp', '', '', '', 'croix_ambulances.webp', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5580.678802522693!2d-1.0170524897353224!3d45.62391771865277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4801766f8e71c0d9%3A0xcf614f4f70730a0c!2sAmbulances%20Saint%20Bernard!5e0!3m2!1sfr!2sfr!4v1651141791374!5m2!1sfr!2sfr', 1, 1, 'ATLANTIS'),
(67, 'Ambulances AUBERT', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'AUBERT'),
(68, 'Ambulances AZUR', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'AZUR'),
(69, 'Ambulances BOURCIER DUMONTET', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'BOURCIERDUMONTET'),
(70, 'Ambulances COLBERT', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'COLBERT'),
(71, 'Ambulances COLLON VAILLANT', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'COLLONVAILLANT'),
(72, 'Ambulances COUTANT', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'COUTANT'),
(73, 'Ambulances DE CHATEL', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'DECHATEL'),
(74, 'Ambulances DUPE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'DUPE'),
(75, 'Ambulances ETOILE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'ETOILE'),
(76, 'Ambulances ETOILE BLEUE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'ETOILEBLEUE'),
(77, 'Ambulances HELENE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'HELENE'),
(78, 'Ambulances MAROTTA', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'MAROTTA'),
(79, 'Ambulances METIVIER', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'METIVIER'),
(80, 'Ambulances MOURRY', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'MOURRY'),
(81, 'Ambulances NOEL', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'NOEL'),
(82, 'Ambulances OUEST TOURRAINE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'OUESTTOURRAINE'),
(83, 'Ambulances PACIFIQUE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'PACIFIQUE'),
(84, 'Ambulances PRESQU\'ILE D\'ARVERT', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'PRESQUILEDARVERT'),
(85, 'Ambulances RAOULX', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'RAOULX'),
(86, 'Ambulances RETAISES', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'RETAISES'),
(87, 'Ambulances SERVICE', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'SERVICE'),
(88, 'Ambulances ST BERNARD', NULL, NULL, NULL, NULL, NULL, NULL, 'Nos équipes d\'ambulanciers diplômés sont qualifiées pour répondre à toutes les situations d\'urgence. Nous sommes à votre écoute pour satisfaire vos besoins et vous transporter dans des conditions optimales de confort et de sécurité.  Nos véhicules climatisés sont récents et équipés de tout le matériel nécessaire au secours d\'urgence.  Vous pouvez nous joindre 24h/24 7j/7 par téléphone .', NULL, NULL, NULL, '', '', '', '', '', '', 1, 1, 'STBERNARD'),
(89, 'Ambulances PAC', '1984-11-09', '1 rue des PIOUPIOU', 69690, 'Villefranche', 123456789, 'iuiuh@ojbhj.fr', 'iouyvcfgd opiujhgf mlkjhgf molkjhgf mlkjhgf', 'poikjuh poiujhg mlk,nb poiujh polkijh mlkj plok j', '89-img1-rectangle.webp', '89-img2-carre.webp', '89-img3-fond_inscription.webp', '89-slider_1-pexels-antonio-batinić-4164378.webp', '89-slider_2-pexels-pixabay-263402 (1).webp', '89-slider_3-pexels-mikhail-nilov-8942484.webp', '89-logo-croix_ambulances.webp', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5580.678802522693!2d-1.0170524897353224!3d45.62391771865277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4801766f8e71c0d9%3A0xcf614f4f70730a0c!2sAmbulances%20Saint%20Bernard!5e0!3m2!1sfr!2sfr!4v1651141791374!5m2!1sfr!2sfr', 1, 1, 'PAC');

-- --------------------------------------------------------

--
-- Structure de la table `ambu_utilisateur`
--

CREATE TABLE `ambu_utilisateur` (
  `user_id` int(10) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `adress` text NOT NULL,
  `zip` int(8) NOT NULL,
  `ville` text NOT NULL,
  `tel` int(12) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `mdp` longtext NOT NULL,
  `profil` tinyint(2) NOT NULL DEFAULT '0',
  `anniv` date DEFAULT NULL,
  `fk_societe` int(9) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ambu_utilisateur`
--

INSERT INTO `ambu_utilisateur` (`user_id`, `nom`, `prenom`, `adress`, `zip`, `ville`, `tel`, `mail`, `mdp`, `profil`, `anniv`, `fk_societe`, `active`) VALUES
(43, 'Pac', 'Pierre', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'pac.pierre@gmail.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', 2, '1984-11-09', NULL, 1),
(49, 'Pierre Pac', 'Pierre', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'pac.pierre@gmail.com', '590c9f8430c7435807df8ba9a476e3f1295d46ef210f6efae2043a4c085a569e', 0, '1984-11-09', 89, 1),
(50, 'Raimbault', 'Pierre', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'pac.pierre@gmail.com', '1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', 1, '1984-11-09', 89, 1),
(51, 'Pierre Pac', 'Pierre', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'pac.pierre@gmail.com', 'fd61a03af4f77d870fc21e05e7e80678095c92d808cfb3b5c279ee04c74aca13', 3, '1984-11-09', NULL, 1),
(52, 'client', 'un', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'client@gmail.com', '948fe603f61dc036b5c596dc09fe3ce3f3d30dc90f024c85f3c82db2ccab679d', 0, '1984-11-09', 89, 1),
(53, 'regule', 'un', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'regule@gmail.com', 'f7ab96dced4960fa76a7a74398eaab5ca2f704c4a964040e178842c0b4182f7a', 1, '1984-11-09', 89, 1),
(54, 'Pac', 'Pierre', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'pac.pierre@gmail.com', '4f0d24b941645161ed5ee39bc053f9ea5afc63f19ee3a0f4323f2092851886c1', 0, '1984-11-09', 89, 1),
(55, 'regule', 'itinerant', '25 Rue Fran&ccedil;aise', 12250, 'TOURNEMIRE', 608112179, 'reguleiti@gmail.com', 'e13accd4d73e93587cd15bef7e314488bc3b4ed0c95ae1cc5235c004a598c6d9', 4, '1984-11-09', NULL, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ambu_emploi`
--
ALTER TABLE `ambu_emploi`
  ADD PRIMARY KEY (`emploi_id`),
  ADD KEY `fk_soc` (`fk_societe`);

--
-- Index pour la table `ambu_postulant`
--
ALTER TABLE `ambu_postulant`
  ADD PRIMARY KEY (`postulant_id`),
  ADD KEY `fk_emploi` (`fk_emploi`);

--
-- Index pour la table `ambu_rdv`
--
ALTER TABLE `ambu_rdv`
  ADD PRIMARY KEY (`rdv_id`),
  ADD KEY `fk_user` (`fk_user`) USING BTREE,
  ADD KEY `fk_societe` (`fk_societe`);

--
-- Index pour la table `ambu_site_societe`
--
ALTER TABLE `ambu_site_societe`
  ADD PRIMARY KEY (`id_societe`);

--
-- Index pour la table `ambu_utilisateur`
--
ALTER TABLE `ambu_utilisateur`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_societe` (`fk_societe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ambu_emploi`
--
ALTER TABLE `ambu_emploi`
  MODIFY `emploi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ambu_postulant`
--
ALTER TABLE `ambu_postulant`
  MODIFY `postulant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ambu_rdv`
--
ALTER TABLE `ambu_rdv`
  MODIFY `rdv_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ambu_site_societe`
--
ALTER TABLE `ambu_site_societe`
  MODIFY `id_societe` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `ambu_utilisateur`
--
ALTER TABLE `ambu_utilisateur`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ambu_emploi`
--
ALTER TABLE `ambu_emploi`
  ADD CONSTRAINT `ambu_emploi_ibfk_1` FOREIGN KEY (`fk_societe`) REFERENCES `ambu_site_societe` (`id_societe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ambu_postulant`
--
ALTER TABLE `ambu_postulant`
  ADD CONSTRAINT `ambu_postulant_ibfk_1` FOREIGN KEY (`fk_emploi`) REFERENCES `ambu_emploi` (`emploi_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ambu_rdv`
--
ALTER TABLE `ambu_rdv`
  ADD CONSTRAINT `ambu_rdv_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `ambu_utilisateur` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ambu_rdv_ibfk_2` FOREIGN KEY (`fk_societe`) REFERENCES `ambu_site_societe` (`id_societe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ambu_utilisateur`
--
ALTER TABLE `ambu_utilisateur`
  ADD CONSTRAINT `ambu_utilisateur_ibfk_1` FOREIGN KEY (`fk_societe`) REFERENCES `ambu_site_societe` (`id_societe`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
