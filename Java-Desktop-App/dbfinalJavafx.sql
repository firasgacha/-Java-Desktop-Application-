-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdpidev4`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnement`
--

CREATE TABLE `abonnement` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `descr_ab` varchar(255) DEFAULT NULL,
  `id_act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abonnement`
--

INSERT INTO `abonnement` (`id`, `titre`, `type`, `prix`, `descr_ab`, `id_act`) VALUES
(1, 'hard sprot', 'gold', 160, '3 mois', NULL);

-- --------------------------f------------------------------

--
-- Table structure for table `activite`
--

CREATE TABLE `activite` (
  `id_act` int(11) NOT NULL,
  `categorie_act` varchar(20) DEFAULT NULL,
  `nom_act` varchar(20) DEFAULT NULL,
  `prix_reservation` double DEFAULT NULL,
  `date_act` varchar(10) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_centre` int(11) DEFAULT NULL,
  `cin_coach` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activite`
--

INSERT INTO `activite` (`id_act`, `categorie_act`, `nom_act`, `prix_reservation`, `date_act`, `capacite`, `description`, `id_centre`, `cin_coach`) VALUES
(1, 'Gym', 'Yoga', 30, '2021-04-01', 15, 'Yoga pour la forme', 2, 6995061),
(2, 'Gym', 'Musculation', 50, '2021-04-02', 20, 'Avoir un bon corps avec mohamed bousleh', 2, 6995061),
(3, 'gym', 'gym', 150, '2021-03-11', 20, 'test', 2, 6995061);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `cin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `datee` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`cin`, `nom`, `prenom`, `sexe`, `datee`, `email`, `password`, `telephone`) VALUES
(1, 'admin', 'admin', 'homme', '1998-03-30', 'admin@admin.com', 'admin', 94026575);

-- --------------------------------------------------------

--
-- Table structure for table `centre`
--

CREATE TABLE `centre` (
  `id_centre` int(11) NOT NULL,
  `nom_centre` varchar(30) NOT NULL,
  `tel_centre` varchar(8) NOT NULL,
  `mail_centre` varchar(30) NOT NULL,
  `adr_centre` varchar(50) NOT NULL,
  `type_centre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `centre`
--

INSERT INTO `centre` (`id_centre`, `nom_centre`, `tel_centre`, `mail_centre`, `adr_centre`, `type_centre`) VALUES
(2, 'cyssigym', '55393427', 'cyrine.welhzai@esprit.tn', 'Ariana', 'Gym'),
(15, 'Esprittn', '94026575', 'hassen.trabelsi@esprit.tn', 'Centre Urbain Nord', 'Fitness'),
(16, 'esprit', '55492631', 'syrine.welhazi@gmail.com', 'ariana', 'fitness');

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `cin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`cin`, `nom`, `prenom`, `sexe`, `datee`) VALUES
(6995061, 'Bousleh', 'Mohamed', 'Homme', '1998-02-07'),
(54011100, 'bouseh', 'med', 'Homme', '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `id_pub` int(11) NOT NULL,
  `date_pub` varchar(255) NOT NULL,
  `date_even` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `id_centre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`id_pub`, `date_pub`, `date_even`, `image`, `sujet`, `id_centre`) VALUES
