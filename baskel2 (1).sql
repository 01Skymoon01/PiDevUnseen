-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 01 mai 2020 à 06:07
-- Version du serveur :  5.7.28
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `baskel2`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `ref_c` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ref_c`),
  KEY `libelle` (`libelle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`ref_c`, `libelle`) VALUES
(584346, 'categorie2'),
(256256, 'koko'),
(148965, 'Vélo'),
(587744, 'Vêtements');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Sante');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TotalPrix` double NOT NULL,
  `nbrProduit` int(11) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  `etat_liv` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `id_client`, `date`, `TotalPrix`, `nbrProduit`, `etat`, `etat_liv`) VALUES
(33, 14, '2020-03-31 00:00:00', 400, 1, 1, 0),
(48, 5, '2020-04-08 09:22:47', 2000, 2, 1, 0),
(49, 5, '2020-04-08 09:49:50', 900, 3, 1, 0),
(50, 5, '2020-04-08 10:39:22', 900, 3, 1, 0),
(51, 5, '2020-04-15 02:51:25', 900, 3, 1, 0),
(52, 9, '2020-04-15 05:35:37', 5.9484375, 1, 1, 0),
(53, 9, '2020-04-15 05:48:21', 100005.9484375, 2, 0, 0),
(54, 9, '2020-04-15 05:58:34', 100000.40625, 2, 0, 0),
(55, 5, '2020-04-15 06:59:10', 900, 3, 1, 0),
(58, 9, '2020-04-15 08:52:07', 6.3546875, 2, 0, 0),
(60, 5, '2020-04-15 09:57:17', 900, 3, 0, 0),
(62, 5, '2020-04-15 10:27:18', 500, 2, 0, 0),
(63, 9, '2020-04-16 19:46:50', 179, 2, 0, 0),
(64, 9, '2020-04-16 19:50:05', 0, 0, 0, 0),
(65, 5, '2020-04-20 02:31:08', 48, 2, 0, 0),
(66, 5, '2020-04-20 02:53:17', 48, 2, 0, 0),
(67, 5, '2020-04-20 04:26:22', 48, 2, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_event` int(11) DEFAULT NULL,
  `id_partenaire` int(11) DEFAULT NULL,
  `Pack` double DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_60349993D52B4B97` (`id_event`),
  KEY `IDX_60349993977523A4` (`id_partenaire`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`id`, `id_event`, `id_partenaire`, `Pack`, `description`) VALUES
(1, 2, 1, NULL, 'kljlk'),
(2, 3, 2, NULL, 'aaa'),
(3, 2, 3, 3200, 'nour'),
(4, 6, 2, 12, 'nour');

-- --------------------------------------------------------

--
-- Structure de la table `details_commande`
--

DROP TABLE IF EXISTS `details_commande`;
CREATE TABLE IF NOT EXISTS `details_commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomProduit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idProduit` int(11) NOT NULL,
  `qteProduit` int(11) NOT NULL,
  `PrixPrduit` double NOT NULL,
  `idCommande` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4BCD5F63D498C26` (`idCommande`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `details_commande`
--

INSERT INTO `details_commande` (`id`, `nomProduit`, `idProduit`, `qteProduit`, `PrixPrduit`, `idCommande`) VALUES
(7, 'baskla vert', 233, 1, 400, 33),
(26, 'Baskla 3', 200589, 5, 400, 49),
(27, 'Baskla', 20054, 5, 200, 49),
(28, 'Baskla 2', 20050, 3, 300, 49),
(29, 'Baskla 3', 200589, 5, 400, 50),
(30, 'Baskla', 20054, 5, 200, 50),
(31, 'Baskla 2', 20050, 3, 300, 50),
(32, 'Baskla 3', 200589, 5, 400, 51),
(33, 'Baskla', 20054, 5, 200, 51),
(34, 'Baskla 2', 20050, 3, 300, 51),
(35, 'oplpmùm', 555555, 1, 5.9484375, 52),
(36, 'oplpmùm', 555555, 1, 5.9484375, 53),
(37, 'nour', 666666, 1, 100000, 53),
(38, 'Casque', 123456, 1, 0.40625, 54),
(39, 'nour', 666666, 1, 100000, 54),
(40, 'Baskla 3', 200589, 3, 400, 55),
(41, 'Baskla', 20054, 3, 200, 55),
(42, 'Baskla 2', 20050, 3, 300, 55),
(48, 'Casque', 123456, 1, 0.40625, 58),
(49, 'oplpmùm', 555555, 1, 5.9484375, 58),
(51, 'Baskla 3', 200589, 3, 400, 60),
(52, 'Baskla', 20054, 3, 200, 60),
(53, 'Baskla 2', 20050, 4, 300, 60),
(55, 'Baskla', 20054, 5, 200, 62),
(56, 'Baskla 2', 20050, 3, 300, 62),
(57, 'veloo', 266266, 1, 23, 63),
(58, 'velo', 299299, 3, 52, 63),
(59, 'basklea', 265268, 1, 25, 65),
(60, 'veloo', 266266, 1, 23, 65),
(61, 'basklea', 265268, 1, 25, 66),
(62, 'veloo', 266266, 1, 23, 66),
(63, 'basklea', 265268, 2, 25, 67),
(64, 'veloo', 266266, 3, 23, 67);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_participants` int(11) DEFAULT NULL,
  `responsable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whyattend` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `Date`, `Nom`, `Description`, `nb_participants`, `responsable`, `whyattend`, `image`) VALUES
