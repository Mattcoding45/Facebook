-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 nov. 2023 à 13:51
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `promos`
--

INSERT INTO `promos` (`id`, `nom_promo`) VALUES
(1, 'kappa1'),
(2, 'kappa2'),
(3, 'kappa3');

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
  `password` varchar(255) NOT NULL,
  `promo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_promo_id_foreign` (`promo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`, `email`, `password`, `promo_id`) VALUES
(1, 'Denis', 'Bernier', 'denis.bernier@student.fr', '$2y$10$Y.MZsNc7SAWbZThHMBylneBihhxUdwmjoApGHD1nZ16OGJ/5zG5hW', 1),
(2, 'Lucas', 'Martin', 'lucas.martin@student.fr', '$2y$10$G2cXVuXqDZI5s63KlK5Dau50vhBuS8EhcUXr7AQ28mav9GInZ43Uy', 1),
(3, 'Emma', 'Dupont', 'emma.dupont@student.fr', '$2y$10$EaKYXL8e2eNAtBGU1fYZhOYLf5eObcjiWRlu4plj5PfHicdLa2gEq', 1),
(4, 'Alexander', 'Leroux', 'alexander.leroux@student.fr', '$2y$10$4xBN2jbd6ocYapxb8NXLbOurg.f119X5FxEewEPZ5oPVuQm9Kp/0O', 1),
(5, 'Olivia', 'Lefevre', 'olivia.lefevre@student.fr', '$2y$10$9fB62.7odtaWS42THZD3cuJh0Y./5M4RHYOZyVVGONymvK1TyV9CS', 1),
(6, 'Ethan', 'Girard', 'ethan.girard@student.fr', '$2y$10$ZCC.eNc3hGI2EBtMVKiUhexsfZ3Z/Larl6eT8O9IlLrQOKKBRrIxC', 1),
(7, 'Mia', 'Bernard', 'mia.bernard@student.fr', '$2y$10$1jqIu2iRXcMEMppbSMlnV.65M5ZrwGVGW9aIkWmFPUlPLWSaKGJsi', 1),
(8, 'Noah', 'Rocher', 'noah.rocher@student.fr', '$2y$10$FNLRtR10M1WmxkL46pRJPOhaX5RuFotlwIvwy2R3Xox7GMezK9Tiu', 1),
(9, 'Ava', 'Dubois', 'ava.dubois@student.fr', '$2y$10$536uUjCm6o4m6xIcyD7WPeYcccSqG3ijxeU6vpvHsoszw0qiETJIy', 1),
(10, 'Liam', 'Moreau', 'liam.moreau@student.fr', '$2y$10$1IOCMsnlGee20pN8PyidQu1K6sXFq.cwmeHBwJCa4YWLiHVLQakXu', 1),
(11, 'Sophia', 'Renard', 'sophia.renard@student.fr', '$2y$10$p8pZmGSipMgAvs0hnlMWkuAeD.Ld/WW.uPI1CO7D2SRFKm1GFbWle', 1),
(12, 'Benjamin', 'Gauthier', 'bejamin.gauthier@student.fr', '$2y$10$eEnZlME9vQ7runKBwNXr0urHhspEHo2ofxhnGSOMNU9mH0m.glJfi', 1),
(13, 'Amelia', 'Lambert', 'amelia.lambert@student.fr', '$2y$10$Kmwz8z2lma58E.LHLR747OYvCGqdkq06hvSkviOR24WU.xqbgB4OG', 1),
(14, 'Gabriel', 'Caron', 'gabriel.caron@student.fr', '$2y$10$bOdW3LK96MaJdt4bhgo3Wunf9JnLJueFnOcLKbgk48nQ6wJgZ4YPK', 1),
(15, 'Isabella', 'Rousseau', 'isabella.rousseau@student.fr', '$2y$10$O3eG0bSMoWGqoMmIre/u0.hAwTEC0xqjGGDT0lXUgGzPzYYemg0K.', 1),
(16, 'Samuel', 'Mercier', 'samuel.mercier@student.fr', '$2y$10$L7LE405ToTuzDVNgcaczBOV919NQxK8VN.JECQAIx8UZ2OHnH/cA.', 1),
(17, 'Chloe', 'Lemoine', 'chloe.lemoine@student.fr', '$2y$10$z24JzBrGPBSTzUExFKYmEOd00u7Vn6tBQXG9xNI6wp35BnUaj2hHW', 1),
(18, 'Jackson', 'Faure', 'jackson.faure@student.fr', '$2y$10$i9zn5J1ONXyUWAzZR3LY..Q6q/OU2Ti/KbK0m6oEv9GMy7GbaafS.', 1),
(19, 'Grace', 'Faure', 'grace.faure@student.fr', '$2y$10$GxE02Hy1fo9wD6vKOpmwnupG1kY49MbPczrs357pcUNoku5/7xF3m', 1),
(20, 'David', 'Fournier', 'david.fournier@student.fr', '$2y$10$I8Fp6dL8gk8AajfsKWVIWu2FyiUHJp14LnGt57.0GcPiEVDbV5d2.', 1),
(21, 'Harper', 'Laurent', 'harper.laurent@student.fr', '$2y$10$FpdJkc2Xuh4RligURXATe.h.cRjkrNhVbjqULsz.Ezw.P96flCc1u', 1),
(22, 'Leo', 'Dumont', 'leo.dumont@student.fr', '$2y$10$su1.XkXekSf0VzRRza18NOldpycDIhxCOjDy.R8pFc6TPZkB1SzXm', 2),
(23, 'Aria', 'Lefort', 'aria.lefort@student.fr', '$2y$10$q5XXXrt8S3IUMmIuZmHPOeg4h41gtj8SLGWK7KCdMR7xfEZzb0OCe', 2),
(24, 'Logan', 'Petit', 'logan.petit@student.fr', '$2y$10$Gw5sbcavN0s7WgmPe6uOQOV.ZMSj2R7l9r.FqBknUTsvFJFXJFPH6', 2),
(25, 'Lily', 'Leclerc', 'lily.leclerc@student.fr', '$2y$10$2IaFxdyaUeA3kPWuaTdNVOGjw0b1kCY.DfFtrRCFVV17tELPxoNVO', 2),
(26, 'Caleb', 'Vasseur', 'caleb.vasseur@student.fr', '$2y$10$23V8InZIRP0o8rEhMH.fpe2LrE9RrdRjA33q9XG4ig0IK81fpHu.q', 2),
(27, 'Sofia', 'Giraud', 'sofia.giraud@student.fr', '$2y$10$ZK448cLtjlCgjOQEKnoclOrWici7GKFT9qkaczlI/tMn5U/eXiFci', 2),
(28, 'Daniel', 'Noel', 'daniel.noel@student.fr', '$2y$10$vM1Gr3bmVjSTi0SSotBXs.EMAkHOm6H4pDmfZGLsqoFEVqTWNK6AO', 2),
(29, 'Scarlett', 'Renaud', 'scarlett.renaud@student.fr', '$2y$10$mIbBRkU7CRNvyOjwmGSsluJDjvSWSRjttOEOyRihvg4ZELJudN1MS', 2),
(30, 'Henry', 'Vincent', 'henry.vincent@student.fr', '$2y$10$elrydHC5wGIvQq0kminHk.ONHcj6Z30b7apJAGCJpbSUjKn/3OTTK', 2),
(31, 'Zoey', 'Henry', 'zoey.henry@student.fr', '$2y$10$SxR83e1xsC.L8af719XFbu3Gp.PyTUi/1ujsxAJ1RiCw25mqoS2j6', 2),
(32, 'Nathan', 'Roy', 'nathan.roy@student.fr', '$2y$10$eu/UWUJr11xi.2QQYycQ1ePPZIdDq3/yMkbMnSFr5OZy3AiILsAsO', 2),
(33, 'Ellie', 'Lemoine', 'ellie.lemoine@student.fr', '$2y$10$9DPSxH3cUYKRNFxy/NKgIe/gSqM3vsadeccQIZYs0A59DHXT43Ewu', 2),
(34, 'Jack', 'Simon', 'jack.simon@student.fr', '$2y$10$fUfLaK0sttCv5yV/WSM3He1IlfCGcRiqILG/NQT695dwwZHMdM9eG', 2),
(35, 'Madison', 'Poirier', 'madison.poirier@student.fr', '$2y$10$JD7GbqLWNCA.S3XuPSEzq.r1kN53.6ipcfF3TcJUN/sSRBPwTQz4i', 2),
(36, 'Olivier', 'Fontaine', 'olivier.fontaine@student.fr', '$2y$10$8s1U.HawPAS0ldj2mffRDuTgAqmvi2Al33azqmYj7I/tUIapRKN4W', 2),
(37, 'Emily', 'Levesque', 'emily.levesque@student.fr', '$2y$10$xCNnC/F15X4zn5/8jDsrjeRe.Pwv7eyokU3ffm5vHwAmmuOozmDbG', 2),
(38, 'Samuel', 'Blanc', 'samuel.blanc@student.fr', '$2y$10$5tVbliL7ENv.KblE/kVnFOR3MhnlhuzCIGp4dnFsMzDYmOHcED2gi', 2),
(39, 'Abigail', 'Arnaud', 'abigail.arnaud@student.fr', '$2y$10$ROuLUvjOFY0g7PbCH5zpMe4VmUWSl91IltQH6NE1q7EWEQmxKciGi', 2),
(40, 'Maxime', 'Deschamps', 'maxime.deschamps@student.fr', '$2y$10$72Fm.3gdruYowq.4vnep7.sLzLfR4zoG8Fplv27gut1gbU1BXMaIK', 2),
(41, 'Stella', 'Gagne', 'stella.gagne@student.fr', '$2y$10$0B81j4ZKErWzmWY9tXL0G.IgI11j8.9bUVmYxuRGuY9YJEfLIKgmC', 2),
(42, 'Zachary', 'Brun', 'zachary.brun@student.fr', '$2y$10$0IHd28fVROGo54z69cKQOupK4ffH32z3c8/TLAGKia.YeiOvaIAju', 2),
(43, 'Addison', 'Lebrun', 'addison.lebrun@student.fr', '$2y$10$qqs0lVdIE.kuMEstEy4hb.JO7vCqOTcA/DTYQirMsRWmEhzlshfTS', 3),
(44, 'Eliot', 'Maillard', 'eliot.maillard@student.fr', '$2y$10$TmpfcZiNLGwgDAs7NAoSI.k5Xr2Tw/q1yLv2xedXz9Ha.7ulGhuY2', 3),
(45, 'Hannah', 'Beaulieu', 'hannah.beaulieu@student.fr', '$2y$10$PAxhqR87tGLZI70jodbST.d2JCuufz2hm6cGP5sjkNeGc4AIwDDma', 3),
(46, 'Victor', 'Picard', 'victor.picard@student.fr', '$2y$10$RsR5E52Y5Xqq8WISZXoXqupsGaTIF3dCrFmVWhjMSFqD1nUZL7Gd.', 3),
(47, 'Aurora', 'Boucher', 'aurora.boucher@student.fr', '$2y$10$P76DPiBogl0niKd6uNdj3uK3rtxJ.SW6xIOzRLlkxGlp6Z.RDrcOi', 3),
(48, 'Isaac', 'Roussel', 'isaac.roussel@student.fr', '$2y$10$y1XsPLrxfMwpiZ0EW/R7deJjq8STRS3eEm8nPzXcIccLJ/h9QZX6a', 3),
(49, 'Peneloppe', 'Marchand', 'peneloppe.marchand@student.fr', '$2y$10$MteLq8E7k9Bgsj2s5oy8su7tiXEf0pJGmsSn0uDum7gQntuJi//FW', 3),
(50, 'Nolan', 'Martel', 'nolan.martel@student.fr', '$2y$10$UBiRjcKLMDbbJwWy4PWmNeiaNBQsbUte4Q9Ea6OOJi7aLrxX9k.ha', 3),
(51, 'Victoria', 'Denis', 'victoria.denis@student.fr', '$2y$10$OtJ6QcLR5D9VACUvTnojIO.K3rt0sPbkEbaR..7cZOZO.8nrYcxsa', 3),
(52, 'Nicholas', 'Lefevre', 'nicholas.lefevre@student.fr', '$2y$10$OUVuQImbFMXZViLL1aAJ7e8q8NMuPzi2NYUOZ3CX3lzxe7R8/cyXS', 3),
(53, 'Ava', 'Gagnon', 'ava.gagnon@student.fr', '$2y$10$MhQcvdAc8VnTmeIjssGfz.FJsTQ2HfrSBDJsS337H5vMqTO0nScsi', 3),
(54, 'Lucas', 'Lambert', 'lucas.lambert@student.fr', '$2y$10$LqWOcjEnqwSlbdOJej153e0fD9OBQKVrBIL32JXQGPpLn5j2IxSkC', 3),
(55, 'Grace', 'Lefevre', 'grace.lefevre@student.fr', '$2y$10$yfqxU/a5q.Sx4xBDNpfKtOwpJ2LEjLvV1Fnsgy0ICodnFyrT1AqRm', 3),
(56, 'Alexander', 'Pellerin', 'alexander.pellerin@student.fr', '$2y$10$r78v3PBCACMFEAjgspb.1eJyW7qyZTrlZHBVgFd/Uq3u4CqmP0XQO', 3),
(57, 'Ella', 'Lambert', 'ella.lambert@student.fr', '$2y$10$Me0lDq097QR1O.hKHW4YruiPjnBwpUq/YIOqltrqXhyhLhjgZzja2', 3),
(58, 'Mason', 'Bouchard', 'mason.bouchard@student.fr', '$2y$10$h0oDvHL9y7kTuVHNZHfBme12sYrcw7/y99DEEmDts/CJmuLrI6rTK', 3),
(59, 'Natalie', 'Desjardins', 'natalie.desjardins@student.fr', '$2y$10$r7q8IT8RDITrYVMTFN5r/.fcmW1mAb1BdbvdHV4xk8FUvRTqI9FBa', 3),
(60, 'Julian', 'Lavoie', 'julian.lavoie@student.fr', '$2y$10$a4dtIyj34Ww4wW2V92UbnOwK3GcFj9VN/HxteXLUGQBrTIano3/Fa', 3),
(61, 'Scarlett', 'Raymond', 'scarlett.raymond@student.fr', '$2y$10$EQXPtSv69ksfDbyvi.G9EOhp7poCLGYQRDdPdwksjrAWc4oqWCMrC', 3),
(62, 'Linkin', 'Park', 'linkin.park@student.fr', '$2y$10$E4EWD8ntV87fU79UYAgSFeusM.uM0jRKVH25oFpBAZk0AK8jQ9FaO', 3),
(63, 'Jean', 'Bon', 'jean.bon@student.fr', '$2y$10$aUMSjy5QIsZuYTZPib7tYOR7SPkikYhBP.RDn3B29LpBf09D6mKF6', 3);

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
