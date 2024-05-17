-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : ven. 14 jan. 2022 à 09:52
-- Version du serveur :  10.5.13-MariaDB
-- Version de PHP : 7.4.26

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddexe_01`
--
CREATE DATABASE IF NOT EXISTS `bddexe_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bddexe_01`;

-- --------------------------------------------------------

--
-- Structure de la table `categ`
--

DROP TABLE IF EXISTS `categ`;
CREATE TABLE IF NOT EXISTS `categ` (
  `idcateg` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `desc` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`idcateg`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categ`
--

INSERT INTO `categ` (`idcateg`, `name`, `desc`) VALUES
(1, 'International', 'L\'adjectif international décrit les rapports existants entre plusieurs nations.'),
(2, 'France', 'Fruit d\'une histoire politique longue et mouvementée, la France est une république constitutionnelle unitaire ayant un régime semi-présidentiel. '),
(3, 'Culture', 'En philosophie, le mot culture désigne ce qui est différent de la nature, c\'est-à-dire ce qui est de l\'ordre de l\'acquis et non de l\'inné.'),
(4, 'Economie', 'L\'économie est une discipline qui étudie l\'économie en tant qu\'activité humaine qui consiste en la production, la distribution, l\'échange et la consommation de biens et de services.'),
(5, 'Sport', 'Le sport est un ensemble d\'exercices physiques.');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `idnews` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `publication` timestamp NULL DEFAULT current_timestamp(),
  `visible` tinyint(3) UNSIGNED DEFAULT 0,
  `user_iduser` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idnews`),
  KEY `fk_news_user1_idx` (`user_iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`idnews`, `title`, `content`, `publication`, `visible`, `user_iduser`) VALUES
