-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 05 déc. 2019 à 00:48
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chatopen`
--

-- --------------------------------------------------------

--
-- Structure de la table `infochat`
--

DROP TABLE IF EXISTS `infochat`;
CREATE TABLE IF NOT EXISTS `infochat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `datemessage` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(255) NOT NULL DEFAULT 'a.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `infochat`
--

INSERT INTO `infochat` (`id`, `username`, `contenu`, `datemessage`, `avatar`) VALUES
(1, 'Cyranno ', 'Voila j\'ai crée notre chat !!!!!', '2019-12-04 19:27:46', 'a.png'),
(2, 'Mike', 'Géniale testons tout sa', '2019-12-04 22:03:24', 'a.png'),
(3, 'Sandra ', 'Wouuu!! t\'assure c\'est ou les emojis??', '2019-12-04 22:09:34', 'a.png'),
(4, 'Cyranno', 'heuuuu................', '2019-12-04 22:09:57', 'a.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
