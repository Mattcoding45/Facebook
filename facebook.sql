-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 nov. 2023 à 14:21
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `facebook`
--

-- --------------------------------------------------------

--
-- Structure de la table `promos`
--

DROP TABLE IF EXISTS `promos`;
CREATE TABLE IF NOT EXISTS `promos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_promo` text NOT NULL,
  `date_promo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `promos`
--

INSERT INTO `promos` (`id`, `nom_promo`, `date_promo`) VALUES
(1, 'kappa1', '2023-2024'),
(2, 'kappa2', '2023-2024'),
(3, 'kappa3', '2023-2024');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `promo_id` int DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_promo_id_foreign` (`promo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`, `email`, `date_naissance`, `password`, `promo_id`, `is_admin`) VALUES
(1, 'Denis', 'Bernier', 'denis.bernier@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 1),
(2, 'Lucas', 'Martin', 'lucas.martin@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(3, 'Emma', 'Dupont', 'emma.dupont@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(4, 'Alexander', 'Leroux', 'alexander.leroux@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(5, 'Olivia', 'Lefevre', 'olivia.lefevre@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(6, 'Ethan', 'Girard', 'ethan.girard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(7, 'Mia', 'Bernard', 'mia.bernard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(8, 'Noah', 'Rocher', 'noah.rocher@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(9, 'Ava', 'Dubois', 'ava.dubois@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(10, 'Liam', 'Moreau', 'liam.moreau@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(11, 'Sophia', 'Renard', 'sophia.renard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(12, 'Benjamin', 'Gauthier', 'bejamin.gauthier@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(13, 'Amelia', 'Lambert', 'amelia.lambert@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(14, 'Gabriel', 'Caron', 'gabriel.caron@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(15, 'Isabella', 'Rousseau', 'isabella.rousseau@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(16, 'Samuel', 'Mercier', 'samuel.mercier@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(17, 'Chloe', 'Lemoine', 'chloe.lemoine@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(18, 'Jackson', 'Faure', 'jackson.faure@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(19, 'Grace', 'Faure', 'grace.faure@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(20, 'David', 'Fournier', 'david.fournier@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(21, 'Harper', 'Laurent', 'harper.laurent@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1, 0),
(22, 'Leo', 'Dumont', 'leo.dumont@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(23, 'Aria', 'Lefort', 'aria.lefort@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(24, 'Logan', 'Petit', 'logan.petit@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(25, 'Lily', 'Leclerc', 'lily.leclerc@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(26, 'Caleb', 'Vasseur', 'caleb.vasseur@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(27, 'Sofia', 'Giraud', 'sofia.giraud@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(28, 'Daniel', 'Noel', 'daniel.noel@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(29, 'Scarlett', 'Renaud', 'scarlett.renaud@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(30, 'Henry', 'Vincent', 'henry.vincent@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(31, 'Zoey', 'Henry', 'zoey.henry@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(32, 'Nathan', 'Roy', 'nathan.roy@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(33, 'Ellie', 'Lemoine', 'ellie.lemoine@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(34, 'Jack', 'Simon', 'jack.simon@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(35, 'Madison', 'Poirier', 'madison.poirier@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(36, 'Olivier', 'Fontaine', 'olivier.fontaine@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(37, 'Emily', 'Levesque', 'emily.levesque@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(38, 'Samuel', 'Blanc', 'samuel.blanc@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(39, 'Abigail', 'Arnaud', 'abigail.arnaud@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(40, 'Maxime', 'Deschamps', 'maxime.deschamps@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(41, 'Stella', 'Gagne', 'stella.gagne@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(42, 'Zachary', 'Brun', 'zachary.brun@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 2, 0),
(43, 'Addison', 'Lebrun', 'addison.lebrun@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(44, 'Eliot', 'Maillard', 'eliot.maillard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(45, 'Hannah', 'Beaulieu', 'hannah.beaulieu@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(46, 'Victor', 'Picard', 'victor.picard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(47, 'Aurora', 'Boucher', 'aurora.boucher@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(48, 'Isaac', 'Roussel', 'isaac.roussel@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(49, 'Peneloppe', 'Marchand', 'peneloppe.marchand@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(50, 'Nolan', 'Martel', 'nolan.martel@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(51, 'Victoria', 'Denis', 'victoria.denis@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(52, 'Nicholas', 'Lefevre', 'nicholas.lefevre@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(53, 'Ava', 'Gagnon', 'ava.gagnon@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(54, 'Lucas', 'Lambert', 'lucas.lambert@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(55, 'Grace', 'Lefevre', 'grace.lefevre@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(56, 'Alexander', 'Pellerin', 'alexander.pellerin@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(57, 'Ella', 'Lambert', 'ella.lambert@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(58, 'Mason', 'Bouchard', 'mason.bouchard@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(59, 'Natalie', 'Desjardins', 'natalie.desjardins@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(60, 'Julian', 'Lavoie', 'julian.lavoie@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(61, 'Scarlett', 'Raymond', 'scarlett.raymond@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(62, 'Linkin', 'Park', 'linkin.park@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0),
(63, 'Jean', 'Bon', 'jean.bon@student.fr', '1995-05-25', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 3, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`promo_id`) REFERENCES `promos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
