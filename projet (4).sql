-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 juil. 2024 à 21:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Hommes'),
(2, 'Femmes'),
(3, 'Enfants'),
(4, 'Accessoires'),
(5, 'Chaussures');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `prix` double NOT NULL,
  `dateCmd` date NOT NULL,
  `iduser` int(30) NOT NULL,
  `carte` int(15) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `etatCommande` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `prix`, `dateCmd`, `iduser`, `carte`, `code`, `datep`, `etatCommande`) VALUES
(3, 254, '2024-06-11', 1, 0, 123, '2024-06-29', 'payée');

-- --------------------------------------------------------

--
-- Structure de la table `lignecommande`
--

CREATE TABLE `lignecommande` (
  `id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `idc` int(11) NOT NULL,
  `idp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `taille` varchar(255) NOT NULL,
  `Prix` varchar(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `nom`, `description`, `taille`, `Prix`, `categorie_id`, `image`) VALUES
(1, 'T-shirt Homme', 'T-shirt en coton pour hommes', 'M', '19.99', 1, 'tshirt_homme.jpg'),
(3, 'Sweat à Capuche Homme', 'Sweat à capuche confortable', 'L', '29.99', 1, 'sweat_capuche_homme.jpg'),
(4, 'Robe d\'été', 'Robe légère pour l\'été', 'S', '39.99', 2, 'robe_ete.jpg'),
(5, 'Blouse Femme', 'Blouse élégante pour femmes', 'M', '24.99', 2, 'blouse_femme.jpg'),
(6, 'Pantalon Femme', 'Pantalon confortable en lin', '38', '34.99', 2, 'pantalon_femme.jpg'),
(7, 'T-shirt Enfant', 'T-shirt coloré pour enfants', '8 ans', '14.99', 3, 'tshirt_enfant.jpg'),
(8, 'Short Enfant', 'Short en denim pour enfants', '10 ans', '19.99', 3, 'short_enfant.jpg'),
(9, 'Veste Enfant', 'Veste chaude pour enfants', '12 ans', '29.99', 3, 'veste_enfant.jpg'),
(10, 'Casquette', 'Casquette ajustable unisexe', 'Taille unique', '15.99', 4, 'casquette.jpg'),
(11, 'Ceinture', 'Ceinture en cuir pour hommes', '90 cm', '19.99', 4, 'ceinture.jpg'),
(12, 'Écharpe', 'Écharpe en laine', 'Taille unique', '24.99', 4, 'echarpe.jpg'),
(13, 'Baskets', 'Baskets de sport pour hommes', '42', '59.99', 5, 'baskets.jpg'),
(14, 'Sandales', 'Sandales confortables pour femmes', '39', '29.99', 5, 'sandales.jpg'),
(15, 'Bottes Enfant', 'Bottes imperméables pour enfants', '34', '39.99', 5, 'bottes_enfant.jpg'),
(22, 'Jean Slim Homme', 'Jean slim ajusté pour hommes', '32', '49.99', 1, 'jean_slim_homme.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `idu` int(15) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(20) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prénom`, `email`, `telephone`, `mdp`, `adresse`) VALUES
(1, 'n', 'p', 'e', 123456, '123456', 'a');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idc` (`idc`),
  ADD KEY `idp` (`idp`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idu` (`idu`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mdp` (`mdp`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD CONSTRAINT `lignecommande_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `lignecommande_ibfk_2` FOREIGN KEY (`idp`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
