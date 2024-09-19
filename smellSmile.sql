-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : jeu. 19 sep. 2024 à 09:14
-- Version du serveur : 5.7.43
-- Version de PHP : 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `smellSmile`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(2, 2, 'Test', 'fffs', 'Colemansqdf', 'Mcdowell Trujillo Associates', '9 rue Ut qui voluptas nobi', '15554', 'Dolorum voluptas per', 'HN', '+1 (707) 437-6409'),
(3, 18, 'Noelani Hubbard', 'Laura', 'Meadows', 'Miranda and Mathis Plc', 'Rem officiis in sed', 'Voluptas do sed corr', 'Laudantium est ex d', 'MT', '+1 (993) 958-2319'),
(4, 18, 'Keefe Delgado', 'Shaeleigh', 'Banks', 'Hernandez England LLC', 'Dolore sit libero d', 'Illo voluptas quam o', 'Labore veniam culpa', 'QA', '+1 (714) 646-6032'),
(5, 18, 'Chase Farmer', 'Alexandra', 'York', 'Hays Dixon Co', 'Nostrud dolorum eius', 'Cupidatat numquam en', 'Quam eum voluptatem', 'LR', '+1 (147) 666-1511'),
(6, 27, 'Kevyn Meyers', 'Claudia', 'Shaffer', 'Gross Cameron LLC', 'Aut accusamus dolore', '33510', 'Ander', 'LK', '+1 (714) 559-5162'),
(7, 31, 'test', 'test', 'rere', NULL, '3 rue lodi', '13006', 'marseille', 'FR', '0706050401'),
(8, 32, '11 rue borde, 13008', 'Le testeur', 'Test', NULL, '11 rue borde, 13008', '13008', 'Marseille', 'FR', '0768070106');

-- --------------------------------------------------------

--
-- Structure de la table `carrier`
--

CREATE TABLE `carrier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Chronopost', 'Livraison standard à domicile en 2 jours ouvrés.', 400),
(2, 'La Poste', 'Si vous préférez trouver dans votre boite à lettres un avis de passage à la place de votre commande.', 190);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Manteaux'),
(3, 'Echarpes'),
(4, 'Bonnets'),
(5, 'T-shirts'),
(6, 'Chaussures'),
(7, 'Lunettes'),
(8, 'Chapeaux'),
(9, 'Casquettes');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220216090224', '2022-02-16 09:02:53', 195),
('DoctrineMigrations\\Version20220216094827', '2022-02-16 09:48:41', 54),
('DoctrineMigrations\\Version20220218171218', '2022-02-18 17:12:29', 198),
('DoctrineMigrations\\Version20220219105301', '2022-02-19 10:53:16', 221),
('DoctrineMigrations\\Version20220220215719', '2022-02-20 21:57:28', 237),
('DoctrineMigrations\\Version20220222211707', '2022-02-22 21:17:36', 172),
('DoctrineMigrations\\Version20220226160703', '2022-02-26 16:07:11', 356),
('DoctrineMigrations\\Version20220227163839', '2022-02-27 16:38:48', 677),
('DoctrineMigrations\\Version20220227195406', '2022-03-06 19:10:19', 59),
('DoctrineMigrations\\Version20220320164349', '2022-03-20 17:43:57', 34),
('DoctrineMigrations\\Version20220321141846', '2022-03-21 15:18:54', 55),
('DoctrineMigrations\\Version20220329100058', '2022-03-29 12:01:11', 128),
('DoctrineMigrations\\Version20220401085112', '2022-04-01 10:51:23', 128),
('DoctrineMigrations\\Version20220401092032', '2022-04-01 11:20:39', 28);

-- --------------------------------------------------------

--
-- Structure de la table `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `headers`
--

