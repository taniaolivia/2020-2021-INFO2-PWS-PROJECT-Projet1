SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membre` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `nom` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `mail` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telephone` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `adresse` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `mdp` varchar(8) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`,`mail`)
) ENGINE=InnoDB   AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `message` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `sujet` int(5) NOT NULL,
  `emetteur` int(3) NOT NULL,
  `contenu` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `dateEnvoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sujet` (`sujet`),
  KEY `fk_emetteur` (`emetteur`)
) ENGINE=InnoDB   AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `sujets`
--

CREATE TABLE `sujet` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `createur` int(3) NOT NULL,
  `titre` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `visibilite` enum('public','prive') COLLATE latin1_general_ci NOT NULL,
  `dateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titre` (`titre`),
  KEY `fk_createur` (`createur`)
) ENGINE=InnoDB   AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_emetteur` FOREIGN KEY (`emetteur`) REFERENCES `membre` (`id`),
  ADD CONSTRAINT `fk_sujet` FOREIGN KEY (`sujet`) REFERENCES `sujet` (`id`);

--
-- Contraintes pour la table `sujets`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `fk_createur` FOREIGN KEY (`createur`) REFERENCES `membre` (`id`);
