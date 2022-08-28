-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 16 août 2022 à 01:28
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `madeinco_`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_category`, `name_category`) VALUES
(1, 'Processeur'),
(2, 'Carte Mère'),
(3, 'Kit Upgrade PC'),
(4, 'Mémoire'),
(5, 'Carte Graphique'),
(6, 'Boitier'),
(7, 'Alimentation'),
(8, 'Disque SSD'),
(9, 'Disque dur'),
(10, 'Ventilateur PC'),
(11, 'Ventirad Processeur'),
(12, 'Watercooling'),
(13, 'Ecran PC'),
(14, 'Clavier'),
(15, 'Souris'),
(16, 'Macbook'),
(17, 'Ipad'),
(18, 'Iphone');

-- --------------------------------------------------------

--
-- Structure de la table `checkout`
--

CREATE TABLE `checkout` (
  `fullname` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_panier` int(11) NOT NULL,
  `address` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip` int(4) NOT NULL,
  `cardname` varchar(25) NOT NULL,
  `cardnumber` int(16) NOT NULL,
  `expmonth` varchar(15) NOT NULL,
  `expyear` int(4) NOT NULL,
  `cvv` int(3) NOT NULL,
  `sameaddress` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_cli` int(11) NOT NULL,
  `prenom_cli` varchar(15) NOT NULL,
  `nom_cli` varchar(20) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'Utilisateur',
  `ip` varchar(20) NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_cli`, `prenom_cli`, `nom_cli`, `pseudo`, `email`, `password`, `role`, `ip`, `date_inscription`) VALUES
(16, 'Admin01', 'Yassin', 'ADMIN', 'ADMIN@hotmail.fr', '$2y$10$Tb3B6BnEaKS8xObplr1ujegPl5o46XQ6eIii7Pgjdrqrprc0387vq', 'Admin', '', '2022-05-06 16:29:25'),
(17, '', '', 'Yassin', 'Yassin6200@hotmail.fr', '$2y$10$I39FkT3PL2Vst7WoK5OhFe8F16TKtSbu1TKk8MfBvTbg4m/26UWK.', 'Utilisateur', '', '2022-05-06 16:32:13'),
(18, '', '', 'Philipe', 'alaryp@helha.be', '$2y$10$1YEpOTL3oHHm89fPkXJvrOhsSdJ/R0j0iR//NvIG6RslAo/UuOIJq', 'Utilisateur', '', '2022-05-15 16:53:10'),
(27, '', '', 'JoachimMaquestiaux', 'Joachim@gmail.com', '$2y$10$y16VsM3d7f/oHqliMfIfRe7fNDPKRjbWuXkJMiyeepxdAYghwbRKe', 'Utilisateur', '', '2022-08-16 01:18:32');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `num_pro` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `qte_pro` int(11) NOT NULL,
  `datePanier` datetime NOT NULL DEFAULT current_timestamp(),
  `id_panier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`num_pro`, `id_cli`, `qte_pro`, `datePanier`, `id_panier`) VALUES
(4, 18, 1, '2022-05-15 16:56:18', 12),
(15, 18, 1, '2022-05-15 16:56:25', 13),
(24, 18, 1, '2022-05-15 16:56:32', 14),
(27, 18, 1, '2022-05-15 16:56:47', 15),
(38, 18, 1, '2022-05-15 16:56:54', 16),
(43, 18, 1, '2022-05-15 16:57:01', 17),
(47, 18, 1, '2022-05-15 16:57:15', 18),
(53, 18, 1, '2022-05-15 16:57:26', 19),
(56, 18, 1, '2022-05-15 16:57:30', 20),
(61, 18, 2, '2022-05-15 16:57:52', 21),
(64, 18, 2, '2022-05-15 16:58:08', 22),
(63, 18, 1, '2022-05-15 16:58:14', 23),
(84, 18, 1, '2022-05-15 16:58:51', 24),
(86, 18, 2, '2022-05-15 16:59:19', 25),
(94, 18, 1, '2022-05-15 16:59:38', 26),
(99, 18, 2, '2022-05-15 16:59:42', 27),
(103, 18, 1, '2022-05-15 17:00:09', 28),
(107, 18, 2, '2022-05-15 17:00:26', 29),
(110, 18, 1, '2022-05-15 17:00:42', 30);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `num_pro` int(11) NOT NULL,
  `dispo_pro` tinyint(1) NOT NULL DEFAULT 1,
  `imgsource` varchar(100) NOT NULL,
  `marques_pro` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `prix_pro` decimal(12,2) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`num_pro`, `dispo_pro`, `imgsource`, `marques_pro`, `description`, `prix_pro`, `category`) VALUES
