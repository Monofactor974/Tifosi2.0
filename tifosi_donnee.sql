-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 mai 2025 à 21:19
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Jean Dupont', 35, 75001),
(2, 'Marie Curie', 42, 75002),
(3, 'Albert Einstein', 50, 75003),
(4, 'Ada Lovelace', 30, 75004),
(5, 'Isaac Newton', 45, 75005);

--
-- Déchargement des données de la table `client_focaccia`
--

INSERT INTO `client_focaccia` (`id_client`, `id_focaccia`, `date_achat`) VALUES
(1, 3, '2025-05-10'),
(2, 5, '2025-05-11'),
(3, 1, '2025-05-12'),
(4, 6, '2025-05-13'),
(5, 8, '2025-05-14');

--
-- Déchargement des données de la table `client_menu`
--

INSERT INTO `client_menu` (`id_client`, `id_menu`, `jour_commande`) VALUES
(1, 1, '2025-05-10'),
(2, 2, '2025-05-11'),
(3, 3, '2025-05-12'),
(4, 1, '2025-05-13'),
(5, 2, '2025-05-14');

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

--
-- Déchargement des données de la table `focaccia_ingredient`
--

INSERT INTO `focaccia_ingredient` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 1),
(3, 3),
(3, 5),
(3, 7),
(3, 8),
(3, 9),
(3, 12),
(4, 3),
(4, 7),
(4, 8),
(4, 9),
(4, 13),
(4, 14),
(5, 1),
(5, 2),
(5, 3),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 15),
(5, 16),
(6, 1),
(6, 2),
(6, 3),
(6, 8),
(6, 9),
(6, 10),
(6, 17),
(6, 18),
(6, 19),
(7, 1),
(7, 2),
(7, 3),
(7, 8),
(7, 9),
(7, 10),
(7, 17),
(7, 20),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 13),
(8, 20),
(8, 21),
(8, 22);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Base tomate'),
(2, 'Mozarella'),
(3, 'Cresson'),
(4, 'Jambon fumé'),
(5, 'Ail'),
(6, 'Artichaut'),
(7, 'Champignon'),
(8, 'Parmesan'),
(9, 'Poivre'),
(10, 'Olive noire'),
(11, 'Gorgonzola'),
(12, 'Raclette'),
(13, 'Emmental'),
(14, 'Oignon'),
(15, 'Jambon cuit'),
(16, 'Olive verte'),
(17, 'Bacon'),
(18, 'Ananas'),
(19, 'Piment'),
(20, 'Pomme de terre'),
(21, 'Chèvre'),
(22, 'Œuf');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`) VALUES
(1, 'Menu Classico', 14.9),
(2, 'Menu Speciale', 16.5),
(3, 'Menu Gourmet', 18);

--
-- Déchargement des données de la table `menu_boisson`
--

INSERT INTO `menu_boisson` (`id_menu`, `id_boisson`) VALUES
(1, 1),
(2, 4),
(3, 10);

--
-- Déchargement des données de la table `menu_focaccia`
--

INSERT INTO `menu_focaccia` (`id_menu`, `id_focaccia`) VALUES
(1, 5),
(2, 6),
(3, 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