(2, '2020-02-23', 'test2', 'mmm', 10, 'gonklovox@gmail.com', 'its great', '7ec191e10f790863289c5b2483eca94d.jpeg'),
(3, '2022-04-30', 'test', 'mmmbb', 51, 'gonklovox@gmail.com', 'its great', 'bc0ed5ad46e7eb7a9bbc1f6eb7d2524a.jpeg'),
(5, '2022-04-23', 'nizar', 'nizar', 25, 'nour.khedher@esprit.tn', 'nour', 'on hold'),
(6, '2021-04-17', 'nour', 'nourr', 25, 'nour.khedher@esprit.tn', 'nour', 'on hold'),
(7, '2021-05-15', 'nizar', 'nizar', 25, 'nour.khedher@esprit.tn', 'nour', 'on hold');

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateLivraison` datetime DEFAULT NULL,
  `codeConf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idLivreur` int(11) DEFAULT NULL,
  `idCommande` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A60C9F1FFBC3259F` (`idLivreur`),
  KEY `IDX_A60C9F1F3D498C26` (`idCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
CREATE TABLE IF NOT EXISTS `livreur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateNaiss` date NOT NULL,
  `solde` int(11) NOT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_username` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UNIQ_EB7A4E6DA885EAE2` (`id_username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`id`, `nom`, `prenom`, `dateNaiss`, `solde`, `etat`, `id_username`) VALUES
