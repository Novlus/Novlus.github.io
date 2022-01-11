-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Client :  devbdd.iutmetz.univ-lorraine.fr
-- Généré le :  Mer 29 Décembre 2021 à 16:07
-- Version du serveur :  10.3.32-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ditullio4u_projet2`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `no_adh` varchar(5) NOT NULL,
  `nom_adh` varchar(30) NOT NULL,
  `prenom_adh` varchar(30) NOT NULL,
  `ad_adh` varchar(60) NOT NULL,
  `d_pai_cotis` date NOT NULL,
  `no_type_adh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`no_adh`, `nom_adh`, `prenom_adh`, `ad_adh`, `d_pai_cotis`, `no_type_adh`) VALUES
('AD01', 'LEPONGE', 'Bob', '3 Rue de l''ocean ', '2020-11-30', 'Individuelle'),
('AD02', 'MONTGOMERY BURNS', 'Charles', '8 rue Springfield', '2020-10-25', 'Individuelle2'),
('AD03', 'IUT De METZ ', '', ' Ile du Saulcy', '2020-09-13', 'Entreprise'),
('AD04', 'IUT NANCY-CHARLEMAGNE', '', '2Ter Boulevard Charlemagne', '2020-08-11', 'Entreprise'),
('AD05', 'LETOILE', 'Patrick', '1 rue de l''ocean', '2020-06-10', 'Individuelle2'),
('AD06', 'CALAMARD', 'Carlos', '18 rue de l''ocean', '2019-09-19', 'Individuelle'),
('AD07', 'SIMPSON', 'Homer', '1 rue Springfield', '2019-07-23', 'Individuelle2'),
('AD08', 'Nahasapeemapetilon', 'Apu', '16 rue Springfield', '2019-03-20', 'Individuelle'),
('AD09', 'UZUMAKI', 'Naruto', '6 Boulevard Konoha', '2018-12-24', 'Individuelle2'),
('AD10', 'UCHIHA', 'Sasuke', '2 Boulevard Konoha', '2018-07-05', 'Individuelle'),
('AD11', 'IUT de Saint-dié', '', '11 Rue de l''Université', '2018-05-03', 'Entreprise'),
('AD12', 'UBISOFT Montreal', '', 'Boulevard Saint Laurent', '2018-01-24', 'Entreprise2'),
('AD13', 'ACTIVISION ', '', '8 rue du Double-exp', '2018-07-31', 'Entreprise2'),
('AD14', 'BETHESHDA', '', '76 avenue du Beug', '2017-12-20', 'Entreprise2'),
('AD15', 'IUT Besançon-Vesoul', '', 'Avenue des Rives du Lac', '2017-10-01', 'Entreprise'),
('AD16', 'IUT de Reims ', '', '5 rue de l''apprentie', '2017-08-21', 'Entreprise'),
('AD17', 'KUROSAKI', 'Ichigo', '5 rue du  Shinigamie', '2017-07-15', 'Individuelle2'),
('AD18', 'DI TULLIO', 'Louis', '9 rue des templiers', '2017-05-22', 'Individuelle2'),
('AD19', 'CREMON', 'Damien', '1 Chemin des Vignottes', '2017-05-22', 'Individuelle'),
('AD20', 'BRIDOUX', 'Justin', '12 rue du sauciflard', '2017-02-01', 'Individuelle');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

