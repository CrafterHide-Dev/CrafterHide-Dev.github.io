-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 25 mai 2025 à 21:31
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tpgit`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `dest_id` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `score` decimal(2,1) DEFAULT NULL,
  UNIQUE KEY `PK` (`id`),
  KEY `user_id` (`user_id`),
  KEY `dest_id` (`dest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `user_id`, `dest_id`, `comment`, `score`) VALUES
(1, 1, 2, 'Voici un commentaire !!', 5.0),
(11, 1, 4, 'La ville lumière', 4.0),
(3, 1, 3, 'Un nouveau commentaire', 5.0);

-- --------------------------------------------------------

--
-- Structure de la table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
CREATE TABLE IF NOT EXISTS `destinations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `street_number` int DEFAULT NULL,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` text NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `types` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `destinations`
--

INSERT INTO `destinations` (`id`, `country`, `city`, `zip_code`, `street_name`, `street_number`, `title`, `description`, `image`, `image_alt`, `types`) VALUES
(1, 'France', 'Paris', '75007', 'Avenue Gustave Eiffel', NULL, 'La Tour Eiffel', 'Symbole de Paris et de la France, la Tour Eiffel, construite pour l\'Exposition Universelle de 1889, culmine à 330 mètres. Offrant des vues panoramiques exceptionnelles sur la ville, elle est une merveille d\'ingénierie et une destination touristique incontournable. Montez en ascenseur ou par les escaliers jusqu\'au sommet pour admirer la beauté de Paris à vos pieds.', 'https://images.unsplash.com/photo-1569949380643-6e746ecaa3bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Image de la Tour Eiffel', ''),
(2, 'France', 'Paris', '75008', 'Place Charles de Gaulle', NULL, 'L\'Arc de Triomphe', 'Situé au centre de la place Charles-de-Gaulle, l\'Arc de Triomphe est un monument emblématique de Paris. Commandé par Napoléon Ier pour célébrer les victoires de la Grande Armée, il est un symbole de la gloire militaire française et un témoignage de l\'histoire du pays.', 'https://images.unsplash.com/photo-1595540089942-545def48cf3e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Image de l\'Arc de Triomphe', ''),
(3, 'Australia', 'Sydney', NULL, 'Bennelong Point', NULL, 'Sydney Opera House', 'Situé sur le front de mer de Sydney, le Sydney Opera House est l\'un des bâtiments les plus célèbres du XXᵉ siècle et un haut lieu des arts de la scène. Conçu par l\'architecte danois Jørn Utzon, son architecture unique évoque des voiles de bateau ou des coquillages, ce qui en fait un symbole iconique de la ville.', 'https://images.unsplash.com/photo-1616128618694-96e9e896ecb7?q=80&w=1890&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Image du Sydney Opera House', 'luxurious'),
(4, 'France', 'Paris', NULL, NULL, NULL, 'Ville de Paris', 'La ville lumière vous attend avec son charme éternel et ses merveilles culturelles.', 'https://plus.unsplash.com/premium_photo-1666283181610-b95ee7e55465?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Image de la ville de Paris avec la Tour Eiffel', ''),
(5, 'Maldives', NULL, NULL, NULL, NULL, 'Les Maldives', 'Plages blanches, eaux turquoise et coucher de soleil magique pour une escapade idyllique.', 'https://images.unsplash.com/photo-1467377791767-c929b5dc9a23?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Image d\'une plage aux Maldives', 'luxurious');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(24) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `password`) VALUES
(1, 'CrafterHide', '$2y$10$wFDy9/RnSr5uSE5NRgfDpOiWrdT6/nqFyPcSWa9YE6hSocqTUwqj.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