(1, 1, 'img/proco/i39100.png', 'Intel Core i3-9100F', ' Le processeur Intel Core i3-9100 propose des performances de premier plan avec ses 4 coeurs et sa fréquence native de 3.6 GHz qui grimpe à 4.2 GHz en mode Turbo. Vous pourrez jouer aux derniers jeux vidéo, regarder des films, créer et retoucher du contenu.', '97.00', 1),
(2, 1, 'img/proco/i59600K.png', 'Intel Core i5-9600K', ' Que vous soyez Gamer ou utilisateur ultra-exigeant, vous tirerez parti du meilleur de votre PC grâce au processeur Intel Core i5-9600K dôté de 6 Cores (6 Threads), de 9 Mo de cache de niveau 3 et de fréquences Turbo pouvant atteindre 4.6 GHz sans overclocking !', '269.95', 1),
(3, 1, 'img/proco/i79700K.png', 'Intel Core i7-9700K', ' Que vous soyez Gamer ou utilisateur ultra-exigeant, vous tirerez parti du meilleur de votre PC grâce au processeur Intel Core i7-9700K dôté de 8 Cores (8 Threads), de 12 Mo de cache de niveau 3 et de fréquences Turbo pouvant atteindre 4.9 GHz sans overclocking !', '369.95', 1),
(4, 1, 'img/proco/i99900K.png', 'Intel Core i9-9900K', 'Que vous soyez Gamer ou utilisateur ultra-exigeant, vous tirerez parti du meilleur de votre PC grâce au processeur Intel Core i9-9900K dôté de 8 Cores (16 Threads), de 16 Mo de cache de niveau 3 et de fréquences Turbo pouvant atteindre 5.0 GHz sans overclocking !', '499.95', 1),
(5, 1, 'img/proco/AMD3200G.png', 'AMD Ryzen 3 3200G', 'Le processeur AMD Ryzen 3 3200G Wraith Stealth (3.6 GHz / 4 GHz) est basé sur l\'architecture Zen+ gravée en 12 nm. Cette deuxième génération Ryzen avec graphismes Radeon Vega 8 se dote de 4 coeurs, des fréquences revues à la hausse avec de base 3.6 GHz et jusqu\'à 4 GHz.', '139.95', 1),
(6, 1, 'img/proco/AMD3600X.png', 'AMD Ryzen 5 3600X', 'Le processeur AMD Ryzen 5 3600X Wraith Spire (3.8 GHz / 4.4 GHz) fait partie des premiers processeurs pour PC gravés en 7 nm. Ses 6 coeurs et 12 threads, une fréquence jusqu\'à 4.4 GHz et 35 Mo de GameCache le rendent polyvalent, il vous permet de tout faire rapidement et en toute fluidité.', '289.95', 1),
(7, 1, 'img/proco/AMD3800X.png', 'AMD Ryzen 7 3800X', ' Le processeur AMD Ryzen 7 3800X Wraith Prism LED RGB (3.9 GHz / 4.5 GHz) fait partie des premiers processeurs pour PC gravés en 7 nm. Ses 8 coeurs et 16 threads, une fréquence jusqu\'à 4.5 GHz et 36 Mo de GameCache le rendent polyvalent, il vous permet de tout faire rapidement et en toute fluidité.', '439.95', 1),
(8, 1, 'img/proco/AMD3900X.png', 'AMD Ryzen 9 3900X', 'Le processeur AMD Ryzen 9 3900X Wraith Prism LED RGB (3.8 GHz / 4.6 GHz) fait partie des premiers processeurs pour PC gravés en 7 nm. Ses 12 coeurs et 24 threads, une fréquence jusqu\'à 4.6 GHz et 70 Mo de GameCache le rendent polyvalent, il vous permet de tout faire rapidement et en toute fluidité.', '559.95', 1),
(9, 1, 'img/cm/ASUSB450PLUS.png', 'ASUS PRIME B450-PLUS', 'Grâce au support des processeurs AMD Ryzen sur socket AMD AM4, à la prise en charge de la mémoire vive DDR4, des cartes graphiques PCI-Express 3.0, des disques SATA 6Gb/s et M.2 (SATA et PCI-E), la carte mère ASUS PRIME B450-PLUS est à la pointe de la technologie.', '114.95', 2),
(10, 1, 'img/cm/asusrogstrixz390h.png', 'ASUS ROG STRIX Z390-H GAMING', 'La carte mère ASUS ROG STRIX Z390-H GAMING est faite pour accueillir les processeurs Intel Core de 9ème génération (Intel Coffee Lake Refresh). Basée sur le chipset Intel Z390 Express, elle permettra l\'assemblage d\'une configuration Gaming équipée d\'un processeur performant.', '219.95', 2),
(11, 1, 'img/cm/asusstrixb450i.png', 'ASUS STRIX B450-I GAMING', 'La carte mère ASUS STRIX B450-I GAMING est idéale pour concevoir un PC puissant et à l\'aise dans toutes les situations : multimédia, bureautique et jeux vidéo, vous pourrez assembler la configuration de vos rêves avec un AMD Ryzen (Pinnacle Ridge, Raven Ridge ou Summit Ridge).', '194.96', 2),
(12, 1, 'img/cm/asustufz390plus.png', 'ASUS TUF Z390-PLUS GAMING', ' La carte mère ASUS TUF Z390-PLUS GAMING (WI-FI) est faite pour accueillir les processeurs Intel Core de 9ème génération (Intel Coffee Lake Refresh). Basée sur le chipset Intel Z390 Express, elle permettra l\'assemblage d\'une configuration Gaming équipée d\'un processeur performant.', '139.95', 2),
(13, 1, 'img/cm/msib550apro.png', 'MSI B550-A PRO', ' Embarquant le chipset AMD B550, la carte mère MSI B550-A PRO avec son socket AM4 est conçue pour accueillir les processeurs AMD Ryzen de 3ème génération. Elle permettra de composer une configuration Gaming disposant des dernières avancées technologiques.', '149.95', 2),
(14, 1, 'img/cm/msimagb550mbazooka.png', 'MSI MAG B550M BAZOOKA', 'Embarquant le chipset AMD B550, la carte mère MSI MAG B550M BAZOOKA avec son socket AM4 est conçue pour accueillir les processeurs AMD Ryzen de 3ème génération. Elle permettra de composer une configuration Gaming disposant des dernières avancées technologiques.', '135.96', 2),
(15, 1, 'img/cm/msimpgz390gp.png', 'MSI MPG Z390 GAMING PLUS', 'La carte mère MSI MPG Z390 GAMING PLUS prend en charge les derniers processeurs Intel Core de 9ème génération pour l\'assemblage d\'une configuration Gaming ou Multimédia de haut vol. Basée sur le chipset Intel Z390 Express, cette carte mère bénéficie de la qualité MSI.', '164.95', 2),
(16, 1, 'img/cm/msiz390apro.png', 'MSI Z390-A PRO', 'La carte mère MSI Z390-A PRO prend en charge les derniers processeurs Intel Core de 9ème génération (Intel Coffee Lake Refresh) pour l\'assemblage d\'une configuration Gaming ou Multimédia de haut vol. Basée sur le chipset Intel Z390 Express, cette carte mère bénéficie de la qualité de fabrication MSI', '154.94', 2),
(17, 1, 'img/kitevo/R5ASUSPRIME.png', 'Kit Upgrade PC AMD Ryzen 5 3600 ASUS PRIME B550M-A (Wi-Fi)', 'L\'association de la carte mère PRIME B550M-A Wi-Fi et du processeur AMD Ryzen 5 3600 avec son ventirad Wraith Stealth vous permettra de plonger dans l\'univers envoûtant du jeu nouvelle génération sur PC.', '395.95', 3),
(18, 1, 'img/kitevo/R7ASUSTUF.png', 'Kit Upgrade PC AMD Ryzen 7 2700X ASUS TUF B450-PLUS GAMING', 'L\'association de la carte mère ASUS TUF B450-PLUS GAMING et du processeur AMD Ryzen 7 2700X 8-Core vous permettra de plonger dans l\'univers envoûtant du Jeu nouvelle génération sur PC.', '349.94', 3),
(19, 1, 'img/kitevo/I5FASUSPRIME.png', 'Kit Upgrade PC Core i5F ASUS PRIME Z490-P', 'Améliorez les performances de votre PC Gamer avec ce kit upgrade PC Core i5F ASUS PRIME Z490-P pensé par LDLC. Il est composé d\'une carte mère ASUS PRIME Z490-P et d\'un CPU 10e génération Intel Core i5-10400F (2.9 GHz / 4.3 GHz).', '379.94', 3),
(20, 1, 'img/kitevo/I7ASUSTUF.png', 'Kit Upgrade PC Core i7K ASUS TUF GAMING Z490-PLUS', 'Améliorez les performances de votre PC Gamer avec ce kit upgrade PC Core i7K ASUS TUF GAMING Z490-PLUS pensé par LDLC. Il est composé d\'une carte mère ASUS TUF GAMING Z490-PLUS et d\'un CPU 10e génération Intel Core i7-10700K (3.8 GHz/5.1 GHz).', '679.94', 3),
(21, 1, 'img/kitevo/R5MSIB550MB.png', 'Kit Upgrade PC AMD Ryzen 5 3600 MSI MAG B550M BAZOOKA', ' L\'association de la carte mère MAG B550M BAZOOKA et du processeur AMD Ryzen 5 3600 avec son ventirad Wraith Stealth vous permettra de plonger dans l\'univers envoûtant du jeu nouvelle génération sur PC.', '375.95', 3),
(22, 1, 'img/kitevo/R7MSIB550GP.png', 'Kit Upgrade PC AMD Ryzen 7 3700X MSI MPG B550 GAMING PLUS\r\n', 'L\'association de la carte mère MPG B550 GAMING PLUS et du processeur AMD Ryzen 7 3700X avec son ventirad Wraith Prism LED RGB vous permettra de plonger dans l\'univers envoûtant du jeu nouvelle génération sur PC.', '529.94', 3),
(23, 1, 'img/kitevo/I5MSIZ490GP.png', 'Kit Upgrade PC Core i5F MSI MPG Z490 GAMING PLUS', ' Améliorez les performances de votre PC Gamer avec ce kit upgrade PC Core i5F MSI MPG Z490 GAMING PLUS pensé par LDLC. Il est composé d\'une carte mère MSI MPG Z490 GAMING PLUS avec un CPU 10e génération Intel Core i5-10400F (2.9 GHz/4.3 GHz).', '383.95', 3),
(24, 1, 'img/kitevo/I7MSIZ490GP.png', 'Kit Upgrade PC Core i7K MSI MPG Z490 GAMING PLUS', ' Améliorez les performances de votre PC Gamer avec ce kit upgrade PC Core i7K MSI MPG Z490 GAMING PLUS pensé par LDLC. Il est composé d\'une carte mère MSI MPG Z490 GAMING PLUS avec un CPU 10e génération Intel Core i7-10700K (3.8 GHz/5.1 GHz).', '659.95', 3),
(25, 1, 'img/ram/corsairpro16.png', 'Corsair Vengeance RGB PRO Series 16 Go (2x 8 Go) DDR4 3000 MHz CL15', 'Les mémoires PC haut de gamme Vengeance RGB PRO Series de Corsair proposent les meilleures performances et stabilité pour les plateformes nouvelle génération avec un fort potentiel d\'overclocking. Elles vous offrent également un éclairage RGB multizone dynamique hypnotisant.', '109.95', 4),
(26, 1, 'img/ram/corsairlpx16.png', 'Corsair Vengeance LPX Series Low Profile 16 Go (2x 8 Go) DDR4 3200 MHz CL16', 'Avec la nouvelle gamme de mémoires PC haut de gamme Vengeance LPX Series, Corsair propose des solutions stables et performantes pour les plateformes nouvelle génération avec en prime un fort potentiel d\'overclocking.', '93.94', 4),
(27, 1, 'img/ram/corsairpro32.png', 'Corsair Vengeance RGB PRO Series 32 Go (4x 8 Go) DDR4 3000 MHz CL15\r\n', 'Les mémoires PC haut de gamme Vengeance RGB PRO Series de Corsair proposent les meilleures performances et stabilité pour les plateformes nouvelle génération avec un fort potentiel d\'overclocking. Elles vous offrent également un éclairage RGB multizone dynamique hypnotisant.', '241.94', 4),
(28, 1, 'img/ram/corsairlpx32.png', 'Corsair Vengeance LPX Series Low Profile 32 Go (4x 8 Go) DDR4 3200 MHz CL16', 'Avec la nouvelle gamme de mémoires PC haut de gamme Vengeance LPX Series, Corsair propose des solutions stables et performantes pour les plateformes nouvelle génération avec en prime un fort potentiel d\'overclocking.', '189.95', 4),
(29, 1, 'img/ram/hyperx16.png', 'HyperX Fury 16 Go (2 x 8 Go) DDR4 3000 MHz CL15', 'La célèbre mémoire HyperX Fury revient avec un design actualisé du dissipateur de chaleur qui est aminci tout en gardant une efficacité redoutable Son style racé apporté par le dissipateur apporte une touche gaming assumée. Elle est compatible avec les processeurs Intel et AMD les plus récents.', '94.94', 4),
(30, 1, 'img/ram/hyperxrgb16.png', 'HyperX Fury RGB 16 Go (2x 8 Go) DDR4 3200 MHz CL16', 'La mémoire DDR4 Fury RGB HyperX bénéficie d\'une dissipation thermique largement améliorée pour optimiser la fiabilité et d\'un style gaming assumé grâce à son dissipateur. Elle est également compatible avec les processeurs Intel et AMD les plus récents avec le style caractéristique Fury.', '99.95', 4),
(31, 1, 'img/ram/hyperx32.png', 'HyperX Fury 32 Go (4 x 8 Go) DDR4 3000 MHz CL15', 'La célèbre mémoire HyperX Fury revient avec un design actualisé du dissipateur de chaleur qui est aminci tout en gardant une efficacité redoutable Son style racé apporté par le dissipateur apporte une touche gaming assumée. Elle est compatible avec les processeurs Intel et AMD les plus récents.', '186.95', 4),
(32, 1, 'img/ram/hyperxrgb32.png', 'HyperX Fury RGB 32 Go (4x 8 Go) DDR4 3200 MHz CL16', 'La mémoire DDR4 Fury RGB HyperX bénéficie d\'une dissipation thermique largement améliorée pour optimiser la fiabilité et d\'un style gaming assumé grâce à son dissipateur. Elle est également compatible avec les processeurs Intel et AMD les plus récents avec le style caractéristique Fury.', '214.94', 4),
(33, 0, 'img/cg/asusgtx1660s.png', 'ASUS GeForce GTX 1660 SUPER ROG-STRIX-GTX1660S-6G-GAMING', 'La ASUS GeForce GTX 1660 SUPER ROG-STRIX-GTX1660S-6G-GAMING est une carte graphique gaming abordable basée sur l\'architecture GPU NVIDIA Turing. Version améliorée de la GTX 1660, elle s\'appuie sur la puce graphique TU116, de la VRAM GDDR6, une interface mémoire 192 bits et 1408 Cores CUDA.', '303.95', 5),
(34, 0, 'img/cg/asusrtx3070.png', 'ASUS GeForce RTX Dual 3070 O8G', ' La carte graphique ASUS GeForce RTX Dual 3070 O8G embarque 8 Go de mémoire vidéo de nouvelle génération GDDR6. Ce modèle overclocké d\'usine bénéficie de fréquences de fonctionnement élevées et d\'un système de refroidissement amélioré gage de fiabilité et de performances à long terme.', '649.94', 5),
(35, 0, 'img/cg/asusrx5500xt.png', 'ASUS Radeon RX 5500 XT ROG-STRIX-RX5500XT-O8G-GAMING', 'La carte graphique ASUS Radeon RX 5500 XT ROG-STRIX-RX5500XT-O8G-GAMING se dote de l\'architecture RDNA pensée pour les gamers à la recherche d\'une carte graphique performante avec une consommation revue à la baisse pour jouer en 1080p.', '289.94', 5),
(36, 0, 'img/cg/asusrx5700xt.png', 'ASUS Radeon RX 5700XT ROG-STRIX-RX5700XT-O8G-GAMING', ' La carte graphique ASUS Radeon RX 5700XT ROG-STRIX-RX5700XT-O8G-GAMING est une carte graphique qui se pare de la nouvelle architecture RDNA pensée pour les gamers exigeants. Sa conception novatrice en fait une carte graphique de choix pour la Réalité Virtuelle et le jeu en 2K.', '569.95', 5),
(37, 0, 'img/cg/msigtx1660ti.png', 'MSI GeForce GTX 1660 Ti GAMING X 6G', 'La GeForce GTX 1660 Ti GAMING X 6G de MSI propose aux gamers des performances de hauts vols sur les jeux actuels et ceux à venir. La technologie Nvidia Turing présente sur les processeurs graphiques Geforce GTX de série 16 vous promet un avenir vidéoludique radieux.', '359.95', 5),
(38, 0, 'img/cg\\msirtx3070.png', 'MSI GeForce RTX 3070 GAMING X TRIO 8G', 'La carte graphique MSI GeForce RTX 3070 GAMING X TRIO 8G embarque 8 Go de mémoire vidéo de nouvelle génération GDDR6. Ce modèle overclocké d\'usine bénéficie de fréquences de fonctionnement élevées et d\'un système de refroidissement amélioré gage de fiabilité et de performances à long terme.', '779.95', 5),
(39, 0, 'img/cg\\msirx5500xt.png', 'MSI Radeon RX 5500 XT GAMING X 8G', 'La carte graphique MSI Radeon RX 5500 XT GAMING X 8G se dote de l\'architecture RDNA pensée pour les gamers à la recherche d\'une carte graphique performante avec une consommation revue à la baisse pour jouer en 1080p.', '289.94', 5),
(40, 0, 'img/cg\\msirx5700xt.png', 'MSI Radeon RX 5700 XT GAMING X', 'La carte graphique MSI Radeon RX 5700 XT GAMING X est une carte graphique gaming qui se pare de la nouvelle architecture RDNA pensée pour les gamers exigeants. Sa conception novatrice en fait une carte graphique de choix pour la Réalité Virtuelle et le jeu en 2K.', '529.94', 5),
(41, 1, 'img/boitier/btzalman.png', 'Zalman M3', 'Compact et élégant, le boîtier Zalman M3 est un boîtier PC Mini Tour qui offrira à vos composants un volume optimal pour allier performances et refroidissement efficace. Appréciez sa fenêtre en verre trempé, ses nombreux emplacements pour ventilateurs 120 mm et une prise en charge watercooling.', '65.95', 6),
(42, 1, 'img/boitier/btkolink.png', 'Kolink Stronghold', 'Le boitier Kolink Stronghold avec sa fenêtre en verre trempé et sa façade noire épurée va vous permettre de monter la configuration de vos rêves ! Véritable écrin dans un boitier à effet brossé, vous pourrez monter un PC complet au format E-ATX, ATX, Micro-ATX ou Mini-ITX avec une VGA de 380 mm.', '49.94', 6),
(43, 1, 'img/boitier/btnzxt.png', 'NZXT H510 Noir/Rouge', 'Tout comme les autres boîtiers de la série H de NZXT ce boîtier H510 est conçu pour la performance et le silence. Élégant avec son panneau en verre trempé, il est prêt à accueillir la configuration de vos rêves. Il peut recevoir une carte mère au format Mini-ITX, Micro ATX ou ATX...', '89.95', 6),
(44, 1, 'img/boitier/btbequiet.png', 'be quiet! Pure Base 500 Window (Gris)', 'Le be quiet! Pure Base 500 Window est un boitier moyen tour avec une conception pensée pour le silence et qui vous permet d\'assembler presque toutes les configurations en se basant sur une carte mère mini-ITX, micro-ATX ou ATX grâce à son espace intérieur optimisé.', '97.94', 6),
(45, 1, 'img/alim/corsair550.png', 'Corsair RM550x V2 80PLUS Gold', 'L\'alimentation Corsair RM650x 80PLUS Gold bénéficie d\'un câblage 100% modulaire et du grade de certification éco-énergétique \"80PLUS GOLD\". Ultra-efficace, elle délivre un courant fiable avec un minimum de pertes.', '129.95', 7),
(46, 1, 'img/alim/corsair650.png', 'Corsair RM650x V2 80PLUS Gold', 'L\'alimentation Corsair RM650x 80PLUS Gold bénéficie d\'un câblage 100% modulaire et du grade de certification éco-énergétique \"80PLUS GOLD\". Ultra-efficace, elle délivre un courant fiable avec un minimum de pertes.', '144.95', 7),
(47, 1, 'img/alim/corsair850.png', 'Corsair RM850x 80PLUS Gold', 'L\'alimentation Corsair RM850x 80PLUS Gold bénéficie d\'un câblage 100% modulaire et du grade de certification éco-énergétique \"80PLUS GOLD\". Ultra-efficace, elle délivre un courant fiable avec un minimum de pertes.', '184.95', 7),
(48, 1, 'img/alim/corsair1000.png', 'Corsair RM1000x 80PLUS Gold', 'L\'alimentation Corsair RM1000x 80PLUS Gold bénéficie d\'un câblage 100% modulaire et du grade de certification éco-énergétique \"80PLUS GOLD\". Ultra-efficace, elle délivre un courant fiable avec un minimum de pertes.', '249.95', 7),
(49, 1, 'img/alim/bequiet550.png', 'be quiet! Straight Power 11 550W 80PLUS Platinum', 'L\'alimentation modulaire be quiet! Straight Power 11 Platinum offre un fonctionnement silencieux sans compromis au niveau de la qualité. Certifiée 80PLUS Platinum, elle offre un très haut rendement énergétique. Un choix idéal pour les configurations silencieuses et les configurations gaming.', '128.95', 7),
(50, 1, 'img/alim/bequiet650.png', 'be quiet! Straight Power 11 650W 80PLUS Platinum\r\n', 'L\'alimentation modulaire be quiet! Straight Power 11 Platinum offre un fonctionnement silencieux sans compromis au niveau de la qualité. Certifiée 80PLUS Platinum, elle offre un très haut rendement énergétique. Un choix idéal pour les configurations silencieuses et les configurations gaming.', '149.95', 7),
(51, 1, 'img/alim/bequiet750.png', 'be quiet! Straight Power 11 750W 80PLUS Platinum', 'L\'alimentation modulaire be quiet! Straight Power 11 Platinum offre un fonctionnement silencieux sans compromis au niveau de la qualité. Certifiée 80PLUS Platinum, elle offre un très haut rendement énergétique. Un choix idéal pour les configurations silencieuses et les configurations gaming.', '161.95', 7),
(52, 1, 'img/alim/bequiet850.png', 'be quiet! Straight Power 11 850W 80PLUS Platinum', 'L\'alimentation modulaire be quiet! Straight Power 11 Platinum offre un fonctionnement silencieux sans compromis au niveau de la qualité. Certifiée 80PLUS Platinum, elle offre un très haut rendement énergétique. Un choix idéal pour les configurations silencieuses et les configurations gaming.', '184.94', 7),
(53, 1, 'img/ssd/970evo.png', 'Samsung SSD 970 EVO Plus M.2 PCIe NVMe 250 Go', 'Le Samsung 970 EVO Plus M.2 PCIe 3.0 4x NVMe 1.3 dans sa version 250 Go transporte votre PC dans un autre niveau de performances grâce à ses vitesses pouvant atteindre 3.5 Go/s en lecture et 2.3 Go/s en écriture et propose un cache LPDDR4 de 512 Mo.', '84.95', 8),
(54, 1, 'img/ssd/980pro.png', 'Samsung SSD 980 PRO M.2 PCIe NVMe 500 Go', 'Le disque SSD 980 PRO 500 Go de Samsung permet de métamorphoser les performances et la réactivité de votre machine. Bénéficiant de vitesses stratosphériques et d\'une endurance très élevée, le Samsung 980 PRO s\'appuie sur l\'interface PCI-E 4.0 x4 ainsi que sur la technologie NVMe 1.3c.', '189.95', 8),
(55, 1, 'img/ssd/860pro.png', 'Samsung SSD 860 PRO 1 To', 'Alimenté par la technologie V-NAND et un contrôleur basé sur un algorithme solide, le SSD 860 PRO est spécialement conçu pour supporter les lourdes charges de travail que peuvent connaître les ordinateurs haut de gamme, les postes de travail et les NAS (serveur de stockage en réseau).', '329.95', 8),
(56, 1, 'img/ssd/870qvo.png', 'Samsung SSD 870 QVO 2 To', 'Grande fiabilité, capacité de stockage de 1 à 8 To, vitesses supérieures, le disque SSD 870 QVO signé Samsung affirme son potentiel une fois installé dans votre ordinateur ! Porté par la technologie V-NAND et le contrôleur MKX basé sur l\'algorithme ECC, ce modèle se montre fiable et performant.', '289.95', 8),
(57, 1, 'img/ssd/240gb.png', 'Kingston SSD A400 240 Go', 'Le SSD A400 240 Go de Kingston améliore considérablement la réactivité de votre système actuel avec des vitesses de démarrage, de chargement et de transfert par rapport aux disques durs classiques. Il offre des vitesses lecture et d\'écriture allant jusqu\'à 500Mo/s et 350Mo/s.', '44.95', 8),
(58, 1, 'img/ssd/480gb.png', 'Kingston DC450R 480 Go', 'Le Kingston DC450R est un disque SSD avec interface SATA 6Gbps à hautes performances basé sur des puces mémoire 3D TLC NAND, et conçu pour les charges de travail à lecture intensive. Ce disque SSD optimisé délivre des performances de haut niveau indispensables pour les SSD destinés aux datacenters.', '119.95', 8),
(59, 1, 'img/ssd/1000gb.png', 'Kingston KC600 1 To', 'Le SSD KC600 1 To de Kingston améliore considérablement la réactivité de votre système actuel. Il propose des vitesses de lecture et d\'écriture allant jusqu\'à 550 Mo/s et 520 Mo/s. Il supporte une suite de sécurité intégrale (TCG Opal, AES 256 bits, eDrive).', '164.95', 8),
(60, 1, 'img/ssd/2000gb.png', 'Kingston KC2500 2 To', 'Le SSD Kingston KC2500 avec son interface M.2 PCIe 3.0 x4 NVMe propose des débits de 3500 Mo/s en lecture et 2900 Mo/s en écriture (suivant les modèles) et dispose de capacité à partir de 250 Go pour s\'adapter aux besoins de votre PC ou de votre station de travail.', '529.94', 8),
(61, 1, 'img/dd/barracuda.png', 'Seagate BarraCuda 1 To (ST1000DM010)', 'Optez pour une grande capacité de stockage avec le disque dur Seagate BarraCuda 1 To. Cette gamme domine le marché en proposant les meilleures capacités pour les ordinateurs de bureau et périphériques mobiles. Ces disques conviennent parfaitement aux mises à niveau et à tous les budgets.', '51.95', 9),
(62, 1, 'img/dd/skyhawk.png', 'Seagate SkyHawk 1 To', 'Optimisés pour les magnétoscopes numériques et enregistreurs vidéo en réseau, les disques de surveillance SkyHawk 1 To sont conçus pour les charges de travail continues.', '56.95', 9),
(63, 1, 'img/dd/ironwolf.png', 'Seagate IronWolf 1 To', 'Que vous soyez particuliers ou professionnels créatifs, pour une utilisation au bureau ou à domicile, le disque dur pour NAS Seagate IronWolf 1 To est la solution de stockage qu\'il vous faut. Il est optimisé AgileArray pour les solutions NAS et adapté à un usage NAS 1 à 8 baies.', '71.95', 9),
(64, 1, 'img/dd/firecuda.png', 'Seagate FireCuda SSHD 1 To', 'Vous détestez attendre que votre application ou votre jeu se charge ? FireCuda combine la technologie SSD à un disque dur traditionnel pour obtenir des performances similaires à celles d\'un disque SSD, tout en proposant des capacités caractéristiques des disques standard.', '74.95', 9),
(65, 1, 'img/dd/blue.png', 'Western Digital WD Blue 1 To SATA 6Gb/s 64 Mo', 'Augmentez la capacité de stockage de votre PC grâce aux disques durs WD Blue, une gamme conçue spécialement pour les PC de bureau et les PC tout-en-un. La famille WD Blue offre désormais une capacité de stockage allant jusqu\'à 6 To.', '47.95', 9),
(66, 1, 'img/dd/purple.png', 'Western Digital WD Purple Surveillance Hard Drive 1 To SATA 6Gb/s', 'Les disques durs conçus pour la vidéosurveillance WD Purple offrent la technologie exclusive AllFrame pour vous apporter la meilleure fiabilité possible et plus de tranquillité d\'esprit en installant le système de sécurité de votre maison ou de votre PME.', '54.95', 9),
(67, 1, 'img/dd/red.png', 'Western Digital WD Red 1 To SATA 6Gb/s', ' Les disques durs WD Red offrent un large éventail de solutions pour les clients désireux de mettre en place un stockage NAS performant. Conçus pour les systèmes NAS comptant de 1 à 8 baies, les disques WD Red permettent de stocker la totalité de précieuses données.', '77.95', 9),
(68, 1, 'img/dd/black.png', 'Western Digital WD Black Mobile 1 To', 'Conçus pour les PC portables haut de gamme, le disque dur WD Black Mobile ultra performant associe capacité et vitesse afin de booster le PC sans remettre en question l\'autonomie sur batterie ou le confort acoustique.', '79.94', 9),
(69, 1, 'img/refroid/wings.png', 'be quiet! Pure Wings 2 120mm', 'Les modèles Pure Wings 2 sont les dignes descendants des Silents Wings et Shadow Wings, maintes fois récompensés par la presse. De nombreuses améliorations ont été portées à la gamme pour parvenir à l\'objectif ultime d\'allier performances et silence d\'or.', '11.95', 10),
(70, 1, 'img/refroid/nzxt.png', 'NZXT Aer RGB 2 140 mm', 'Les ventilateurs NZXT Aer RGB 2 vont assurer un débit d\'air optimal et apporteront de la couleur à votre boitier. Ils vont s\'intégrer au système HUE 2 pour une personnalisation avancée. Vous aurez la possibilité de connecter jusqu\'à 5 ventilateurs par canal ou de combiner avec tout accessoire HUE 2.', '39.95', 10),
(71, 1, 'img/refroid/thermal.png', 'Thermaltake Pure 20 ARGB', 'Le Thermaltake Pure 20 ARGB est un ventilateur pour boîtier permettant d\'apporter un design personnalisable à votre boitier sans sacrifier les performances en matière de refroidissement. Chaque ventilateur dispose de LEDs adressables sur 16.8 millions de couleurs.', '54.95', 10),
(72, 1, 'img/refroid/corsair.png', 'Corsair SP120 RGB PRO (x3) et Ligthing Node CORE', 'Obtenez un refroidissement très efficace de votre boîtier grâce aux ventilateurs Corsair Corsair SP120 RGB PRO. Ces ventilateurs Corsair de 120 mm sauront vous offrir un flux d\'air sous haute pression ultra efficace.', '64.94', 10),
(73, 1, 'img/refroid/slim.png', 'be quiet! Pure Rock Slim', 'Doté d\'un ventilateur de 92 mm, le Pure Rock Slim n\'excède jamais 25.4 dB, même lorsqu\'il tourne à plein régime, soit à 2000 tours/min. Le ventilateur compte sept pales optimisées pour garantir un flux d\'air maximal en limitant les turbulences qui peuvent s\'avérer bruyantes.', '29.95', 11),
(74, 1, 'img/refroid/darkslim.png', 'be quiet! Dark Rock Slim', 'Le Dark Rock Slim de be quiet! offre des performances de refroidissement exceptionnellement élevées de 180 W TDP et un fonctionnement quasi inaudible. Il est donc idéal pour toutes les configurations haut de gamme qui présentent un espace limité.', '62.94', 11),
(75, 1, 'img/refroid/rock4.png', 'be quiet! Dark Rock 4', 'Le Dark Rock 4 de Be Quiet! est la nouvelle itération du constructeur Allemande de son fer de lance en matière de ventirad. Au menu de cette nouvelle version, plus de performances, un montage facilité tout cela dans un silence de fonctionnement toujours aussi impeccable avec un SilentWings 135mm.', '76.94', 11),
(76, 1, 'img/refroid/pro4.png', 'be quiet! Dark Rock PRO 4', 'Le DARK ROCK PRO 4 de be quiet! est un ventilateur processeur hautes performances au design spectaculaire. Silencieux et ultra-efficace, il se montre capable de dissiper la chaleur des plus hauts TDP (jusqu\'à 250W), une aubaine pour les fans d\'overclocking et les joueurs ultra-exigeants.', '89.95', 11),
(77, 1, 'img/refroid/H75.png', 'Corsair Hydro Series H75 V2', 'Le refroidisseur H75 v2 Hydro Series est un refroidisseur liquide pour processeur tout en un hautes performances équipé d\'un radiateur de 120 mm. Le radiateur de 120 mm et les 2 ventilateurs SP120 PWM assurent l\'excellente dissipation thermique dont vos processeurs ont besoin.', '109.95', 12),
(78, 1, 'img/refroid/H100I.png', 'Corsair Hydro Series H100x', 'Le H1100x Hydro Series est un refroidisseur liquide de processeur, complet et très performant qui fonctionne avec des fixations standard pour radiateur de 240 mm. Le radiateur de 240 mm et le double ventilateur SP120 PWM assurent l\'excellente dissipation thermique.', '109.95', 12),
(79, 1, 'img/refroid/H80.png', 'Corsair Hydro Series H80i v2 Hydro Series', 'Le H80i v2 Hydro Series est un refroidisseur liquide de processeur, complet et très performant qui fonctionne avec des fixations standard pour radiateur de 120 mm. Le radiateur extra-épais de 49 mm x 120 mm et le double ventilateur SP120L PWM assurent l\'excellente dissipation thermique.', '129.95', 12),
(80, 1, 'img/refroid/H100X.png', 'Corsair Hydro Series H100i PLATINUM', 'Refroidissement liquide pour processeur, le H100i PLATINUM Hydro Series est un kit complet particulièrement performant pour les boîtiers équipés de fixations pour radiateur de 240 mm. Le radiateur de 240 mm et deux ventilateurs ML 120 PWM refroidiront au mieux votre processeur surcadencé.', '159.95', 12),
(81, 1, 'img/refroid/M22.png', 'NZXT Kraken M22', 'Améliorez le refroidissement de votre processeur et le silence de votre boîtier avec le kit NZXT Kraken M22 ! Ce tout nouveau Kraken Series est équipé des contrôles les plus avancés jamais inclus dans un refroidisseur liquide tout-en-un.', '99.95', 12),
(82, 1, 'img/refroid/X63.png', 'NZXT Kraken X63', 'Le watercooling AiO NZXT Kraken X63 vous apporte des performances de refroidissement optimales grâce à ses ventilateurs Aer P à haute pression statique et une personnalisation poussée grâce au logiciel CAM. La gamme Kraken X 3 Series propose un connecteur HUE 2 pour encore plus de possibilité en RGB.', '179.95', 12),
(83, 1, 'img/refroid/X73.png', 'NZXT Kraken X73', 'Le watercooling AiO NZXT Kraken X73 vous apporte des performances de refroidissement optimales grâce à ses ventilateurs Aer P à haute pression statique et une personnalisation poussée grâce au logiciel CAM. La gamme Kraken X 3 Series propose un connecteur HUE 2 pour encore plus de possibilité en RGB.', '219.95', 12),
(84, 1, 'img/refroid/Z63.png', 'NZXT Kraken Z63', 'Le watercooling AiO NZXT Kraken Z63 vous apporte des performances de refroidissement optimales grâce à ses ventilateurs Aer P à haute pression statique et une personnalisation poussée grâce au logiciel CAM. La pompe est munie d\'un écran LCD de 2.36\" pour afficher ce que vous souhaitez.', '289.95', 12),
(85, 1, 'img/periph/acer.png', 'Acer 23.6\" LED - KG241Qbmiix', 'Gagnez en confort avec le moniteur Acer KG241Qbmiix ! Grâce à son grand écran de 23.6 pouces avec résolution Full HD, il offre un grand confort visuel. Avec son temps de réponse rapide de 1 ms et sa compatibilité AMD Freesync, il offre aussi un excellent potentiel de fluidité.', '119.95', 13),
(86, 1, 'img/periph/benq.png', 'BenQ 23.8\" LED - GW2475H', 'Parfaitement adapté aux besoins du quotidien, le moniteur BenQ GW2475H dévoilera rapidement toutes ses qualités pour améliorer votre productivité. Profitez d\'une dalle IPS Full HD de 23.8 pouces, d\'un design aux bords fins, d\'un confort oculaire supérieur et d\'une connectique pratique.', '119.00', 13),
(87, 1, 'img/periph/samsung.png', 'Samsung 24\" LED - C24F396FHU', 'Avec ce nouvel écran incurvé 24\" Samsung C24F396FHU, vous entrez dans une nouvelle ère des expériences très immersives notamment à la courbure de 1800 mm et avec un rendu incroyablement profond du taux de contraste de 3000:1. Il intègre la technologie AMD Freesync et le Mode Jeu.', '139.95', 13),
(88, 1, 'img/periph/iiyama.png', 'iiyama 23.8\" LED - G-Master G2470HSU-B1 Red Eagle', 'L\'écran iiyama G-Master G2470HSU-B1 Red Eagle vous assure la victoire ! La dalle Fast IPS 23.8 pouces à résolution Full HD s\'accompagne de qualités gaming supérieures (0.8 ms, 165 Hz, FreeSync Premium) pour terrasser l\'ensemble de vos adversaires.', '199.96', 13),
(89, 1, 'img/periph/iiyama28.png', 'iiyama 28\" LED - ProLite X2888HS-B2', ' Profitez d\'un parfait confort visuel avec le moniteur iiyama ProLite X2888HS-B2 ! Équipé d\'un superbe écran MVA Full HD de 28 pouces, il est capable d\'afficher 95% de la gamme de couleurs NTSC. Le X2888HS-B2 est doté de la technologie VA qui offre une superbe reproduction des couleurs.', '219.96', 13),
(90, 1, 'img/periph/samsung28.png', 'Samsung 28\" LED - U28E590D', 'Avec son bel écran 28\" parfaitement mis en valeur par un pied en métal haut de gamme, le moniteur Samsung U28E590D vous offre une qualité d\'image exceptionnelle pour toutes vos utilisations. Pour cela, il s\'appuie sur une résolution 3840 x 2160p à 60 Hz pouvant afficher jusqu\'à 8 millions de pixels.', '259.94', 13),
(91, 1, 'img/periph/benq28.png', 'BenQ 28\" LED - EL2870U', 'Le moniteur BenQ 28\" LED - EL2870U dispose de nombreuses technologies dédiées au gaming et au multimédia. Grâce à sa dalle TN très réactive, son contraste natif de 1000:1 et sa compatibilité HDR, votre contenu multimédia prend une nouvelle dimension et le jeu es encore plus immersif.', '299.95', 13),
(92, 1, 'img/periph/acer28.png', 'Acer 28\" LED - Nitro XV280Kbmiiprx', 'Profitez d\'une qualité visuelle 4K HDR10 sur votre moniteur Acer XV280Kbmiiprx et partez pour une expérience visuelle intense et confortable. Ce modèle IPS de 28\" dévoile des couleurs naturelles avec de larges angles de vision, un design épuré aux bords fins et une protection oculaire avancée.', '419.95', 13),
(93, 1, 'img/periph/razerclavier.png', 'Razer BlackWidow V3 TKL (switches Razer Green)', ' Conçu spécifiquement pour le jeu, le Razer BlackWidow V3 TKL est un clavier compact armé de switches Razer Green afin de vous offrir une exécution précise avec une sensation tactile. Prenez ainsi facilement le dessus sur vos adversaires lors de duels.', '111.95', 14),
(94, 1, 'img/periph/logitechclavier.png', 'Logitech G Pro (Clavier)', 'Foncez vers la victoire avec ce clavier Logitech G Pro. Au format TKL (sans pavé numérique), il est spécialement adapté pour les tournois et les parties endiablées. Ce clavier gaming est équipé des switches mécaniques tactiles avancés GX Blue pour un retour audible et tactile.', '129.95', 14),
(95, 1, 'img/periph/corsairclavier.png', 'Corsair Gaming K70 RGB MK.2 (Cherry MX Red)', 'Imposez votre style sur les jeux PC grâce à toutes les qualités du clavier gamer Corsair Gaming K70 RGB MK.2. Ce modèle est doté d\'un rétro-éclairage multicolore pour un style unique et de switches Cherry MX Red pour un jeu rapide et fluide.', '199.95', 14),
(96, 1, 'img/periph/steelclavier.png', 'SteelSeries Apex Pro', 'Véritable bond en avant, le clavier SteelSeries Apex Pro vous permet de régler chaque touche en fonction de votre niveau de sensibilité préféré, que ce soit pour le gaming, le travail ou autre chose. Plus rapide et résistant que jamais, il sera l\'arme ultime pour remporter des victoires.', '259.94', 14),
(97, 1, 'img/periph/steelsouris.png', 'SteelSeries Rival 3 Wireless (noir)', ' Possédant une redoutable efficacité, la SteelSeries Rival 3 Wireless embarque un capteur optique de 18 000 dpi, 6 boutons programmables et un rétro-éclairage RGB personnalisable. Parfaitement adaptée pour une utilisation intensive, cette souris sans fil possède une autonomie longue durée.', '59.96', 15),
(98, 1, 'img/periph/corsairsouris.png', 'Corsair Gaming Harpoon RGB Wireless', 'Prenez l\'ascendant à l\'aide de la souris Corsair Gaming Harpoon RGB Wireless. Ce modèle optique dispose d\'une résolution de 10 000 DPI, de 6 boutons programmables, d\'un rétroéclairage multicolore et d\'un fonctionnement avec ou sans fil avec un poids plume de seulement 99 grammes.', '69.95', 15),
(99, 1, 'img/periph/logitechsouris.png', 'Logitech G Pro HERO (Souris)', 'Profitez d\'une vitesse et une précision exceptionnelles avec la souris Logitech G Pro HERO. Spécialement conçue pour l\'eSport, elle intègre un capteur optique Hero de 16 000 dpi pour que chaque mouvement puisse faire mouche.', '79.94', 15),
(100, 1, 'img/periph/razersouris.png', 'Razer Deathadder v2', 'Avec la souris Razer DeathAdder v2, offrez-vous une arme redoutable pour venir à bout des plus coriaces adversaires. En effet, elle intègre un capteur optique Razer Focus+ de 20000 dpi afin de vous offrir une précision inégalée.', '84.94', 15),
(101, 1, 'img/apple/AIRM1.png', 'Apple MacBook Air M1 Argent 8Go/256 Go (MGN93FN/A)', 'Le MacBook Air, le plus fin et léger des portables Apple, est métamorphosé par la puissante puce Apple M1. Avec un gain de performances spectaculaire pour le CPU et le GPU. Et jusqu\'à 18 heures d\'autonomie. Le portable Apple le plus fin et le plus léger est métamorphosé par la puce Apple M1.', '1129.93', 16),
(102, 1, 'img/apple/AIR.png', 'Apple MacBook Air (2020) 13\" avec écran Retina Argent (MVH42FN/A)', 'Le nouveau MacBook Air (2020) c\'est : Un écran Retina avec affichage True Tone, un processeur Intel Core i5 de 10e génération, 8 Go de RAM, un SSD au format M.2 PCIe, un trackpad Force Touch, deux ports Thunderbolt 3 et le capteur d\'empreinte digitale Touch ID.', '1279.95', 16),
(103, 1, 'img/apple/PROM1.png', 'Apple MacBook Pro M1 13.3\" Gris sidéral 8Go/256 Go (MYD82FN/A)', 'Le MacBook Pro 13 pouces est complètement transformé par la puce Apple M1. Il offre désormais jusqu\'à 2,8 fois plus de puissance de traitement, des performances graphiques 5 fois plus rapides et jusqu\'à 20 heures d\'autonomie, un record sur Mac.', '1449.96', 16),
(104, 1, 'img/apple/PRO.png', 'Apple MacBook Pro 16\" avec Touch Bar Argent (MVVL2FN/A)', 'Gagnez en confort avec l\'Apple MacBook Pro avec écran Retina de 16 pouces ! Avec un affichage de haute qualité, une autonomie longue durée et un clavier Magic Keyboard avec Touch Bar, il offre un parfait confort de travail !', '2689.94', 16),
(105, 1, 'img/apple/mini.png', 'Apple iPad mini 5 Wi-Fi + Cellular 256 Go Gris Sidéral', 'Séduisant par son côté mini, surprenant par ses performances, l\'iPad mini 5 est plus que jamais à son maximum ! Tout en finesse et en légèreté, il trouve naturellement sa place dans votre quotidien. A la maison comme en déplacement, sa puce A12 Bionic et son écran Retina 7.9\" font merveille.', '769.94', 17),
(106, 1, 'img/apple/ipadair.png', 'Apple iPad Air (2020) Wi-Fi + Cellular 64 Go Gris Sidéral', 'Le nouvel iPad Air est plus polyvalent que jamais. Grâce à son superbe écran Liquid Retina de 10,9 pouces avec large gamme de couleurs, vos photos, vidéos et jeux vidéo affichent un niveau de détails saisissant de réalisme.', '809.95', 17),
(107, 1, 'img/apple/pro20.png', 'Apple iPad Pro (2020) 11 pouces 256 Go Wi-Fi + Cellular Gris Sidéral', 'Le nouvel iPad Pro signé Apple possède un écran Liquid Retina 120 Hz, une puce A12Z Bionic, un chipstet graphique 8 coeurs et trois capteurs photo (2 à l\'arrière + 1 à l\'avant). Porté par iPadOS, il se dote également du Wi-Fi 6, des données 4G-LTE Advanced, Bluetooth 5.0, 9h d\'autonomie et l\'USB-C.', '1179.96', 17),
(108, 1, 'img/apple/pro18.png', 'Apple iPad Pro (2018) 11 pouces 1 To Wi-Fi Argent', 'Et si votre prochain ordinateur était finalement un iPad Pro ? Laissez-vous séduire par la puissance, les fonctionnalités, le design et les innovations de l\'Apple iPad Pro 2018, surprenant à bien des égards et capable de vous faire oublier votre ordinateur.', '1499.95', 17),
(109, 1, 'img/apple/11.png', 'Apple iPhone 11 64 Go Noir', 'Conçu pour élargir vos horizons, l\'iPhone 11 d\'Apple vous séduira en un rien de temps. Arborant des matériaux de haute qualité, il vous en mettra plein les yeux grâce à son magnifique écran Liquid Retina HD de 6.1 pouces à résolution 828 x 1792 pixels.', '689.95', 18),
(110, 1, 'img/apple/12mini.png', 'Apple iPhone 12 mini 64 Go Noir', 'L\'iPhone 12 mini repousse toutes les limites du possible avec la connectivité 5G ultra-rapide. La puce A14 Bionic, la plus rapide sur smartphone. Un nouveau double appareil photo. Et un magnifique écran Super Retina XDR, pour ne pas passer à côté du moindre détail.', '809.95', 18),
(111, 1, 'img/apple/11pro.png', 'Apple iPhone 11 Pro 64 Go Gris Sidéral', 'Premier iPhone à décrocher l\'appellation Pro, l\'Apple iPhone Pro va vous en mettre plein les yeux. Avec sa finition exceptionnelle et son design en verre et acier inoxydable, il vous laissera sans voix. Pour cela, il peut s\'appuyer sur son magnifique écran OLED Super Retina XDR de 5.8 pouces.', '1059.95', 18),
(112, 1, 'img/apple/12promax.png', 'Apple iPhone 12 Pro Max 128 Go Graphite', 'iPhone 12 Pro Max. Avec la 5G ultra-rapide. La puce A14 Bionic, la plus rapide sur smartphone. Et un système photo pro qui révolutionne la prise de vues en conditions de faible éclairage. C\'est un bond en avant incroyable.', '1259.95', 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_panier`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_cli`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`num_pro`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `num_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `commande` FOREIGN KEY (`id_cli`) REFERENCES `panier` (`id_panier`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