CREATE TABLE IF NOT EXISTS `animateur` (
  `no_anim` varchar(5) NOT NULL,
  `nom_anim` varchar(30) NOT NULL,
  `prenom_anim` varchar(30) NOT NULL,
  `ad_anim` varchar(60) NOT NULL,
  `ad_mail` varchar(60) NOT NULL,
  `ad_bancaire` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `animateur`
--

INSERT INTO `animateur` (`no_anim`, `nom_anim`, `prenom_anim`, `ad_anim`, `ad_mail`, `ad_bancaire`) VALUES
('ANM01', 'COVER', 'Harry', '4 rue Férou', 'cover.harry@gmail.com', 'FR7600022210'),
('ANM02', 'ZERO', 'Toto', '11 rue de l''échec', 'zero.toto1@hotmail.fr', 'FR5402140024'),
('ANM03', 'Bigard', 'Jean-Marie', '9 rue des Blagues', 'jeanmarie.bigard@yahoo.com', 'FR1020304000'),
('ANM04', 'MATHY', 'Mimi', '23 rue des Disparus', 'mimi.mathy2@orange.fr', 'FR5510155065'),
('ANM05', 'ELMALEH', 'Gad', '16 rue des roses rouges', 'gad.elmaleh1@free.fr', 'FR7000708065'),
('ANM06', 'PERNAUT', 'Jean-Pierre', '8 rue du Journal', 'pernaut.jeanpierre@univ-lorraine.fr', 'FR1234567890'),
('ANM07', 'LAGAFFE', 'Vincent', '14 avenue de la Fortune', 'lagaffe.vincent1@gmail.com', 'FR9876543210'),
('ANM08', 'LEPERS', 'Julien', '7 boulevard des Champions', 'julien.lepers1@free.fr', 'FR8877665544'),
('ANM09', 'DECHAVANNE', 'Christophe', '13 rue de l''or', 'dechavannechristophe2@gmail.com', 'FR1237896545'),
('ANM10', 'FOUCAULT', 'Jean-pierre', '56 avenue des Millions', 'jeanpierre.foucault@univ-lorraine.fr', 'FR5412668901'),
('ANM11', 'BROGNIART', 'Denis', '37 rue du Totem', 'brogniart.denis@gmail.com', 'FR0247956545'),
('ANM12', 'ETIENNE', 'Samuel', '29 rue des Questions', 'etienne.samuel3@orange.fr', 'FR2684159977'),
('ANM13', 'FERAUD', 'Cyril', '23 avenue Sudoku', 'cyril.feraud1@sfr.fr', 'FR5788676892'),
('ANM14', 'ROUMANOFF', 'Anne', '17 boulevard des Sketchs', 'anne.roumanoff10@gmail.com', 'FR4122687800'),
('ANM15', 'BOULEAU', 'Gil', '44 rue des Pissenlits', 'bouleau.gil@bouygues.fr', 'FR8544779575'),
('ANM16', 'LADESOU', 'Chantal', '2 rue des Pigeons', 'chantal.ladesou@univ-lorraine.fr', 'FR0157443663');

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

CREATE TABLE IF NOT EXISTS `anime` (
  `no_anim` varchar(5) NOT NULL,
  `no_session` varchar(5) NOT NULL,
  `date_sal` date NOT NULL,
  `nb_heures` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `anime`
--

INSERT INTO `anime` (`no_anim`, `no_session`, `date_sal`, `nb_heures`) VALUES
('ANM01', 'SES04', '2018-09-14', 298),
('ANM01', 'SES11', '2020-07-17', 149),
('ANM01', 'SES16', '2021-07-09', 150),
('ANM01', 'SES18', '2021-08-27', 37),
('ANM02', 'SES01', '2017-07-07', 150),
('ANM02', 'SES14', '2020-12-29', 57),
('ANM04', 'SES12', '2020-07-27', 128),
('ANM06', 'SES07', '2018-12-16', 50),
('ANM06', 'SES19', '2018-02-14', 141),
('ANM06', 'SES20', '2019-02-18', 141),
('ANM06', 'SES21', '2020-02-19', 141),
('ANM07', 'SES06', '2018-07-04', 59),
('ANM07', 'SES13', '2020-08-28', 54),
('ANM07', 'SES23', '2019-04-01', 50),
('ANM07', 'SES25', '2019-06-01', 45),
('ANM07', 'SES26', '2019-07-01', 21),
('ANM09', 'SES02', '2017-07-07', 98),
('ANM09', 'SES08', '2019-12-22', 284),
('ANM09', 'SES15', '2020-12-26', 6),
('ANM09', 'SES22', '2019-03-01', 30),
('ANM09', 'SES27', '2019-08-01', 31),
('ANM11', 'SES10', '2019-09-04', 24),
('ANM11', 'SES17', '2021-12-26', 250),
('ANM11', 'SES28', '2019-09-01', 18),
('ANM13', 'SES03', '2017-12-29', 134),
('ANM13', 'SES09', '2019-07-05', 78),
('ANM13', 'SES24', '2019-05-01', 25),
('ANM15', 'SES05', '2018-07-13', 150);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `no_emp` varchar(5) NOT NULL,
  `nom_emp` varchar(30) NOT NULL,
  `prenom_emp` varchar(30) NOT NULL,
  `ad_emp` varchar(60) NOT NULL,
  `no_adh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`no_emp`, `nom_emp`, `prenom_emp`, `ad_emp`, `no_adh`) VALUES
('EMP01', 'BENARFA', 'Sonia', '12 rue du Dialogue', 'AD03'),
('EMP02', 'MINICH', 'Sarah', '8 avenue Linux', 'AD03'),
('EMP03', 'JAGER', 'Romain', '21 rue de la Roue', 'AD03'),
('EMP04', 'NICOLAS', 'Mickaël', '7 impasse des Apôtres', 'AD15'),
('EMP05', 'GUILLEMOT', 'Yves', '7 Boulevard des Jeux', 'AD12'),
('EMP06', 'ZUCK', 'Isabelle', '6 rue Eugene poubelle', 'AD16'),
('EMP07', 'KAPLAN', 'Larry', '31 avenue du Dieu', 'AD13'),
('EMP08', 'YURTDAS', 'Ismail', '14 rue des lis', 'AD16'),
('EMP09', 'CRANE', 'David', '11 rue Kisslapete', 'AD13'),
('EMP10', 'LECLERCQ', 'Emmanuelle', '19 rue du bon puits', 'AD16'),
('EMP11', 'GUIRAUD', 'Michel', '10 rue pavés d''Andouille', 'AD12'),
('EMP12', 'NOURRI', 'Jean-Michel', '5 rue des Friandises', 'AD16'),
('EMP13', 'SPITZ', 'Etienne', '7 avenue des gâteaux', 'AD16'),
('EMP14', 'CANALS', 'Gerome', '16 rue du Bien-être', 'AD04'),
('EMP15', 'WHITEHEAD', 'Bob', '9 rue du Mouton', 'AD13'),
('EMP16', 'COMBROUZE', 'Delphine', '20 avenue de la Cambrousse', 'AD16'),
('EMP17', 'GUILLEMOT', 'Christian', '27 rue du Paradis', 'AD12'),
('EMP18', 'PERRIN', 'Oceane', '4 rue de la Vielle', 'AD11'),
('EMP19', 'GOURVIL', 'Yanne', '14 rue des Paquerette', 'AD04'),
('EMP20', 'CRESPEL', 'Didier', '2 rue Stine', 'AD12'),
('EMP21', 'PIAGET', 'Céline', '6 rue Dion', 'AD15'),
('EMP22', 'CLAQUIN', 'Jean-Michel', '11 rue des Ecoles', 'AD16'),
('EMP23', 'MULLER', 'Jenny', '15 rue de la Pie qui boit', 'AD04'),
('EMP24', 'PASTA', 'Fabrice', '20 rue des Spaghettis', 'AD16'),
('EMP25', 'MILLER', 'Alan', '1 rue Perdu', 'AD13'),
('EMP26', 'MULLER', 'Stephane', '13 rue du test', 'AD13');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit1`
--

CREATE TABLE IF NOT EXISTS `inscrit1` (
  `no_adh` varchar(5) NOT NULL,
  `no_session` varchar(5) NOT NULL,
  `date_ins` date NOT NULL,
  `date_pai_ins` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `inscrit1`
--

INSERT INTO `inscrit1` (`no_adh`, `no_session`, `date_ins`, `date_pai_ins`) VALUES
('AD01', 'SES13', '2020-06-29', '2020-07-02'),
('AD02', 'SES11', '2020-01-20', '2020-07-15'),
('AD02', 'SES14', '2020-10-20', '2020-10-21'),
('AD05', 'SES11', '2020-01-13', '2020-01-16'),
('AD06', 'SES08', '2019-01-07', '2019-03-08'),
('AD06', 'SES09', '2019-04-16', '2019-04-19'),
('AD07', 'SES08', '2019-01-08', '2019-01-10'),
('AD08', 'SES03', '2017-07-24', '2017-07-28'),
('AD09', 'SES06', '2018-04-23', '2018-04-24'),
('AD10', 'SES07', '2018-10-18', '2018-11-04'),
('AD17', 'SES03', '2017-08-03', '2017-08-08'),
('AD18', 'SES01', '2017-01-03', '2017-01-06'),
('AD18', 'SES03', '2017-07-11', '2017-07-12'),
('AD19', 'SES02', '2017-03-06', '2017-05-24'),
('AD19', 'SES03', '2017-07-18', '2017-10-22'),
('AD19', 'SES04', '2017-09-13', '2017-09-14'),
('AD20', 'SES02', '2017-03-13', '2017-03-27');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit2`
--

CREATE TABLE IF NOT EXISTS `inscrit2` (
  `no_emp` varchar(5) NOT NULL,
  `no_session` varchar(5) NOT NULL,
  `dat_-ins` date NOT NULL,
  `date_pai_ins` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `inscrit2`
--

INSERT INTO `inscrit2` (`no_emp`, `no_session`, `dat_-ins`, `date_pai_ins`) VALUES
('EMP01', 'SES11', '2020-01-14', '2020-02-19'),
('EMP01', 'SES12', '2020-03-18', '2020-03-23'),
('EMP01', 'SES14', '2020-10-22', '2020-11-16'),
('EMP02', 'SES11', '2020-01-14', '2020-01-20'),
('EMP02', 'SES14', '2020-10-22', '2020-10-24'),
('EMP03', 'SES11', '2020-01-14', '2020-01-23'),
('EMP03', 'SES12', '2020-03-18', '2020-03-19'),
('EMP03', 'SES14', '2020-10-22', '2020-10-24'),
('EMP04', 'SES01', '2020-06-04', '2020-06-06'),
('EMP05', 'SES07', '2020-10-15', '2020-10-18'),
('EMP06', 'SES02', '2017-03-18', '2017-03-19'),
('EMP06', 'SES04', '2018-07-09', '2018-07-16'),
('EMP07', 'SES06', '2018-04-23', '2018-05-04'),
('EMP07', 'SES07', '2018-10-15', '2018-10-17'),
('EMP08', 'SES02', '2017-03-18', '2018-08-14'),
('EMP08', 'SES04', '2018-07-09', '2018-08-02'),
('EMP09', 'SES05', '2018-01-11', '2018-01-26'),
('EMP09', 'SES06', '2018-04-24', '2018-05-12'),
('EMP09', 'SES07', '2018-11-01', '2018-11-18'),
('EMP10', 'SES04', '2018-07-09', '2018-08-22'),
('EMP11', 'SES07', '2020-10-15', '2020-10-26'),
('EMP12', 'SES02', '2017-03-18', '2018-07-19'),
('EMP13', 'SES02', '2017-03-18', '2017-03-20'),
('EMP13', 'SES04', '2018-07-09', '2018-07-12'),
('EMP14', 'SES11', '2020-01-13', '2020-01-15'),
('EMP14', 'SES12', '2020-03-16', '2020-05-21'),
('EMP15', 'SES06', '2018-04-23', '2018-04-25'),
('EMP15', 'SES07', '2018-10-15', '2018-11-05'),
('EMP16', 'SES04', '2018-07-09', '2018-07-16'),
('EMP17', 'SES07', '2020-10-15', '2020-11-03'),
('EMP18', 'SES05', '2018-01-08', '2018-01-14'),
('EMP18', 'SES06', '2018-04-23', '2018-04-26'),
('EMP19', 'SES11', '2020-01-13', '2020-02-02'),
('EMP19', 'SES12', '2020-03-16', '2020-06-21'),
('EMP20', 'SES07', '2020-10-15', '2020-10-29'),
('EMP21', 'SES01', '2020-06-04', '2020-10-30'),
('EMP22', 'SES02', '2017-03-18', '2018-07-21'),
('EMP22', 'SES04', '2018-07-09', '2018-08-04'),
('EMP23', 'SES12', '2020-03-16', '2020-03-28'),
('EMP24', 'SES02', '2017-03-18', '2017-03-25'),
('EMP24', 'SES04', '2018-07-09', '2018-07-11'),
('EMP25', 'SES05', '2018-01-17', '2018-02-06'),
('EMP25', 'SES06', '2020-04-23', '2018-05-20'),
('EMP26', 'SES08', '2019-01-07', '2019-01-05'),
('EMP26', 'SES09', '2019-04-01', '2019-03-27'),
('EMP26', 'SES10', '2019-08-05', '2019-08-02');

-- --------------------------------------------------------

--
-- Structure de la table `interet`
--

CREATE TABLE IF NOT EXISTS `interet` (
  `no_adh` varchar(5) NOT NULL,
  `no_theme` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `interet`
--

INSERT INTO `interet` (`no_adh`, `no_theme`) VALUES
('AD01', 'TH2'),
('AD01', 'TH6'),
('AD02', 'TH2'),
('AD02', 'TH5'),
('AD02', 'TH7'),
('AD03', 'TH1'),
('AD03', 'TH2'),
('AD03', 'TH3'),
('AD03', 'TH4'),
('AD03', 'TH5'),
('AD03', 'TH7'),
('AD03', 'TH8'),
('AD04', 'TH1'),
('AD04', 'TH3'),
('AD04', 'TH7'),
('AD05', 'TH7'),
('AD06', 'TH2'),
('AD06', 'TH8'),
('AD07', 'TH2'),
('AD07', 'TH3'),
('AD07', 'TH5'),
('AD08', 'TH4'),
('AD09', 'TH5'),
('AD09', 'TH6'),
('AD10', 'TH3'),
('AD11', 'TH1'),
('AD11', 'TH2'),
('AD11', 'TH5'),
('AD11', 'TH8'),
('AD12', 'TH2'),
('AD12', 'TH3'),
('AD12', 'TH6'),
('AD12', 'TH7'),
('AD13', 'TH1'),
('AD13', 'TH3'),
('AD13', 'TH5'),
('AD14', 'TH2'),
('AD14', 'TH7'),
('AD14', 'TH8'),
('AD15', 'TH1'),
('AD15', 'TH7'),
('AD16', 'TH1'),
('AD16', 'TH5'),
('AD16', 'TH7'),
('AD16', 'TH8'),
('AD17', 'TH4'),
('AD17', 'TH8'),
('AD18', 'TH3'),
('AD18', 'TH4'),
('AD19', 'TH4'),
('AD19', 'TH5'),
('AD19', 'TH7'),
('AD20', 'TH7');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `no_session` varchar(5) NOT NULL,
  `no_theme` varchar(5) NOT NULL,
  `date_deb` date NOT NULL,
  `duree` varchar(60) NOT NULL,
  `prix` int(3) NOT NULL,
  `nb_places` int(4) NOT NULL,
  `taux_heure` int(20) NOT NULL,
  `prime` int(4) NOT NULL,
  `no_anim_resp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`no_session`, `no_theme`, `date_deb`, `duree`, `prix`, `nb_places`, `taux_heure`, `prime`, `no_anim_resp`) VALUES
('SES01', 'TH3', '2017-01-02', '6 mois et 5 jours', 450, 15, 11, 1125, 'ANM02'),
('SES02', 'TH7', '2017-03-06', '4 mois  et 1 jour', 300, 26, 11, 750, 'ANM09'),
('SES03', 'TH4', '2017-07-10', '5mois, 2semaines et 5jours', 380, 22, 13, 938, 'ANM13'),
('SES04', 'TH5', '2017-09-11', '1 an et 3 jours', 900, 13, 9, 2250, 'ANM01'),
('SES05', 'TH1', '2018-01-08', '6mois et 5jours', 450, 29, 14, 1125, 'ANM15'),
('SES06', 'TH5', '2018-04-23', '2mois, 1semaine et 5jours', 160, 33, 9, 375, 'ANM07'),
('SES07', 'TH3', '2018-10-15', '2mois et 1jour', 155, 8, 11, 375, 'ANM06'),
('SES08', 'TH2', '2019-01-07', '11mois, 2semaines 1jour', 870, 16, 12, 2063, 'ANM09'),
('SES09', 'TH8', '2019-04-01', '3mois et 4jours', 220, 20, 14, 563, 'ANM13'),
('SES10', 'TH8', '2019-08-05', '3semaines et 5jours', 60, 35, 14, 188, 'ANM11'),
('SES11', 'TH7', '2020-01-13', '6mois et 4jours', 445, 27, 11, 1125, 'ANM01'),
('SES12', 'TH1', '2020-03-16', '5mois,1semaine et 4jours', 365, 15, 14, 938, 'ANM04'),
('SES13', 'TH6', '2020-06-22', '2mois et 6jours', 160, 18, 10, 375, 'ANM07'),
('SES14', 'TH5', '2020-10-19', '2mois,1semaine et 3jours', 160, 24, 9, 375, 'ANM02'),
('SES15', 'TH4', '2020-12-21', '5 jours', 18, 24, 13, 25, 'ANM09'),
('SES16', 'TH2', '2021-01-04', '6mois et 5jours', 450, 20, 12, 1125, 'ANM01'),
('SES17', 'TH6', '2021-02-15', '10mois,1semaine et 4jours', 800, 4, 10, 1875, 'ANM11'),
('SES18', 'TH4', '2021-07-12', '1mois, 2semaines et 1jour', 110, 21, 13, 208, 'ANM01'),
('SES19', 'TH1', '2018-01-01', '6 mois', 500, 30, 14, 1027, 'ANM06'),
('SES20', 'TH1', '2019-01-01', '6 mois', 500, 30, 14, 1027, 'ANM06'),
('SES21', 'TH1', '2020-01-01', '6 mois', 500, 30, 14, 1027, 'ANM06'),
('SES22', 'TH2', '2019-02-01', '1 mois', 80, 15, 12, 211, 'ANM09'),
('SES23', 'TH5', '2019-03-01', '1 mois', 80, 15, 9, 211, 'ANM07'),
('SES24', 'TH4', '2019-04-01', '1 mois', 80, 15, 13, 211, 'ANM13'),
('SES25', 'TH5', '2019-05-01', '1 mois', 80, 15, 9, 211, 'ANM07'),
('SES26', 'TH6', '2019-06-01', '1 mois', 80, 15, 10, 211, 'ANM07'),
('SES27', 'TH7', '2019-07-01', '1 mois', 80, 15, 11, 211, 'ANM09'),
('SES28', 'TH8', '2019-08-01', '1 mois', 80, 15, 14, 211, 'ANM11');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `no_anim` varchar(5) NOT NULL,
  `no_theme` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`no_anim`, `no_theme`) VALUES
('ANM01', 'TH2'),
('ANM01', 'TH4'),
('ANM01', 'TH5'),
('ANM01', 'TH7'),
('ANM02', 'TH3'),
('ANM02', 'TH5'),
('ANM03', 'TH6'),
('ANM04', 'TH1'),
('ANM05', 'TH5'),
('ANM05', 'TH8'),
('ANM06', 'TH3'),
('ANM07', 'TH5'),
('ANM07', 'TH6'),
('ANM08', 'TH1'),
('ANM08', 'TH2'),
('ANM08', 'TH4'),
('ANM08', 'TH7'),
('ANM09', 'TH2'),
('ANM09', 'TH4'),
('ANM10', 'TH4'),
('ANM10', 'TH5'),
('ANM10', 'TH6'),
('ANM11', 'TH6'),
('ANM11', 'TH8'),
('ANM12', 'TH2'),
('ANM12', 'TH7'),
('ANM13', 'TH4'),
('ANM13', 'TH8'),
('ANM14', 'TH1'),
('ANM14', 'TH6'),
('ANM14', 'TH8'),
('ANM15', 'TH1'),
('ANM16', 'TH1'),
('ANM16', 'TH4'),
('ANM16', 'TH6'),
('ANM16', 'TH8');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `no_theme` varchar(5) NOT NULL,
  `lib_theme` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`no_theme`, `lib_theme`) VALUES
