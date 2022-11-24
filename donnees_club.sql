-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 18 Septembre 2011 à 19:33
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_club`
--

--
-- Contenu de la table `membres`
--

INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(1, 'mhverron', 'Verrons', 'Marie-Hélène', 'mhverron@univ-lr.fr', '0546513961', 'Bureau D108', 'mhverron');
INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(2, 'alassus', 'Lassus', 'Annick', 'alassus@univ-lr.fr', '0546513977', 'Bureau D107', 'alassus');
INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(3, 'gchiron', 'Chiron', 'Guillaume', 'gchiron@univ-lr.fr', '0546513943', 'Bureau D112 bis', 'jmalki');
INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(4, 'mrabah', 'Rabah', 'Mourad', 'mrabah@univ-lr.fr', '0546513963', 'Bureau D106', 'mrabah');
INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(6, 'nperid', 'Peridont', 'Nicolas', 'nperid@univ-lr.fr', '0546513967', 'Bureau D109', 'nrempuls');
INSERT INTO `membre` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `telephone`, `adresse`, `mdp`) VALUES(7, 'cfaucher', 'Faucher', 'Cyril', 'cfaucher@univ-lr.fr', '0546513967', 'Bureau D109', 'cfaucher');


--
-- Contenu de la table `sujets`
--

INSERT INTO `sujet` (`id`, `createur`, `titre`, `visibilite`, `dateCreation`) VALUES(1, 1, 'A propos du forum', 'public', '2011-06-21 15:13:01');
INSERT INTO `sujet` (`id`, `createur`, `titre`, `visibilite`, `dateCreation`) VALUES(2, 1, 'Aide pour positionnement en CSS', 'public', '2011-09-02 15:13:52');
INSERT INTO `sujet` (`id`, `createur`, `titre`, `visibilite`, `dateCreation`) VALUES(3, 2, 'Comment référencer son site ?', 'public', '2011-09-05 15:14:28');
INSERT INTO `sujet` (`id`, `createur`, `titre`, `visibilite`, `dateCreation`) VALUES(4, 1, 'Problème d\\''accès à la base de données', 'prive', '2011-06-22 18:26:25');
INSERT INTO `sujet` (`id`, `createur`, `titre`, `visibilite`, `dateCreation`) VALUES(5, 7, 'Remises des TPs', 'prive', '2011-09-09 17:38:24');


--
-- Contenu de la table `messages`
--

INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(1, 1, 1, 'Ce forum est public, son contenu est de votre responsabilité', '2011-06-21 15:55:07');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(2, 2, 1, 'tout d''abord, reprenez le cours et le TD ...', '2011-09-02 16:13:38');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(3, 2, 1, 'Visitez le site alsacreations', '2011-09-05 16:14:31');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(4, 2, 1, 'Empruntez le livre \\"Bien réussir son site avec CSS3\\" à la BU					', '2011-06-22 19:05:45');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(5, 4, 7, 'impossible d\\''accéder à phpmyadmin			', '2011-09-09 17:22:25');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(6, 4, 7, 'solution : mdp = login', '2011-09-09 17:27:17');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(7, 4, 7, 'il suffisait de savoir lire les instructions données !!!				', '2011-09-09 17:36:28');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(8, 5, 7, 'voir indications sur Moodle				', '2011-09-09 17:38:46');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(9, 4, 1, 'ben oui, ct pourtant clair il me semble ...', '2011-09-09 17:42:34');
INSERT INTO `message` (`id`, `sujet`, `emetteur`, `contenu`, `dateEnvoi`) VALUES(10, 5, 1, 'y\\''en a qui savent pas lire ...', '2011-09-14 16:56:29');