(26, 'akhane', 'akkhanee', '2020-04-02', 0, 'en attente', 2),
(28, 'nour', 'nourr', '2020-04-08', 0, 'en attente', 2);

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20200218213050'),
('20200218213846'),
('20200218215314');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_parameters` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `notification_date` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `icon`, `route`, `route_parameters`, `notification_date`, `seen`) VALUES
(1, 'nour', 'bonjour', NULL, 'forum_view_single', 'a:1:{s:2:\"id\";O:29:\"forumBundle\\Entity\\Postsforum\":8:{s:33:\"\0forumBundle\\Entity\\Postsforum\0id\";i:2;s:38:\"\0forumBundle\\Entity\\Postsforum\0subject\";s:7:\"bonjour\";s:42:\"\0forumBundle\\Entity\\Postsforum\0description\";s:13:\"mlkamlakmalka\";s:41:\"\0forumBundle\\Entity\\Postsforum\0posteddate\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2020-02-26 09:59:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:37:\"\0forumBundle\\Entity\\Postsforum\0iduser\";C:21:\"AppBundle\\Entity\\User\":198:{a:8:{i:0;s:60:\"$2y$13$GrFiPpxIfR4xI6dv2NYzL.ogihFG.vttiD83A3U.IxdgaLj7hdihe\";i:1;N;i:2;s:4:\"nour\";i:3;s:4:\"nour\";i:4;b:1;i:5;i:9;i:6;s:22:\"nour.khedher@esprit.tn\";i:7;s:22:\"nour.khedher@esprit.tn\";}}s:41:\"\0forumBundle\\Entity\\Postsforum\0categoryid\";O:42:\"Proxies\\__CG__\\forumBundle\\Entity\\Category\":3:{s:17:\"__isInitialized__\";b:0;s:31:\"\0forumBundle\\Entity\\Category\0id\";i:3;s:33:\"\0forumBundle\\Entity\\Category\0name\";N;}s:39:\"\0forumBundle\\Entity\\Postsforum\0comments\";O:33:\"Doctrine\\ORM\\PersistentCollection\":2:{s:13:\"\0*\0collection\";O:43:\"Doctrine\\Common\\Collections\\ArrayCollection\":1:{s:53:\"\0Doctrine\\Common\\Collections\\ArrayCollection\0elements\";a:0:{}}s:14:\"\0*\0initialized\";b:0;}s:36:\"\0forumBundle\\Entity\\Postsforum\0views\";i:2;}}', '2020-02-26 10:16:40', 0),
(2, 'nour', 'bonjour', NULL, 'forum_view_single', 'a:1:{s:2:\"id\";O:29:\"forumBundle\\Entity\\Postsforum\":8:{s:33:\"\0forumBundle\\Entity\\Postsforum\0id\";i:2;s:38:\"\0forumBundle\\Entity\\Postsforum\0subject\";s:7:\"bonjour\";s:42:\"\0forumBundle\\Entity\\Postsforum\0description\";s:13:\"mlkamlakmalka\";s:41:\"\0forumBundle\\Entity\\Postsforum\0posteddate\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2020-02-26 09:59:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:37:\"\0forumBundle\\Entity\\Postsforum\0iduser\";C:21:\"AppBundle\\Entity\\User\":198:{a:8:{i:0;s:60:\"$2y$13$GrFiPpxIfR4xI6dv2NYzL.ogihFG.vttiD83A3U.IxdgaLj7hdihe\";i:1;N;i:2;s:4:\"nour\";i:3;s:4:\"nour\";i:4;b:1;i:5;i:9;i:6;s:22:\"nour.khedher@esprit.tn\";i:7;s:22:\"nour.khedher@esprit.tn\";}}s:41:\"\0forumBundle\\Entity\\Postsforum\0categoryid\";O:42:\"Proxies\\__CG__\\forumBundle\\Entity\\Category\":3:{s:17:\"__isInitialized__\";b:0;s:31:\"\0forumBundle\\Entity\\Category\0id\";i:3;s:33:\"\0forumBundle\\Entity\\Category\0name\";N;}s:39:\"\0forumBundle\\Entity\\Postsforum\0comments\";O:33:\"Doctrine\\ORM\\PersistentCollection\":2:{s:13:\"\0*\0collection\";O:43:\"Doctrine\\Common\\Collections\\ArrayCollection\":1:{s:53:\"\0Doctrine\\Common\\Collections\\ArrayCollection\0elements\";a:0:{}}s:14:\"\0*\0initialized\";b:0;}s:36:\"\0forumBundle\\Entity\\Postsforum\0views\";i:4;}}', '2020-02-26 10:17:52', 0),
(3, 'nour', 'bonjour', NULL, 'forum_view_single', 'a:1:{s:2:\"id\";O:29:\"forumBundle\\Entity\\Postsforum\":8:{s:33:\"\0forumBundle\\Entity\\Postsforum\0id\";i:2;s:38:\"\0forumBundle\\Entity\\Postsforum\0subject\";s:7:\"bonjour\";s:42:\"\0forumBundle\\Entity\\Postsforum\0description\";s:13:\"mlkamlakmalka\";s:41:\"\0forumBundle\\Entity\\Postsforum\0posteddate\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2020-02-26 09:59:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:37:\"\0forumBundle\\Entity\\Postsforum\0iduser\";C:21:\"AppBundle\\Entity\\User\":198:{a:8:{i:0;s:60:\"$2y$13$GrFiPpxIfR4xI6dv2NYzL.ogihFG.vttiD83A3U.IxdgaLj7hdihe\";i:1;N;i:2;s:4:\"nour\";i:3;s:4:\"nour\";i:4;b:1;i:5;i:9;i:6;s:22:\"nour.khedher@esprit.tn\";i:7;s:22:\"nour.khedher@esprit.tn\";}}s:41:\"\0forumBundle\\Entity\\Postsforum\0categoryid\";O:42:\"Proxies\\__CG__\\forumBundle\\Entity\\Category\":3:{s:17:\"__isInitialized__\";b:0;s:31:\"\0forumBundle\\Entity\\Category\0id\";i:3;s:33:\"\0forumBundle\\Entity\\Category\0name\";N;}s:39:\"\0forumBundle\\Entity\\Postsforum\0comments\";O:33:\"Doctrine\\ORM\\PersistentCollection\":2:{s:13:\"\0*\0collection\";O:43:\"Doctrine\\Common\\Collections\\ArrayCollection\":1:{s:53:\"\0Doctrine\\Common\\Collections\\ArrayCollection\0elements\";a:0:{}}s:14:\"\0*\0initialized\";b:0;}s:36:\"\0forumBundle\\Entity\\Postsforum\0views\";i:6;}}', '2020-02-26 10:21:30', 0);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom_prod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prix_prod` double NOT NULL,
  `qte_prod` int(11) NOT NULL,
  `image_prod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `refP` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `id_client`, `nom_prod`, `prix_prod`, `qte_prod`, `image_prod`, `refP`) VALUES
(57, 5, 'bask', 26, 1, 'f_5e98bcbd1aae9.jpg', 666666),
(58, 5, 'bask', 26, 1, 'f_5e98bcbd1aae9.jpg', 666666),
(54, 5, 'veloo', 23, 1, 'f_5e98b359f3dec.jpg', 266266),
(56, 5, 'veloo', 23, 1, 'f_5e98b359f3dec.jpg', 266266);

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
CREATE TABLE IF NOT EXISTS `partenaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `representant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `nom`, `description`, `type`, `representant`) VALUES
(1, 'hjk,l;', 'jk', 'klm', 'jkkkkkk'),
(2, 'frita', 'thisisa godo partner', 'silver', 'zeineb'),
(3, 'nour', 'nizaghh', 'Gold', 'nour');

-- --------------------------------------------------------

--
-- Structure de la table `postscomments`
--

DROP TABLE IF EXISTS `postscomments`;
CREATE TABLE IF NOT EXISTS `postscomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `postedOn` datetime NOT NULL,
  `idPost` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPost` (`idPost`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `postscomments`
--

INSERT INTO `postscomments` (`id`, `commentaire`, `postedOn`, `idPost`, `idUser`) VALUES
(1, 'hi', '2020-02-26 10:16:40', 2, 9),
(2, 'non', '2020-02-26 10:17:52', 2, 9),
(3, 'salut', '2020-02-26 10:21:30', 2, 9);

-- --------------------------------------------------------

--
-- Structure de la table `postsforum`
--

DROP TABLE IF EXISTS `postsforum`;
CREATE TABLE IF NOT EXISTS `postsforum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `postedDate` datetime NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `idUser` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  KEY `categoryId` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `postsforum`
--