INSERT INTO `headers` (`id`, `title`, `content`, `btn_title`, `btn_url`, `image`) VALUES
(3, 'Accessoires pour toutes les saisons', 'Laissez vous tenter par nos lunettes, chapeaux aussi bien que nos bonnets ou nos écharpes !', 'Nos articles', '/articles', '2bdbe8484b1ba1c36d19137a2c6b44a314cfdbb8.jpg'),
(4, 'Livraison rapide', 'Profitez de nos services de livraison express, mais aussi de nos retours gratuits ! Essayez, adoptez ou échangez !', 'Je commande', '/articles', '4ba7091fffbc5fa736faa53e65ce7b1d47dd4f8e.jpg'),
(5, 'Chic et élégant', 'Nos derniers articles soldés sur la collection automne', 'Voir', '/articles', 'a92c95e83126727c338110afae40dddb1608e9c4.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session`, `state`) VALUES
(40, 18, '2022-03-20 17:44:10', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220320174410-623759dacdc50', NULL, 0),
(41, 18, '2022-03-20 17:46:16', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220320174616-62375a585cf06', NULL, 0),
(42, 18, '2022-03-20 17:49:25', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220320174925-62375b15b0b3f', NULL, 0),
(43, 18, '2022-03-20 18:26:20', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220320182620-623763bc19397', NULL, 0),
(44, 18, '2022-03-21 11:28:11', 'Chronopost', '3.9', 'Laura Meadows<br>+1 (993) 958-2319<br>Miranda and Mathis Plc<br>Rem officiis in sed<br>Voluptas do sed corr<br>Laudantium est ex d<br>MT', '20220321112811-6238533b69446', NULL, 0),
(45, 18, '2022-03-21 15:11:30', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220321151130-6238879220c5d', NULL, 0),
(46, 18, '2022-03-21 15:21:43', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220321152143-623889f7677bc', NULL, 0),
(47, 18, '2022-03-21 15:31:57', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220321153157-62388c5d3dcb9', NULL, 0),
(48, 18, '2022-03-21 15:34:50', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220321153450-62388d0a09959', 'cs_test_b1SBOyIYUlNjmcGmAWw3nlF8USEpGWntMb6WXLakPo0WIibbIkCs4am313', 0),
(49, 18, '2022-03-22 17:02:04', 'Chronopost', '3.9', 'Laura Meadows<br>+1 (993) 958-2319<br>Miranda and Mathis Plc<br>Rem officiis in sed<br>Voluptas do sed corr<br>Laudantium est ex d<br>MT', '20220322170204-6239f2fc3589f', NULL, 0),
(50, 18, '2022-03-22 17:20:39', 'Chronopost', '3.9', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322172039-6239f7573c3e2', 'cs_test_b1eGNsgqwf4HHt2YuH92mCxBgf453vCTp4J0RbZs1MdXNhFdrhdmIVkSB6', 0),
(51, 18, '2022-03-22 17:25:49', 'La Poste', '1.49', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322172549-6239f88daf871', 'cs_test_b14BKDEprkiSilOuk4i6IHNV3c20eix48nda2AARAnsgJI9m9sthfPukGH', 0),
(52, 18, '2022-03-22 17:49:50', 'Chronopost', '400', 'Laura Meadows<br>+1 (993) 958-2319<br>Miranda and Mathis Plc<br>Rem officiis in sed<br>Voluptas do sed corr<br>Laudantium est ex d<br>MT', '20220322174950-6239fe2e0278a', NULL, 0),
(53, 18, '2022-03-22 17:50:18', 'Chronopost', '400', 'Laura Meadows<br>+1 (993) 958-2319<br>Miranda and Mathis Plc<br>Rem officiis in sed<br>Voluptas do sed corr<br>Laudantium est ex d<br>MT', '20220322175018-6239fe4a30e6a', NULL, 0),
(54, 18, '2022-03-22 17:50:44', 'Chronopost', '400', 'Laura Meadows<br>+1 (993) 958-2319<br>Miranda and Mathis Plc<br>Rem officiis in sed<br>Voluptas do sed corr<br>Laudantium est ex d<br>MT', '20220322175044-6239fe64915f4', NULL, 0),
(55, 18, '2022-03-22 17:51:08', 'La Poste', '190', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322175108-6239fe7c2a7ee', NULL, 0),
(56, 18, '2022-03-22 17:51:39', 'La Poste', '190', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322175139-6239fe9baace1', 'cs_test_b1QZUPwPgnLIn27IOi0yBIlEtBMeCLTcvrO817CEvhBOzpVk93izdu3Xl2', 0),
(57, 18, '2022-03-22 18:01:38', 'Chronopost', '400', 'Alexandra York<br>+1 (147) 666-1511<br>Hays Dixon Co<br>Nostrud dolorum eius<br>Cupidatat numquam en<br>Quam eum voluptatem<br>LR', '20220322180138-623a00f242bf2', 'cs_test_b1pMcTNqlEPWipvCpdt0yaXrxfGlYwcQByfJthhFGg9aSfl8xgautEAQZM', 0),
(58, 18, '2022-03-22 22:22:00', 'La Poste', '190', 'Alexandra York<br>+1 (147) 666-1511<br>Hays Dixon Co<br>Nostrud dolorum eius<br>Cupidatat numquam en<br>Quam eum voluptatem<br>LR', '20220322222200-623a3df8835b1', NULL, 0),
(59, 18, '2022-03-22 22:45:00', 'Chronopost', '400', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322224500-623a435ccb66f', 'cs_test_b12YAC7cXCAEAcTZ6JkW71ylZffMl7yChpUr8IZQcJBpF7kxdB5i6pc1IB', 0),
(60, 18, '2022-03-22 23:16:22', 'Chronopost', '400', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220322231622-623a4ab68ec27', 'cs_test_b1ucTIls6kYpFgyiXKK1TXkyIQwyjpzPJI9b7a8cYydpdrJA2xfpKBpv3r', 0),
(61, 18, '2022-03-22 23:29:26', 'Chronopost', '400', 'Alexandra York<br>+1 (147) 666-1511<br>Hays Dixon Co<br>Nostrud dolorum eius<br>Cupidatat numquam en<br>Quam eum voluptatem<br>LR', '20220322232926-623a4dc6ce727', 'cs_test_b1BX6ytv3q3bJMjpXCowtgpx6TXbelYquTV6w7BgzlZIvyKhxboVZdjfKb', 3),
(62, 27, '2022-03-28 15:57:54', 'Chronopost', '400', 'Claudia Shaffer<br>+1 (714) 559-5162<br>Gross Cameron LLC<br>Aut accusamus dolore<br>33510<br>Ander<br>LK', '20220328155754-6241bee23f5b1', 'cs_test_b1gLpzCcKn3tR1q0CWF5bCgpuVwSjL4yFejU11va7kCihyZSMccJC9jhUQ', 2),
(63, 18, '2022-03-31 22:19:18', 'Chronopost', '400', 'Shaeleigh Banks<br>+1 (714) 646-6032<br>Hernandez England LLC<br>Dolore sit libero d<br>Illo voluptas quam o<br>Labore veniam culpa<br>QA', '20220331221918-62460cc658263', 'cs_test_b1KebeKEdfq4hsEr6YvzvKp9qach8z0OrjZIUrPZnUJGh2jXF5p969Zxym', 1),
(64, 31, '2024-09-09 13:48:45', 'Chronopost', '400', 'test rere<br>0706050401<br><br>3 rue lodi<br>13006<br>marseille<br>FR', '20240909134845-66defcbd9f5ce', 'cs_test_b1LC9RhG3dgJlmwzdlo6KKYONAzGc0ZNgbQwOoxF96aENgPqiWXHccW5mM', 0),
(65, 32, '2024-09-09 13:53:13', 'Chronopost', '400', 'Le testeur Test<br>0768070106<br><br>11 rue borde, 13008<br>13008<br>Marseille<br>FR', '20240909135313-66defdc96783e', 'cs_test_b1fgQmGeaHcMvNZonzvzhBZ0TRv2Ef4JExP7YgUZ73Xz5DW4HGCLAWbvTx', 0),
(66, 32, '2024-09-09 13:54:40', 'Chronopost', '400', 'Le testeur Test<br>0768070106<br><br>11 rue borde, 13008<br>13008<br>Marseille<br>FR', '20240909135440-66defe20a0570', 'cs_test_b1psBiiMGonYLNk6UDMSkKHfVGY8fkJzJeKREY7m3SUHe3pqd0mg9nPwl5', 0),
(67, 32, '2024-09-09 13:56:24', 'Chronopost', '400', 'Le testeur Test<br>0768070106<br><br>11 rue borde, 13008<br>13008<br>Marseille<br>FR', '20240909135624-66defe8897bbd', 'cs_test_b1d76QzJYhwGjT3T06xYjpXox3X73qxCfDCe1tV8ePtCL4CRB3vAURWpBk', 0),
(68, 32, '2024-09-09 13:57:59', 'Chronopost', '400', 'Le testeur Test<br>0768070106<br><br>11 rue borde, 13008<br>13008<br>Marseille<br>FR', '20240909135759-66defee7a3679', 'cs_test_b1AiioLx6MFTmjuBDQDvFYczLmZwX5EIDsngBYrHQ3GmeOpp43OqidCGZH', 1),
(69, 32, '2024-09-10 09:18:52', 'Chronopost', '400', 'Le testeur Test<br>0768070106<br><br>11 rue borde, 13008<br>13008<br>Marseille<br>FR', '20240910091852-66e00efc4d9bc', 'cs_test_b1gpFxSk1SJCos0Oz2r73MOY2KtGbT5DWak5QENXTyRhuthPoSgctkuOXT', 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `binded_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `binded_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(76, 40, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(77, 40, 'Manteau chaud', 1, 5800, 5800),
(78, 41, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(79, 41, 'Manteau chaud', 1, 5800, 5800),
(80, 42, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(81, 42, 'Manteau chaud', 1, 5800, 5800),
(82, 43, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(83, 43, 'Manteau chaud', 1, 5800, 5800),
(84, 44, 'Manteau chaud', 3, 5800, 17400),
(85, 44, 'Bonnet Rouge et Bleu Pompom', 2, 1600, 3200),
(86, 45, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(87, 46, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(88, 47, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(89, 48, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(90, 50, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(91, 51, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(92, 52, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(93, 53, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(94, 54, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(95, 55, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(96, 56, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(97, 57, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(98, 58, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(99, 59, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(100, 60, 'T-Shirt Moulant', 3, 15800, 47400),
(101, 61, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(102, 61, 'T-shirt Blanc', 1, 1800, 1800),
(103, 62, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(104, 62, 'T-shirt Blanc', 1, 1800, 1800),
(105, 63, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(106, 64, 'Casquette orange', 1, 400, 400),
(107, 65, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(108, 66, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(109, 67, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(110, 68, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(111, 69, 'Bonnet Rouge Pompom', 1, 1800, 1800);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_in_home` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `image`, `subtitle`, `description`, `price`, `is_in_home`) VALUES
(2, 4, 'Bonnet Rouge Pompom', 'bonnet-rouge-pompom', 'e0b7e89b60de57f1e4451fd9831be26a102081e4.jpg', 'Restez au chaud avec style', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid.', 1800, 0),
(3, 4, 'Bonnet Rouge et Bleu Pompom', 'bonnet-rouge-et-bleu-pompom', '8bf330b14aefcec1ab92b7c3f475290fd7940275.jpg', 'Restez au chaud avec style (encore)', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut!', 1600, 0),
(4, 3, 'Echarpe Rouge', 'echarpe-rouge', '9ec1111e99942243bf2157e2fbeaa2aec0a485ac.jpg', 'Pour le ski ou la ville', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum!', 1400, 0),
(5, 2, 'Manteau chaud', 'manteau-chaud', '5cf449463c611b07451480da81fa048f208fc974.jpg', 'Pour les hivers rudes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit.', 5800, 0),
(6, 5, 'T-shirt Blanc', 't-shirt-blanc', 'ee40d9f7990aead7e8695f2eb4599ea1dbb0b1b1.jpg', 'Simple, basique', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum!', 1800, 0),
(7, 3, 'Echarpe Rayée', 'echarpe-rayee', '2153f235c1175c595860b612a4d2657402184a04.jpg', 'La classe à Annemasse', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid.', 1500, 0),
(8, 5, 'T-Shirt Moulant', 't-shirt-moulant', '00a9e824e1a5ba119d9964cc2798fdc3e27b9a84.jpg', 'Pour les bogoss\'', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum!', 15800, 0),
(9, 7, 'Lunettes new aviator', 'lunettes-new-aviator', '9b63b18c0cde83590b9e36eaaac34092e430712c.jpg', 'Intemporel', 'Lunettes sombres unisexe, printemps, été ou automne.', 2400, 0),
(10, 7, 'Lunettes Wayfarer style', 'lunettes-wayfarer-style', 'dc0f8d0f37e4866c5882c01e0841b7f8b271e49d.jpg', 'Promis ce sont des vraies', 'Souvent imitées, jamais égalées, on a la classe ou ne l\'a pas', 9800, 1),
(11, 9, 'Casquette orange', 'casquette-orange', '242b2cf61210f43c231c6fdec081a554c6757e95.jpg', 'Contre le soleil et le bon gout', 'Superbe casquette orange, il faut aimer le orange.', 400, 1),
(12, 6, 'Chaussures Mike', 'chaussures-mike', '985fc0c43bac9473286fd1f4fabe1d14c21485e7.jpg', 'Mieux que l\'originale', 'Pour faire du skate ou pour rien faire sinon c\'est bien aussi rien faire.', 14900, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'qila@mailinator.com', '[]', '$2y$13$XJ6eO87g5wbbYo1VVGsSa.K3ZoY3nxb/AP7jesP.B4pQ5uCTPnWta', 'Abel', 'Cook'),
(2, 'bewebokyt@mailinator.com', '[]', '$2y$13$hbsvJpSPsTAifkSz7EKdnek5JELREFm7AcAD2waapW.CGbPPb9/Xa', 'Cameran', 'Santana'),
(3, 'zohova@mailinator.com', '[]', '$2y$13$V8gb44ppyH26z1aGFrrrg.YHVwNCrO2uoDCODyAqkKb3IehWYw/de', 'Demetrius', 'Barron'),
(5, 'pybozy@mailinator.com', '[]', '$2y$13$TIqH1opO82k7lhHZIQx3RuJcMOOZd4wgpILAC8BQ7Fm0L31Lhrop2', 'Benedict', 'Parker'),
(6, 'doqyre@mailinator.com', '[]', '$2y$13$aS8uwK/U422zKIQPZVan6.xxXHbKDLe0QBu3BrA6cv3bT8NJydCFi', 'Kaseem', 'Boyd'),
(7, 'admin@admin.com', '[]', '$2y$13$sfixY8eaiATRLoXXOsAPHeONkAzCrsnP9tdIOBRgnpxc3ROBgvREW', 'Sierra', 'Michael'),
(8, 'zofyd@mailinator.com', '[]', '$2y$13$5eh2MdTTmp3saxjVSdSDpuuI1U4OFVbfj9rLOMK0MZOeatvcPciSa', 'Portia', 'Rasmussen'),
(9, 'qijab@mailinator.com', '[]', '$2y$13$kZAwoyXojOm5KZWhSGH3aeAaYe1DU3pBkqHnD7Qz328dpbPHuu1L6', 'Ivana', 'Roberson'),
(10, 'suvymez@mailinator.com', '[]', '$2y$13$ygkBzDRFAqErEjNg84CwEOeN3UjCE.QaaGALDmykqQBvP/WIuKF4.', 'Selma', 'Rice'),
(11, 'lykeho@mailinator.com', '[]', '$2y$13$rYh3reJhPHOthgfaKhz/e..5ghtSb0RgIDZQT98iJLyvjmwRhMl0G', 'Amity', 'Myers'),
(12, 'tygemu@mailinator.com', '[]', '$2y$13$nYHb/cULNrIAdteSAtJSiOy4wkZbxfYeAY4los.C9BOBBczF09P0e', 'Alexis', 'Underwood'),
(14, 'wozowiwydi@mailinator.com', '[]', '$2y$13$AFkNQqYChQC6bDQWuO0eVeIhu9jnEMpSCk4e0bT.Cc6gCGWoXHZEi', 'Dustin', 'Collins'),
(16, 'maqatoked@mailinator.com', '[]', '$2y$13$gxSZ/IWhSlUbOeMJpA.qBejCfpRgj1Zz4YgQ0Q7OII51YwzVFjBpW', 'Imani', 'Hodge'),
(17, 'vimelabe@mailinator.com', '[]', '$2y$13$3kJHAAwcWz8/UY7EBPFeIOkfzwrz9HXv2vOZjiA/veXiZr14XGeTi', 'Imogene', 'Mccormick'),
(18, 'dakyridut@mailinator.com', '[\"ROLE_ADMIN\"]', '$2y$13$hi0ATGo5E4HiBtd98kjEoud.CYeEwTUg07dP0vZHVayIYttmK0yqy', 'Gregory', 'Garcia'),
(19, 'yas.hammami@gmail.com', '[\"ROLE_ADMIN\"]', 'aqwzsxedc123', 'Yassin', 'Hammami'),
(20, 'xowogavibe@mailinator.com', '[]', '$2y$13$qflQJ4yFJ0xtHsd.el.BYezdsmxTiMifkhcaB.Y.JcpAeBqggUt86', 'Trevor', 'Durham'),
(25, 'pureni@mailinator.com', '[]', '$2y$13$k5rLWE3mYj5ky4oZV1KUNuSSmUQAa.yEOYcNAqOv7FJ9FIaRIy8Ny', 'Lewis', 'Love'),
(26, 'mykopynena@mailinator.com', '[]', '$2y$13$G4nys/saDA5GRlTouafl/O8jXA.PUbCwh9iao.ZSvRJH889HliHn.', 'Willow', 'Rice'),
(27, 'bonnal.tristan91@gmail.com', '[]', '$2y$13$7L4y2VHPe6dqXhCjfSzybO1BWzeYC0usC06KRdycu6xScOvWaJJuS', 'Ainsley', 'Burris'),
(28, 'tegyzob@mailinator.com', '[]', '$2y$13$hdW4kLBteLo0LC5sftuN2.XfJ8mQEuR/ccq.pfBJha46xY8cG1lm.', 'Brendan', 'Cardenas'),
(29, 'wemuj@mailinator.com', '[]', '$2y$13$/JPcAgc9.rFAs/gZRXKEZugbFC23hY1F5P1cRSio3U9PkrxEIb0Ai', 'Lois', 'Levy'),
(30, 'hammami@gmail.com', '[]', '$2y$13$uIggrkkj9zfHvHzV2V.qse0PmT2tWaMzo/dwF7Q5l.GNSsq7YrN56', 'Yassin', 'Hammami'),
(31, 'to.hammami@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$lbjStEfyZ0AgNs7HJLeBo.fbdMVAHjgI2JdqV9Mt01n6oJlboohNK', 'Yassin', 'Hammami'),
(32, 'tess@test.fr', '[]', '$2y$13$ialr.RLgki2wxm387MUNkelrU6s5jlnBDSkteuhF3fSsAAJYqCUTK', 'Le testeur', 'Test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4E6F81A76ED395` (`user_id`);

--
-- Index pour la table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Index pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_845CA2C17C78A4E3` (`binded_order_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C17C78A4E3` FOREIGN KEY (`binded_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
