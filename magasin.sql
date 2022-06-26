-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 12 Janvier 2021 à 10:27
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `magasin`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_ad` int(10) unsigned NOT NULL,
  `user` varchar(255) NOT NULL,
  `passe` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_ad`, `user`, `passe`) VALUES
(1, 'malek', '20969466'),
(2, 'mahamed', '12345678');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
`id_cat` int(10) unsigned NOT NULL,
  `libeler_produit` varchar(255) NOT NULL,
  `image_cat` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `libeler_produit`, `image_cat`) VALUES
(1, 'Petit Electomenager', 'petit electro/ele.jpg'),
(2, 'Espace Cadeaux', 'cadeau/cade.jpg'),
(3, 'Jouets', 'jouet/dabdoub.jpg'),
(4, 'Cuisine', 'cuisine/cuis.jpg'),
(5, 'Maison Et Deco', 'maison/h.jpg'),
(6, 'Speciale Mariage', 'mariage/k.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
`id_com` int(10) unsigned NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_totale` varchar(255) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `etat` enum('F','T') NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_com`, `nom`, `prenom`, `telephone`, `adresse`, `e_mail`, `quantite`, `prix_totale`, `commentaire`, `etat`, `id_prod`) VALUES
(1, 'malek', 'bouzayani', '20969466', 'Rgueb sidi bouzid', 'malekbouzayani9@gmail.com', 1, '121.4', 'bon ', 'T', 1),
(2, 'malek', 'bouzayani', '20969466', 'Rgueb sidi bouzid', 'malekbouzayani9@gmail.com', 3, '364.2', 'bon ', 'T', 1),
(3, 'mahamed', 'grisi', '75638925', 'gbili', 'attentien.mpc@facebook.com', 4, '536', 'bb', 'F', 2),
(4, 'ahmed', 'hamooda', '35964875', 'hbira mahdiya', 'mahmed9@gmail.com', 2, '154.388', 'mercie', 'F', 3),
(5, 'ahmed', 'ben younes', '22154455', 'zagwen', 'zagwen', 3, '402', 'bien', 'F', 2),
(6, 'ahmed', 'ben taher', '25036954', 'midoun', 'ahmedbentaher@gmail.com', 2, '127.4', 'hhhhh', 'F', 6),
(7, '', '', '', '', '', 1, '120.4', '', 'F', 1),
(8, 'malek', 'bouzayani', '22969466', 'Rgueb sidi bouzid', 'malekbouzayani9@gmail.com', 3, '44.97', 'sqdfqsf', 'F', 11);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
`id_prod` int(10) unsigned NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `caractere` text NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_cat` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_prod`, `nom`, `prix`, `image`, `caractere`, `quantite`, `id_cat`) VALUES
(1, 'Batteur Avec Bol Evertek', '120.800DT', 'petit electro/p.png', 'Batteur avec Bol EVERTEK -Puissance : 350W -5 niveaux de vitesse-Bouton dâ€™Ã©jection pour libÃ©rer les crochets et les batteurs-Jeu de crochets-Jeu dâ€™agitateurs-Bol tournant en plastique-CapacitÃ© du bol : 2L', 16, '1'),
(2, 'Centrifugeuse Tutti Frutti Evertek', '134.000DT', 'petit electro/pp.jpg', 'Centrifugeuse Tutti Frutti Evertek 400W', 20, '1'),
(3, 'Batteur Evertek Splash', '77.194DT', 'petit electro/ppp.jpg', 'Batteur Evertek Splash 350W', 20, '1'),
(4, 'Fer Ã€ Repasser Evertek', '109.175DT', 'petit electro/h.jpg', 'Profitez de sa puissance de 2600 Watts pour le chauffer en seulement quelques\r\nsecondes, de sa semelle en cÃ©ramique afin de finaliser votre repassage en\r\nun temps record !\r\nIron Zen fera du repassage un moment agrÃ©able et simple, oÃ¹ rÃ¨gne le calme\r\net la zÃ©nitudeâ€¦', 20, '1'),
(5, 'Mixeur Arzum', '148.980DT', 'petit electro/hh.jpg', 'Consommation de puissance: 500 Watt\r\nMode de fonctionnement: Fonctionnement sur secteur\r\nSÃ©curitÃ©: Protection anti-dÃ©rapante', 20, '1'),
(6, 'Machine Ã€ Panini Evertek', '63.700DT', 'petit electro/hhh.jpg', 'Machine Ã€ Panini Evertek The Expert 900W', 20, '1'),
(7, 'PORTE CLE', '2.980DT', 'cadeau/b.jpg', 'Espace Cadeaux', 20, '2'),
(8, 'COFFRET PARFUM Chic-Issime', '38.021DT', 'cadeau/aa.jpg', 'Coffrets cadeaux femme', 20, '2'),
(9, 'DEODORANT LOLA', '7.999DT', 'cadeau/a.jpg', 'Emper Lola Deodorant For Women 200 Ml', 20, '2'),
(10, 'COFFRET 2 MUGS', ' 6.999DT', 'cadeau/aaa.jpg', 'COFFRET 2 MUGS', 20, '2'),
(11, 'ALBUM', ' 14.990DT', 'cadeau/rrr.jpg', 'ALBUM', 20, '2'),
(12, 'REVEIL SMILE 4-9', '9.980DT', 'cadeau/rrrr.jpg', 'REVEIL SMILE 4-9', 20, '2'),
(16, 'TIRELIRE BEBE', '10.980DT', 'jouet/f.jpg', 'jouet', 20, '3'),
(14, 'Cheval Sesame', '16.950DT', 'jouet/k.jpg', 'Jouet pour les enfant', 20, '3'),
(15, 'VOITURE CAR', '20.999DT', 'jouet/voi.jpg', 'Voiture Cars RadiocommandÃ©e multicolores', 20, '3'),
(17, 'Plateau en plastique', '2.000DT', 'cuisine/xxxx.jpg', 'Plateau en Plastique', 20, '4'),
(18, 'Tasse avec couvercle', '4.380DT', 'cuisine/ww.jpg', 'Gris', 20, '4'),
(19, 'Moule a Gateau Coeur', '21.450DT', 'cuisine/xxx.jpg', 'Moule a Gateau Coeur', 20, '4'),
(20, 'COUPELLE LUMINARC 12 cm', '5.450DT', 'cuisine/h.jpg', 'Coupelle Luminarc 12 cm â€“ Flashy Colors', 20, '4'),
(21, 'VERRE LUMINRAC AVEC CRUCHE', '16.340DT', 'cuisine/q.jpg', 'Verre Luminarc avec cruche en diffÃ©rent modÃ¨le', 20, '4'),
(22, '6 VERRES A THE KORDO', '4.020DT', 'cuisine/mmm.jpg', '6 VERRES A THE KORDO', 20, '4'),
(23, 'Cendrier MartelÃ©', '14.999DT', 'maison/c.jpg', 'Cendrier MartelÃ©', 20, '5'),
(24, 'Ù…Ø¨Ø®Ø±Ø©', '12.999DT', 'maison/cc.jpg', 'Ù…Ø¨Ø®Ø±Ø©', 20, '5'),
(25, 'BAC A PLANTE', '10.999DT', 'maison/ccc.jpg', 'BAC A PLANTE', 20, '5'),
(26, 'MABKHARA ELECTRIC', '41.909DT', 'mariage/kkk.jpg', 'Mabkhara electric en diffÃ©rent couleur', 20, '6'),
(27, 'KNESTROU ROND', '29.909DT', 'mariage/kkkk.jpg', 'Knestrou Rond fleurÃ©e', 20, '6'),
(28, 'KNESTROU ROUGE', '20.900DT', 'mariage/b.jpg', 'KNESTROU ROUGE', 20, '6');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_ad`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
 ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
 ADD PRIMARY KEY (`id_com`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
 ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
MODIFY `id_ad` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
MODIFY `id_cat` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
MODIFY `id_com` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
MODIFY `id_prod` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