('TH1', 'Bases de données'),
('TH2', 'Algorithmique'),
('TH3', 'Algèbre linéaire'),
('TH4', 'Mathématiques discrètes'),
('TH5', 'ISI'),
('TH6', 'Communication'),
('TH7', 'Anglais'),
('TH8', 'Fonctionnement des Organisations');

-- --------------------------------------------------------

--
-- Structure de la table `type_adh`
--

CREATE TABLE IF NOT EXISTS `type_adh` (
  `no_type_adh` varchar(20) NOT NULL,
  `nom_type_adh` varchar(30) NOT NULL,
  `mcotis` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_adh`
--

INSERT INTO `type_adh` (`no_type_adh`, `nom_type_adh`, `mcotis`) VALUES
('Entreprise', 'Aide par l''Etat', 150),
('Entreprise2', 'Sans aide par L''Etat', 220),
('Individuelle', 'Boursier', 15),
('Individuelle2', 'Non Boursier', 22);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`no_adh`),
  ADD KEY `no-type` (`no_type_adh`);

--
-- Index pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD PRIMARY KEY (`no_anim`);

--
-- Index pour la table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`no_anim`,`no_session`),
  ADD KEY `no-session` (`no_session`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`no_emp`),
  ADD KEY `no-adh` (`no_adh`);

--
-- Index pour la table `inscrit1`
--
ALTER TABLE `inscrit1`
  ADD PRIMARY KEY (`no_adh`,`no_session`),
  ADD KEY `no-session` (`no_session`);

--
-- Index pour la table `inscrit2`
--
ALTER TABLE `inscrit2`
  ADD PRIMARY KEY (`no_emp`,`no_session`),
  ADD KEY `no-session` (`no_session`);

--
-- Index pour la table `interet`
--
ALTER TABLE `interet`
  ADD PRIMARY KEY (`no_adh`,`no_theme`),
  ADD KEY `no-theme` (`no_theme`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`no_session`),
  ADD KEY `no-theme` (`no_theme`),
  ADD KEY `no-anim` (`no_anim_resp`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`no_anim`,`no_theme`),
  ADD KEY `no-theme` (`no_theme`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`no_theme`);

--
-- Index pour la table `type_adh`
--
ALTER TABLE `type_adh`
  ADD PRIMARY KEY (`no_type_adh`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `no-type` FOREIGN KEY (`no_type_adh`) REFERENCES `type_adh` (`no_type_adh`);

--
-- Contraintes pour la table `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `anime_ibfk_1` FOREIGN KEY (`no_anim`) REFERENCES `animateur` (`no_anim`) ON UPDATE CASCADE,
  ADD CONSTRAINT `anime_ibfk_2` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `no-adh` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`);

--
-- Contraintes pour la table `inscrit1`
--
ALTER TABLE `inscrit1`
  ADD CONSTRAINT `inscrit1_ibfk_2` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrit1_ibfk_3` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscrit2`
--
ALTER TABLE `inscrit2`
  ADD CONSTRAINT `inscrit2_ibfk_1` FOREIGN KEY (`no_emp`) REFERENCES `employe` (`no_emp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrit2_ibfk_2` FOREIGN KEY (`no_session`) REFERENCES `session` (`no_session`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `interet`
--
ALTER TABLE `interet`
  ADD CONSTRAINT `interet_ibfk_2` FOREIGN KEY (`no_theme`) REFERENCES `theme` (`no_theme`) ON UPDATE CASCADE,
  ADD CONSTRAINT `interet_ibfk_3` FOREIGN KEY (`no_adh`) REFERENCES `adherent` (`no_adh`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `no-anim` FOREIGN KEY (`no_anim_resp`) REFERENCES `animateur` (`no_anim`),
  ADD CONSTRAINT `no-theme` FOREIGN KEY (`no_theme`) REFERENCES `theme` (`no_theme`);

--
-- Contraintes pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD CONSTRAINT `specialite_ibfk_1` FOREIGN KEY (`no_theme`) REFERENCES `session` (`no_theme`) ON UPDATE CASCADE,
  ADD CONSTRAINT `specialite_ibfk_2` FOREIGN KEY (`no_anim`) REFERENCES `animateur` (`no_anim`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