(1, 'Clément Cogitore: Raconter une histoire, c’est prendre le pouvoir', 'Rencontre avec Clément Cogitore, jeune star française de l’art contemporain, cinéaste et vidéaste, nommé pour le prix Marcel-Duchamp 2018, qui travaille à nous raconter des histoires : où en est l’art du récit aujourd’hui ? « On s’est dit, en histoire de l’art, comme en littérature, que puisque c’était la fin des grands récits, on pouvait s’en débarrasser : mais non. »\r\n\r\nClément Cogitore est un passeur, son art est celui de passer les frontières. Il travaille au croisement des arts plastiques et du cinéma : son dernier film, Braguino (2017), est sorti en salles en même temps qu’il a donné lieu à une installation dans un musée. Le film, qui évoque la vie d’une famille installée en pleine taïga sibérienne, fait se rencontrer des images du Far East avec une mythologie du Far West. \r\n\r\nPas de frontière entre les hommes, entre les histoires, pas de solution de continuité entre fiction et documentaire.', '2018-03-21 09:35:14', 1, 1),
(2, 'ante bibendum ullamcorper.', 'cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat', '2021-11-04 11:06:14', 0, 11),
(3, 'non, sollicitudin a,', 'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', '2020-05-25 20:44:52', 1, 22),
(4, 'Nulla eget', 'nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo', '2020-06-21 10:54:59', 1, 8),
(5, 'eget ipsum. Suspendisse', 'Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum', '2020-08-10 19:46:20', 0, 13),
(6, 'vel, mauris. Integer sem', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum', '2021-12-22 22:09:04', 0, 2),
(7, 'non, cursus non, egestas', 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', '2019-11-30 03:24:27', 0, 33),
(8, 'varius. Nam porttitor scelerisque', 'dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', '2020-12-01 19:07:36', 1, 14),
(9, 'odio a purus.', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce', '2021-02-20 18:39:54', 0, 9),
(10, 'ultricies ligula. Nullam', 'lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci', '2020-05-24 14:37:48', 0, 16),
(11, 'sed, facilisis', 'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras', '2020-12-11 03:21:29', 1, 28),
(12, 'lacus, varius', 'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', '2019-11-17 19:09:17', 0, 33),
(13, 'orci lacus vestibulum', 'Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper', '2020-08-10 18:22:29', 0, 16),
(14, 'lobortis tellus justo', 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit', '2020-11-08 13:01:20', 1, 12),
(15, 'in faucibus', 'Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer', '2020-07-20 02:58:29', 1, 8),
(16, 'metus vitae velit', 'aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel', '2020-10-26 07:00:49', 0, 9),
(17, 'tempor lorem, eget', 'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus', '2021-05-16 03:03:14', 0, 33),
(18, 'Maecenas iaculis aliquet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', '2021-11-02 23:16:48', 1, 12),
(19, 'Duis mi enim,', 'Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', '2021-09-14 10:38:36', 1, 28),
(20, 'pretium et, rutrum', 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus', '2021-08-31 02:37:26', 1, 35),
(21, 'semper egestas, urna', 'turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae', '2020-02-10 10:25:14', 1, 4),
(22, 'malesuada vel,', 'amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus', '2020-01-05 15:45:59', 0, 27),
(23, 'elementum purus, accumsan', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', '2019-11-05 00:05:20', 0, 16),
(24, 'Curabitur egestas nunc', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante', '2020-05-23 13:45:48', 0, 18),
(25, 'hendrerit. Donec porttitor', 'sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean', '2021-11-09 23:43:13', 1, 15),
(26, 'venenatis vel, faucibus', 'sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis', '2021-11-28 23:21:03', 0, 17),
(27, 'gravida sit amet, dapibus', 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', '2020-07-13 11:26:06', 1, 6),
(28, 'lorem ut aliquam', 'iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', '2021-06-24 02:29:54', 0, 31),
(29, 'lacinia. Sed congue, elit', 'ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.', '2021-10-13 13:50:29', 1, 12),
(30, 'amet, consectetuer adipiscing', 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum,', '2020-06-07 00:57:11', 1, 28),
(31, 'In lorem.', 'Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,', '2021-02-05 22:26:50', 0, 24),
(32, 'pede nec', 'mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere', '2020-06-06 02:17:47', 1, 18),
(33, 'Donec est mauris,', 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna.', '2021-12-25 22:26:39', 1, 26),
(34, 'Proin velit. Sed', 'imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non', '2020-02-15 15:16:56', 0, 34),
(35, 'orci, consectetuer euismod', 'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.', '2021-10-04 17:47:55', 0, 8),
(36, 'Phasellus fermentum convallis', 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', '2021-11-24 06:42:06', 0, 22),
(37, 'dictum ultricies', 'adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod', '2019-12-16 17:58:13', 1, 23),
(38, 'Morbi neque tellus, imperdiet', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum', '2021-12-29 02:47:31', 0, 25),
(39, 'Aliquam ultrices', 'Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', '2021-02-09 06:21:15', 1, 14),
(40, 'neque. Nullam nisl.', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', '2021-07-30 00:27:06', 0, 7),
(41, 'a mi fringilla', 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis', '2021-03-27 09:40:35', 1, 26),
(42, 'vulputate dui,', 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,', '2020-10-11 22:43:16', 1, 4),
(43, 'auctor velit. Aliquam nisl.', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh.', '2020-05-07 21:24:02', 0, 25),
(44, 'Nulla facilisi. Sed', 'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed', '2021-08-02 14:45:27', 1, 5),
(45, 'leo. Cras vehicula', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt', '2019-12-12 12:27:34', 1, 23),
(46, 'semper et,', 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', '2021-05-13 19:21:19', 1, 13),
(47, 'massa. Integer', 'dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', '2020-10-29 23:37:06', 1, 5),
(48, 'sem semper erat,', 'molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut', '2020-10-19 22:10:49', 1, 23),
(49, 'dictum cursus. Nunc mauris', 'lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,', '2020-04-21 21:58:30', 1, 1),
(50, 'Praesent eu', 'mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', '2020-07-09 10:17:31', 0, 8),
(51, 'vitae nibh. Donec est', 'ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis,', '2022-01-12 16:26:32', 1, 25),
(52, 'arcu. Aliquam ultrices', 'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus', '2020-12-05 20:30:07', 0, 2),
(53, 'senectus et', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', '2020-08-29 20:30:24', 1, 16),
(54, 'purus, accumsan interdum libero', 'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu.', '2021-05-26 08:36:59', 0, 9),
(55, 'pellentesque a, facilisis', 'eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue', '2021-07-21 08:23:21', 1, 25),
(56, 'risus. Donec nibh enim,', 'eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam', '2021-08-03 08:18:40', 0, 7),
(57, 'Vivamus rhoncus. Donec', 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel', '2021-03-18 15:55:51', 0, 28),
(58, 'nec mauris blandit', 'sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem', '2020-10-15 11:48:53', 1, 19),
(59, 'eget laoreet posuere,', 'Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.', '2021-12-21 16:40:51', 0, 18),
(60, 'enim. Sed nulla', 'auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,', '2020-09-27 01:15:37', 0, 12),
(61, 'mi pede,', 'nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec', '2020-10-26 12:07:09', 1, 27),
(62, 'mollis nec, cursus a,', 'magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', '2021-10-24 20:49:09', 0, 21),
(63, 'lacus pede', 'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet', '2021-05-04 02:11:35', 0, 28),
(64, 'risus, at', 'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', '2019-11-09 11:04:53', 1, 32),
(65, 'tincidunt orci quis lectus.', 'orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', '2019-12-14 08:57:09', 0, 1),
(66, 'sem elit,', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', '2020-08-23 02:58:50', 0, 12),
(67, 'accumsan neque et', 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,', '2020-08-06 13:59:58', 0, 10),
(68, 'faucibus lectus, a', 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie', '2021-07-10 00:50:50', 1, 11),
(69, 'ornare, elit elit fermentum', 'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', '2021-08-25 08:57:31', 0, 30),
(70, 'vitae mauris sit', 'sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a,', '2021-06-18 09:26:35', 0, 35),
(71, 'aliquet, sem ut', 'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis', '2020-10-25 05:14:27', 1, 17),
(72, 'Pellentesque ultricies dignissim', 'aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', '2020-09-13 16:36:35', 0, 12),
(73, 'arcu vel quam dignissim', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris', '2021-03-02 07:23:11', 0, 18),
(74, 'sem semper erat,', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', '2020-06-04 14:54:10', 0, 22),
(75, 'amet, faucibus', 'Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede,', '2021-10-22 00:30:07', 0, 27),
(76, 'mollis. Integer tincidunt aliquam', 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', '2021-04-28 17:12:37', 1, 23),
(77, 'auctor, nunc nulla', 'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', '2021-10-21 14:14:46', 1, 27),
(78, 'tellus. Nunc lectus pede,', 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce', '2021-11-25 16:43:19', 1, 14),
(79, 'ridiculus mus. Proin', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla', '2021-12-31 22:31:22', 0, 34),
(80, 'Etiam gravida molestie', 'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', '2022-01-04 10:35:26', 1, 3),
(81, 'a, magna. Lorem', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', '2021-10-17 19:29:06', 1, 19),
(82, 'enim commodo hendrerit.', 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.', '2021-10-18 21:31:44', 1, 4),
(83, 'habitant morbi', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', '2021-11-01 02:22:01', 0, 29),
(84, 'mauris erat eget', 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.', '2021-07-27 22:03:20', 0, 15),
(85, 'Nulla eu neque', 'eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', '2020-02-02 22:34:38', 1, 11),
(86, 'eget varius ultrices,', 'at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed', '2020-03-17 01:51:45', 0, 30),
(87, 'ipsum. Phasellus vitae', 'amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed', '2021-10-02 15:16:56', 0, 35),
(88, 'interdum enim non', 'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', '2021-03-31 22:11:07', 0, 34),
(89, 'semper cursus. Integer mollis.', 'orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis', '2021-02-16 13:30:48', 0, 5),
(90, 'Curae Phasellus', 'non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit', '2020-09-06 05:45:32', 1, 12),
(91, 'placerat eget, venenatis', 'In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', '2021-12-08 00:54:49', 0, 26),
(92, 'Curabitur massa. Vestibulum accumsan', 'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla', '2020-05-13 04:59:02', 0, 20),
(93, 'metus. Vivamus euismod', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', '2020-12-15 10:48:11', 0, 12),
(94, 'risus. Nunc ac sem', 'at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante', '2021-03-01 17:59:03', 1, 35),
(95, 'nisl elementum', 'Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque', '2021-01-22 16:02:58', 1, 8),
(96, 'nisi magna sed', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim.', '2021-11-21 17:20:40', 1, 6),
(97, 'tellus id', 'mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu', '2020-06-27 19:45:13', 1, 10),
(98, 'aliquet, metus urna', 'ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at', '2021-12-08 05:25:55', 1, 31),
(99, 'in aliquet', 'neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor', '2020-11-26 06:48:24', 0, 27),
(100, 'Duis mi enim, condimentum', 'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla', '2021-09-20 05:30:02', 0, 6),
(101, 'Donec est', 'facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa', '2021-06-18 03:17:44', 1, 22),
(102, 'orci. Ut semper', 'risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', '2021-01-30 19:16:08', 0, 24),
(103, 'Fusce fermentum fermentum', 'Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', '2021-06-06 04:07:05', 1, 27),
(104, 'ligula eu', 'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse', '2021-01-13 13:10:38', 1, 23),
(105, 'fermentum vel, mauris.', 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum', '2021-02-04 23:05:45', 0, 32),
(106, 'nulla. Integer urna.', 'egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor', '2021-01-06 12:09:30', 1, 27),
(107, 'velit eget laoreet posuere,', 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', '2020-04-09 13:32:24', 0, 30),
(108, 'Donec tempor, est', 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.', '2021-08-08 15:24:16', 0, 30),
(109, 'cursus in, hendrerit consectetuer,', 'mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus', '2021-09-03 10:55:03', 1, 35),
(110, 'aliquet, metus urna convallis', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', '2019-12-23 13:23:41', 1, 33),
(111, 'purus, in molestie', 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', '2021-05-08 17:11:34', 1, 28),
(112, 'non magna. Nam', 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci.', '2021-09-17 11:32:27', 1, 18),
(113, 'scelerisque neque sed', 'lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at,', '2021-08-05 12:02:37', 0, 21),
(114, 'nulla. In tincidunt congue', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', '2021-09-26 21:22:11', 1, 5),
(115, 'odio sagittis', 'purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget', '2020-12-29 08:56:07', 1, 20),
(116, 'vulputate, risus', 'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', '2020-05-11 18:39:07', 1, 26),
(117, 'Donec sollicitudin adipiscing ligula.', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', '2020-12-21 01:12:42', 0, 11),
(118, 'Curabitur egestas nunc', 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec', '2021-09-17 22:48:43', 1, 17),
(119, 'elit. Nulla facilisi. Sed', 'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora', '2021-09-28 06:01:58', 0, 28),
(120, 'vulputate velit eu', 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', '2020-03-16 22:21:43', 0, 5),
(121, 'sit amet ornare lectus', 'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2020-12-27 20:00:56', 0, 10),
(122, 'magna. Duis', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', '2020-03-28 17:16:44', 0, 21),
(123, 'turpis. Nulla aliquet. Proin', 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit', '2020-12-17 09:28:13', 1, 6),
(124, 'diam eu dolor', 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus', '2021-01-09 04:39:57', 0, 23),
(125, 'ipsum. Suspendisse non', 'enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit', '2021-01-05 20:43:00', 1, 14),
(126, 'scelerisque neque sed', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida', '2021-05-23 14:27:15', 0, 15),
(127, 'dictum ultricies', 'eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis', '2019-11-17 10:51:56', 0, 17),
(128, 'mauris ipsum porta', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod', '2020-09-10 20:52:44', 0, 32),
(129, 'varius et, euismod', 'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non', '2020-10-18 23:33:38', 1, 11),
(130, 'a mi fringilla mi', 'sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', '2021-02-04 14:16:23', 1, 31),
(131, 'fermentum arcu. Vestibulum ante', 'molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla', '2021-12-03 14:43:47', 1, 7),
(132, 'lacinia. Sed', 'massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia', '2019-12-30 08:19:48', 0, 10),
(133, 'nonummy ultricies', 'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique', '2021-09-28 11:08:53', 1, 2),
(134, 'sed dolor.', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', '2022-01-09 16:29:46', 0, 2),
(135, 'lorem, vehicula', 'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus', '2021-12-13 18:22:37', 1, 28),
(136, 'non ante bibendum', 'Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque', '2021-05-17 06:35:10', 0, 4),
(137, 'Mauris vestibulum,', 'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a', '2020-11-30 13:52:24', 0, 10),
(138, 'et, eros. Proin', 'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.', '2020-08-01 11:16:10', 0, 7),
(139, 'sagittis semper. Nam', 'elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales', '2021-08-20 05:54:44', 0, 11),
(140, 'pellentesque, tellus sem mollis', 'rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget', '2019-12-23 22:49:04', 1, 22),
(141, 'condimentum eget,', 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam', '2021-08-24 09:40:13', 0, 11),
(142, 'dolor. Fusce', 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', '2020-11-26 10:11:42', 1, 33),
(143, 'ut, pellentesque eget,', 'Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus.', '2021-06-20 15:59:00', 1, 14),
(144, 'egestas ligula. Nullam feugiat', 'Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui.', '2020-10-22 11:27:01', 1, 21),
(145, 'Vivamus euismod urna.', 'rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.', '2021-07-01 09:44:04', 0, 26),
(146, 'metus. Vivamus euismod', 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', '2021-01-26 03:12:28', 0, 12),
(147, 'Donec consectetuer mauris id', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non,', '2019-11-10 21:15:47', 1, 6),
(148, 'eget, venenatis', 'erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque', '2019-11-25 16:52:55', 1, 13),
(149, 'risus. Quisque libero lacus,', 'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus', '2020-02-03 17:25:47', 0, 4),
(150, 'diam luctus lobortis.', 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.', '2020-04-04 18:57:42', 0, 11),
(151, 'ad litora', 'arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.', '2021-11-08 10:05:26', 1, 26);

-- --------------------------------------------------------

--
-- Structure de la table `news_has_categ`
--

DROP TABLE IF EXISTS `news_has_categ`;
CREATE TABLE IF NOT EXISTS `news_has_categ` (
  `news_idnews` int(10) UNSIGNED NOT NULL,
  `categ_idcateg` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`news_idnews`,`categ_idcateg`),
  KEY `fk_news_has_categ_categ1_idx` (`categ_idcateg`),
  KEY `fk_news_has_categ_news1_idx` (`news_idnews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news_has_categ`
--

INSERT INTO `news_has_categ` (`news_idnews`, `categ_idcateg`) VALUES
(3, 1),
(3, 2),
(4, 3),
(7, 1),
(7, 3),
(9, 3),
(9, 5),
(11, 4),
(13, 4),
(15, 2),
(15, 5),
(18, 2),
(20, 2),
(22, 2),
(26, 5),
(29, 4),
(34, 5),
(36, 3),
(36, 5),
(37, 5),
(39, 3),
(40, 2),
(43, 1),
(45, 2),
(48, 2),
(49, 3),
(51, 5),
(53, 3),
(55, 2),
(55, 4),
(57, 2),
(59, 4),
(60, 3),
(60, 4),
(63, 3),
(65, 2),
(66, 3),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(72, 2),
(73, 5),
(74, 2),
(81, 5),
(84, 3),
(84, 5),
(85, 3),
(85, 5),
(89, 1),
(89, 3),
(89, 5),
(94, 4),
(95, 2),
(97, 4),
(99, 2),
(99, 3),
(101, 2),
(103, 2),
(103, 4),
(104, 2),
(104, 4),
(107, 4),
(108, 2),
(108, 4),
(108, 5),
(109, 1),
(109, 5),
(110, 3),
(111, 3),
(112, 2),
(113, 2),
(113, 3),
(114, 1),
(114, 4),
(115, 3),
(120, 2),
(121, 4),
(124, 2),
(127, 5),
(129, 3),
(131, 4),
(133, 2),
(133, 4),
(134, 2),
(137, 4),
(138, 5),
(140, 2),
(140, 3),
(143, 2),
(144, 2),
(145, 5),
(146, 1),
(147, 2),
(148, 4),
(150, 1),
(150, 3);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `idpermission` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `level` smallint(5) UNSIGNED NOT NULL DEFAULT 3 COMMENT '0 => admin\n1 => moderator\n2 => editor\n3 => user',
  PRIMARY KEY (`idpermission`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`idpermission`, `name`, `level`) VALUES
(1, 'Admin', 0),
(2, 'Moderator', 1),
(3, 'Editor', 2),
(4, 'User', 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(60) NOT NULL,
  `pwd` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permission_idpermission` smallint(5) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `fk_user_permission_idx` (`permission_idpermission`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `login`, `pwd`, `name`, `permission_idpermission`) VALUES
(1, 'admin', 'admin', 'Pitz Michaël', 1),
(2, 'modo', 'modo', 'Sandron Pierre', 2),
(3, 'edit', 'edit', 'VandeTruc Benjamin', 3),
(4, 'user1', 'user1', 'Ben Ali Hamza', 4),
(5, 'user2', 'user2', 'Boumezough Nabil', 4),
(6, 'Thornton', 'VSU44ISW5DV', 'Lillith Lott', 3),
(7, 'Lindsey', 'NGF17JKD6EC', 'Hadassah Trujillo', 3),
(8, 'Byrd', 'QTP25RQU3OU', 'Katell Armstrong', 3),
(9, 'Griffin', 'MHT81YFU9IW', 'Acton Randolph', 1),
(10, 'Hinton', 'SKZ37VDG2ME', 'Deborah Silva', 4),
(11, 'Ashley', 'FXP21NXG6IT', 'Tucker Sims', 2),
(12, 'Fry', 'PIO32DFT5IE', 'Ali Hammond', 2),
(13, 'Monroe', 'ERO24NTH0AY', 'Veda Soto', 2),
(14, 'Espinoza2', 'FED33FPB2WF', 'Kim Brock', 3),
(15, 'Finch', 'JFH49QUK8KF', 'Nyssa Robinson', 4),
(16, 'Simmons', 'FWA16CJV8FT', 'Jordan Morrison', 3),
(17, 'Morgan', 'OYM36CLY6LS', 'Callum Cantrell', 1),
(18, 'Marquez', 'WLK84QSR2DZ', 'Ian Welch', 1),
(19, 'Baldwin', 'UKC84BXQ6MD', 'Nichole Kinney', 4),
(20, 'Reeves', 'PME83TWV4ZO', 'Aquila Pope', 4),
(21, 'Bridges', 'HDL67AVQ9PB', 'Declan Barnes', 3),
(22, 'Winters', 'GWQ32DPX5UL', 'Macon Molina', 2),
(23, 'Marshall', 'YUN13ARC5PR', 'Dorothy Moreno', 4),
(24, 'Espinoza', 'SLC20YTH6NP', 'Fay Hart', 2),
(25, 'Jimenez', 'BRU22HCO0FK', 'Kristen Skinner', 1),
(26, 'Chambers', 'HIV82XDX1RY', 'Caesar Castillo', 4),
(27, 'Petersen', 'PEZ63QGB8ER', 'Gemma Lawson', 3),
(28, 'Campos', 'MEH46GSZ4MX', 'Brent Zamora', 4),
(29, 'Kent', 'RTT81DTE3QD', 'Jordan Collier', 4),
(30, 'Levy', 'BLT79QXM3XF', 'Cara Rocha', 2),
(31, 'Galloway', 'ILQ32KHL5XH', 'Zachary Kelly', 1),
(32, 'Wiley', 'WEC39UNQ6NB', 'Xanthus Jacobs', 1),
(33, 'Allison', 'TNJ33MNC2RC', 'Ulric Craig', 2),
(34, 'Garcia', 'VBX81EXF1RZ', 'Philip Robertson', 3),
(35, 'Kelly', 'NEN68LYF7WF', 'Ryder Kirk', 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Contraintes pour la table `news_has_categ`
--
ALTER TABLE `news_has_categ`
  ADD CONSTRAINT `fk_idcateg` FOREIGN KEY (`categ_idcateg`) REFERENCES `categ` (`idcateg`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_idnews` FOREIGN KEY (`news_idnews`) REFERENCES `news` (`idnews`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission_idpermission`) REFERENCES `permission` (`idpermission`) ON DELETE SET NULL ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