INSERT INTO `postsforum` (`id`, `subject`, `description`, `postedDate`, `views`, `idUser`, `categoryId`) VALUES
(1, 'lol', 'nice ', '2020-02-26 04:56:01', 5, 9, 3),
(2, 'bonjour', 'mlkamlakmalka', '2020-02-26 09:59:35', 8, 9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `ref_p` int(11) NOT NULL,
  `ref_c` int(11) NOT NULL,
  `nom_p` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre_p` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_p` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `quantite_p` int(11) NOT NULL,
  `prix_p` double NOT NULL,
  `marque_p` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating_p` int(11) DEFAULT NULL,
  `solde` double DEFAULT NULL,
  PRIMARY KEY (`ref_p`),
  KEY `IDX_BE2DDF8CEC0A8568` (`ref_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`ref_p`, `ref_c`, `nom_p`, `genre_p`, `couleur_p`, `quantite_p`, `prix_p`, `marque_p`, `description`, `image`, `rating_p`, `solde`) VALUES
(123456, 584346, 'koko', 'homme', '[\"pink\",\"darkred\"]', 2, 25, 'wind breaker', 'JAAAAAYYYYYYY', 'f_5e98b6ca3d3cb.jpg', 2, 20),
(256235, 587744, 'baskle', 'Enfant', '[\"pink\"]', 23, 23, 'baskl', 'test1', 'f_5e98b2bbd6800.jpg', NULL, NULL),
(265268, 148965, 'basklea', 'Homme', '[\"pink\", \"darkred\"]', 25, 25, 'soule', 'test', 'f_5e98b3a81e9d0.jpg', NULL, NULL),
(266266, 148965, 'veloo', 'Homme', '[\"green\"]', 23, 23, 'bakle', 'tes1', 'f_5e98b359f3dec.jpg', NULL, NULL),
(299299, 587744, 'velo', 'Homme', '[\"pink\", \"darkred\"]', 52, 52, 'soule', 'test1', 'f_5e98b3e9837e4.jpg', NULL, NULL),
(666666, 148965, 'bask', 'Femme', '[\"green\", \"pink\"]', 26, 26, 'baskla', 'test1', 'f_5e98bcbd1aae9.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) DEFAULT NULL,
  `idProd` int(11) NOT NULL,
  `idClient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D8892622C6494F09` (`idProd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rating`
--

INSERT INTO `rating` (`id`, `rate`, `idProd`, `idClient`) VALUES
(1, 3, 266266, 9),
(2, 3, 299299, 9);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `userid` int(11) DEFAULT NULL,
  `idR` int(11) NOT NULL AUTO_INCREMENT,
  `dateR` date NOT NULL,
  `objetR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `etatR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailsR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idR`),
  KEY `IDX_CE606404F132696E` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`userid`, `idR`, `dateR`, `objetR`, `etatR`, `detailsR`) VALUES
(9, 1, '2020-02-26', 'Produit abime', 'Traitee', 'pleasee');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_event` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_42C84955D52B4B97` (`id_event`),
  KEY `IDX_42C849556B3CA4B` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `id_event`, `id_user`, `etat`) VALUES
(1, 2, 9, 'Annulée'),
(2, 3, 9, 'Annulée'),
(6, 6, 10, 'Annulée');

-- --------------------------------------------------------

--
-- Structure de la table `r_d_v`
--

DROP TABLE IF EXISTS `r_d_v`;
CREATE TABLE IF NOT EXISTS `r_d_v` (
  `technicienid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `idRDV` int(11) NOT NULL AUTO_INCREMENT,
  `dateDeptRDV` date NOT NULL,
  `dateRDV` date NOT NULL,
  `objetRDV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `etatRDV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailsRDV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idRDV`),
  KEY `IDX_1DC5AD28D12D9D92` (`technicienid`),
  KEY `IDX_1DC5AD28F132696E` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `r_d_v`
--

INSERT INTO `r_d_v` (`technicienid`, `userid`, `idRDV`, `dateDeptRDV`, `dateRDV`, `objetRDV`, `etatRDV`, `detailsRDV`) VALUES
(2, 9, 4, '2020-04-25', '2021-03-20', 'Maintenance technique', 'Refuser', 'po'),
(2, 9, 9, '2020-04-25', '2021-03-09', 'Maintenance technique', 'non traitee', 'hoy'),
(2, 9, 10, '2020-04-25', '2021-04-16', 'Maintenance technique', 'non traitee', 'test for mail'),
(2, 9, 11, '2020-04-25', '2021-04-11', 'Maintenance technique', 'non traitee', 'yyes');

-- --------------------------------------------------------

--
-- Structure de la table `technicien`
--

DROP TABLE IF EXISTS `technicien`;
CREATE TABLE IF NOT EXISTS `technicien` (
  `idT` int(11) NOT NULL AUTO_INCREMENT,
  `cin` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numtel` int(11) NOT NULL,
  PRIMARY KEY (`idT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `technicien`
--

INSERT INTO `technicien` (`idT`, `cin`, `nom`, `prenom`, `email`, `numtel`) VALUES
(2, 12345645, 'Zeineb', 'ZeinebB', 'Nouay@Nouay.tn', 12345678);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `picturePath` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cin` int(11) DEFAULT NULL,
  `numtel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `picturePath`, `cin`, `numtel`) VALUES
(2, 'livreur', 'livreur', 'livreur@gmail.com', 'livreur@gmail.com', 1, NULL, '$2y$13$tlQMGW5X693PcrBLgSNeG.esxjNIznu/wxH7Bmy.WmwczsOe8KUFW', '2020-02-24 19:26:23', NULL, NULL, 'a:1:{i:0;s:12:\"ROLE_LIVREUR\";}', NULL, NULL, NULL),
(9, 'nour', 'nour', 'nour.khedher@esprit.tn', 'nour.khedher@esprit.tn', 1, NULL, '$2y$13$GrFiPpxIfR4xI6dv2NYzL.ogihFG.vttiD83A3U.IxdgaLj7hdihe', '2020-04-29 12:59:12', NULL, NULL, 'a:2:{i:0;s:11:\"ROLES_ADMIN\";i:1;s:12:\"ROLE_LIVREUR\";}', NULL, NULL, NULL),
(10, 'bb', 'bb', 'gonklovox@gmail.com', 'gonklovox@gmail.com', 1, NULL, '$2y$13$J6UP6cudvnLh3GlncIqIb.GLn9k.yJZf2wjhagy0ucoWocfStwxBa', '2020-02-24 21:28:52', NULL, NULL, 'a:0:{}', NULL, NULL, NULL),
(11, 'nn', 'nn', 'nour.khedher1@esprit.tn', 'nour.khedher1@esprit.tn', 1, NULL, '$2y$13$9jEyFif7dDCpLmT0m76izO.KuFSmstSemBr3UyszP8CiXlC2MzDaS', '2020-02-24 21:27:34', NULL, NULL, 'a:1:{i:0;s:12:\"ROLE_LIVREUR\";}', NULL, NULL, NULL),
(12, 'achraf', 'achraf', 'achraf@gmail.com', 'achraf@gmail.com', 1, NULL, '$2y$13$ljiUeMVKA93SkxJJ8hwCE.wlNF3E5uncDd7uYHL8wAF0PJdLmLKYq', '2020-02-24 21:07:43', NULL, NULL, 'a:1:{i:0;s:12:\"ROLE_LIVREUR\";}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `matricule` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marque` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livreur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_292FFF1D12B2DC9C` (`matricule`),
  KEY `IDX_292FFF1DF8646701` (`livreur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`matricule`, `marque`, `type`, `id`, `livreur_id`) VALUES
('123456', 'baskele', 'Vehicule', 10, 26);

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom_prod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix_prod` double NOT NULL,
  `qte_prod` int(11) NOT NULL,
  `image_prod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refP` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9CE12A31F6A22315` (`refP`),
  KEY `IDX_9CE12A31E173B1B8` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`id`, `id_client`, `nom_prod`, `prix_prod`, `qte_prod`, `image_prod`, `refP`) VALUES
(16, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(17, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(18, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(19, 9, 'basklea', 25, 25, 'f_5e98b3a81e9d0.jpg', 265268),
(20, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(21, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(22, 9, 'veloo', 23, 23, 'f_5e98b359f3dec.jpg', 266266),
(23, 9, 'basklea', 25, 25, 'f_5e98b3a81e9d0.jpg', 265268),
(24, 9, 'basklea', 25, 25, 'f_5e98b3a81e9d0.jpg', 265268);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `FK_60349993977523A4` FOREIGN KEY (`id_partenaire`) REFERENCES `partenaire` (`id`),
  ADD CONSTRAINT `FK_60349993D52B4B97` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`);

--
-- Contraintes pour la table `details_commande`
--
ALTER TABLE `details_commande`
  ADD CONSTRAINT `FK_4BCD5F63D498C26` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`id`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `FK_A60C9F1F3D498C26` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FK_A60C9F1FFBC3259F` FOREIGN KEY (`idLivreur`) REFERENCES `livreur` (`id`);

--
-- Contraintes pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD CONSTRAINT `FK_EB7A4E6DA885EAE2` FOREIGN KEY (`id_username`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `postscomments`
--
ALTER TABLE `postscomments`
  ADD CONSTRAINT `FK_84B66E3C29773213` FOREIGN KEY (`idPost`) REFERENCES `postsforum` (`id`),
  ADD CONSTRAINT `FK_84B66E3CFE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `postsforum`
--
ALTER TABLE `postsforum`
  ADD CONSTRAINT `FK_625EF76F9C370B71` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_625EF76FFE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_BE2DDF8CEC0A8568` FOREIGN KEY (`ref_c`) REFERENCES `categories` (`ref_c`);

--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_D8892622C6494F09` FOREIGN KEY (`idProd`) REFERENCES `produits` (`ref_p`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_CE606404F132696E` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C849556B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_42C84955D52B4B97` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`);

--
-- Contraintes pour la table `r_d_v`
--
ALTER TABLE `r_d_v`
  ADD CONSTRAINT `FK_1DC5AD28D12D9D92` FOREIGN KEY (`technicienid`) REFERENCES `technicien` (`idT`),
  ADD CONSTRAINT `FK_1DC5AD28F132696E` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `FK_292FFF1DF8646701` FOREIGN KEY (`livreur_id`) REFERENCES `livreur` (`id`);

--
-- Contraintes pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_9CE12A31E173B1B8` FOREIGN KEY (`id_client`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9CE12A31F6A22315` FOREIGN KEY (`refP`) REFERENCES `produits` (`ref_p`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