(33, '2021-03-30', '2021-03-31', 'Fitness', 'Sport', 2),
(35, '2021-03-30', '2021-03-31', 'fit', 'sportgym', 2);

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE `membre` (
  `cin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `datee` date NOT NULL,
  `taille` float NOT NULL,
  `poids` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membre`
--

INSERT INTO `membre` (`cin`, `nom`, `prenom`, `sexe`, `datee`, `taille`, `poids`, `email`, `password`, `telephone`) VALUES
(6995061, 'Bousleh', 'Mohamed', 'Homme', '1998-02-07', 180, 60, 'medbouslah@gmail.com', '8968e99e88436e59e24d1fc8b8fbfb92f0fb2c68', 54011100),
(6995062, 'Hssan', 'Trabelsi', 'Homme', '1999-04-29', 180, 60, 'hassen.trabelsi@esprit.tn', 'd733ac1b4efac039229106e72b9bc030cd4133fa', 94026575),
(6995063, 'Cyrine', 'Welhazi', 'Femme', '1998-05-22', 160, 58, 'cyrine.welhazi@esprit.tn', '3d1f6d2137d4ee7d04c3822e469a3cd48d799a30', 55393427),
(6995064, 'Dag', 'Mehdi', 'Homme', '1999-09-03', 185, 110, 'dagrtots@gmail.com', 'e134adc54f5fadca0d923da7a0a979d532364523', 28034090),
(9665533, 'Gacha', 'Firas', 'Homme', '1998-02-13', 185, 75, 'firas.gacha@esprit.tn', 'cbcefc1e486214e48ddeafc37fc896ba2e9e1a5c', 28540703),
(20202020, 'meda', 'bousleha', 'Homme', '2021-03-01', 180, 70, 'medbouslah@gmail.com', 'f101d040d68f2cb6b5d2f6ed0944499c6244f5d1', 54011100);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `num_jour` int(11) DEFAULT NULL,
  `matin` varchar(255) DEFAULT NULL,
  `matin_img` varchar(255) DEFAULT NULL,
  `dejeuner` varchar(255) DEFAULT NULL,
  `dejeuner_img` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `dinner_img` varchar(255) DEFAULT NULL,
  `total_calories` int(11) DEFAULT NULL,
  `id_regime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `description`, `num_jour`, `matin`, `matin_img`, `dejeuner`, `dejeuner_img`, `dinner`, `dinner_img`, `total_calories`, `id_regime`) VALUES
(1, 'Menu proteine', 1, 'Salade', 'ZrsDbtv3.jpg', 'Viande', 'Zs3bjqLE.jpg', 'Oeuf', 'WUH8ikgs.jpg', 2330, 1),
(2, 'test', 2, 'test', '5ZTGGtV9.jpg', 'tets2', 'v92Nu5no.jpg', 'test3', '8y5ff7JR.jpg', 900, 2),
(3, 'test', 2, 'test', 'TkAXbkYK.jpg', 'tets2', 'N0r7OGi9.jpg', 'test3', 'MnmtUXXu.jpg', 900, 2),
(4, 'test', 2, 'test', 'AI2UC35a.jpg', 'tets2', '9rUtUfos.jpg', 'test3', '0LedGPKY.jpg', 900, 2);

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `nom_act` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `capacite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `panier`
--

INSERT INTO `panier` (`id_panier`, `nom_act`, `prix`, `capacite`) VALUES
(1, 'Musculation', 50, 20),
(2, 'Musculation', 50, 20),
(3, 'Musculation', 50, 20),
(4, 'Yoga', 30, 15);

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `etat` varchar(255) DEFAULT 'En cours',
  `cin_membre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reclamation`
--

INSERT INTO `reclamation` (`id`, `nom`, `prenom`, `mail`, `type`, `date`, `description`, `etat`, `cin_membre`) VALUES
(1, 'Gacha', 'Firas', 'firas.gacha@esprit.tn', 'Probléme de connexion', '2021-03-30', 'il y a un probleme au payement', 'En cours', NULL),
(2, 'Gacha', 'Firas', 'firas.gacha@esprit.tn', 'Probléme de connexion', '2021-03-30', 'il y a un probleme au payement', 'En cours', NULL),
(3, 'Gacha', 'Firas', 'firas.gacha@esprit.tn', 'Probléme de connexion', '2021-03-30', 'il y a un probleme au payement', 'En cours', NULL),
(4, 'Gacha', 'Firas', 'firas.gacha@esprit.tn', 'Probléme d\'application', '2021-03-30', 'didv,di', 'Traité', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regime`
--

CREATE TABLE `regime` (
  `id_regime` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regime`
--

INSERT INTO `regime` (`id_regime`, `type`, `description`, `image`) VALUES
(1, 'LE REGIME HYPERPROTEINE', 'Cest lun des regimes les plus connus', 'nMDcKLTV.jpg'),
(2, 'Regime proteine', 'Riche en proteineeeee', 'BP72H2gT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `cin_membre` int(11) DEFAULT NULL,
  `date_act` date NOT NULL,
  `nb_place` int(11) NOT NULL,
  `id_act` int(11) DEFAULT NULL,
  `id_panier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `nom`, `prenom`, `cin_membre`, `date_act`, `nb_place`, `id_act`, `id_panier`) VALUES
(1, 'hamza', 'merhabene', 6995064, '2021-03-16', 2, NULL, NULL),
(2, 'firas', 'gach', 9665533, '2021-03-16', 1, NULL, NULL),
(4, 'mohamed', 'ali', 6995064, '2021-06-05', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_pub` int(11) NOT NULL,
  `date_pub` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id_centre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_pub`, `date_pub`, `text`, `id_centre`) VALUES
(6, '2021-03-29', 'Gym', 2),
(7, '2021-03-16', 'bonjour vs ztes le bienvenu', 2);

-- --------------------------------------------------------

--
-- Table structure for table `suivre`
--

CREATE TABLE `suivre` (
  `date_deb` date DEFAULT NULL,
  `nb_jour_restant` int(11) NOT NULL,
  `date_fin` date DEFAULT NULL,
  `id_regime` int(11) NOT NULL,
  `cin_membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id_track` int(11) NOT NULL,
  `old_poids` varchar(50) DEFAULT NULL,
  `imc` double DEFAULT NULL,
  `cin_membre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_abonnement_act` (`id_act`);

--
-- Indexes for table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id_act`),
  ADD KEY `FK_act_centre` (`id_centre`),
  ADD KEY `FK_act_coach` (`cin_coach`);

--
-- Indexes for table `centre`
--
ALTER TABLE `centre`
  ADD PRIMARY KEY (`id_centre`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `FK_evt_centre` (`id_centre`);

--
-- Indexes for table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `FK_menu_regime` (`id_regime`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reclamation_membre` (`cin_membre`);

--
-- Indexes for table `regime`
--
ALTER TABLE `regime`
  ADD PRIMARY KEY (`id_regime`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `FK_reservation_membre` (`cin_membre`),
  ADD KEY `FK_reservation_act` (`id_act`),
  ADD KEY `FK_reservation_panier` (`id_panier`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `FK_status_centre` (`id_centre`);

--
-- Indexes for table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`id_regime`,`cin_membre`),
  ADD KEY `FK_suivre_membre` (`cin_membre`),
  ADD KEY `id_regime` (`id_regime`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id_track`),
  ADD KEY `FK_track_membre` (`cin_membre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `activite`
--
ALTER TABLE `activite`
  MODIFY `id_act` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `centre`
--
ALTER TABLE `centre`
  MODIFY `id_centre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_pub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regime`
--
ALTER TABLE `regime`
  MODIFY `id_regime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_pub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id_track` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `FK_abonnement_act` FOREIGN KEY (`id_act`) REFERENCES `activite` (`id_act`);

--
-- Constraints for table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `FK_act_centre` FOREIGN KEY (`id_centre`) REFERENCES `centre` (`id_centre`),
  ADD CONSTRAINT `FK_act_coach` FOREIGN KEY (`cin_coach`) REFERENCES `coach` (`cin`);

--
-- Constraints for table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `FK_evt_centre` FOREIGN KEY (`id_centre`) REFERENCES `centre` (`id_centre`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_menu_regime` FOREIGN KEY (`id_regime`) REFERENCES `regime` (`id_regime`);

--
-- Constraints for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_reclamation_membre` FOREIGN KEY (`cin_membre`) REFERENCES `membre` (`cin`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_reservation_act` FOREIGN KEY (`id_act`) REFERENCES `activite` (`id_act`),
  ADD CONSTRAINT `FK_reservation_membre` FOREIGN KEY (`cin_membre`) REFERENCES `membre` (`cin`),
  ADD CONSTRAINT `FK_reservation_panier` FOREIGN KEY (`id_panier`) REFERENCES `panier` (`id_panier`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `FK_status_centre` FOREIGN KEY (`id_centre`) REFERENCES `centre` (`id_centre`);

--
-- Constraints for table `suivre`
--
ALTER TABLE `suivre`
  ADD CONSTRAINT `FK_suivre_membre` FOREIGN KEY (`cin_membre`) REFERENCES `membre` (`cin`),
  ADD CONSTRAINT `FK_suivre_regime` FOREIGN KEY (`id_regime`) REFERENCES `regime` (`id_regime`);

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `FK_track_membre` FOREIGN KEY (`cin_membre`) REFERENCES `membre` (`cin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
