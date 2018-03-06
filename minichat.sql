-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Février 2018 à 15:14
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `minichat`
--

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

CREATE TABLE `minichat` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_commentaire` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `minichat`
--

INSERT INTO `minichat` (`id`, `pseudo`, `message`, `date_commentaire`) VALUES
(1, 'jean', 'sALUT !', '2018-02-12 16:36:54'),
(2, 'Pierre', 'La forme ? ', '2018-02-12 16:36:54'),
(3, 'Nicole', 'Un peu dur ce TP !', '2018-02-12 16:36:54'),
(10, 'jean', 'Oui mais il faut continuer ! On va trouver !', '2018-02-12 16:36:54'),
(9, 'Pierre', 'Oui j\'ai du mal aussi a afficher les dix derniers messages !', '2018-02-12 16:36:54'),
(11, 'francine', 'Réussi ! on passe au mini-chat amélioré ! Voyons la date et l\'heure !', '2018-02-12 16:38:06'),
(12, 'Pierre', 'Bug ? ', '2018-02-12 16:39:11'),
(13, 'francine', 'date et heure', '2018-02-12 16:39:27'),
(14, 'francine', 'Le contenue du message s\'affiche bien dans phpmyadmin mais pas ici... Trop de caractère ? ', '2018-02-12 16:40:15'),
(15, 'Pierre', 'Visiblement oui ... textarea ? ', '2018-02-12 16:40:32'),
(16, 'francine', 'Essayons !', '2018-02-12 16:40:48'),
(17, 'francine', 'essayons blablablablablablablablablablablablablablabla\r\nalllooo\r\n', '2018-02-12 16:50:34'),
(18, 'Pierre', 'Bon ! déja le text area fonctionne même si visuellement c\'est pas térrible !', '2018-02-12 16:51:17'),
(19, 'francine', 'Pierre tu as parlé trop vite ^^', '2018-02-12 16:51:42'),
(20, 'francine', 'Pierre tu as parlé trop vite\r\nPierre tu as parlé trop vite', '2018-02-12 16:52:16'),
(21, 'Pierre', 'Bug ? ', '2018-02-12 16:52:28'),
(22, 'francine', 'oui ^^', '2018-02-12 16:52:46'),
(23, 'Pierre', 'Bon l\'heure déjà c\'est bon...', '2018-02-12 17:23:15'),
(24, 'francine', 'Non certain message ne s\'affiche pas...', '2018-02-12 17:23:45'),
(25, 'Jean', 'Alors les cookies ? Testons ...', '2018-02-12 17:59:19'),
(26, 'Jean', 'Je pense que quelque chose cloche avec les cookies', '2018-02-12 18:04:05'),
(27, 'Pierre', 'Succès !!!!', '2018-02-12 18:04:50'),
(28, 'Pierre', 'Succès !\r\n', '2018-02-12 18:05:00'),
(29, 'Pierre', 'Succès !', '2018-02-12 18:05:10'),
(30, 'Pierre', 'succès', '2018-02-12 18:05:18'),
(31, 'Pierre', 'succes', '2018-02-12 18:05:25'),
(32, 'Pierre', 'bug avec les accents ?', '2018-02-12 18:05:35'),
(33, 'Pierre', 'énorme', '2018-02-12 18:05:50'),
(34, 'Pierre', 'enorme', '2018-02-12 18:05:54'),
(35, 'Pierre', 'hummm... ca devait etre ca le bug de message ...', '2018-02-12 18:06:14'),
(36, 'Pierre', 'Une histoire de chartset ? ', '2018-02-12 18:06:31'),
(37, 'Pierre', '<strong> Securite ? </strong>', '2018-02-12 18:32:32'),
(38, 'Jean', 'Yop', '2018-02-12 18:38:57'),
(39, 'Jean', 'Déjà', '2018-02-12 18:45:00'),
(40, 'Pierre', 'Mise en page', '2018-02-15 14:45:33'),
(41, 'Pierre', 'allo', '2018-02-15 14:49:48');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
