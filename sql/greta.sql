-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 26 jan. 2020 à 10:47
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `greta`
--

-- --------------------------------------------------------

--
-- Structure de la table `acquis`
--

DROP TABLE IF EXISTS `acquis`;
CREATE TABLE IF NOT EXISTS `acquis` (
  `idAcquis` int(10) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(10) NOT NULL,
  PRIMARY KEY (`idAcquis`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acquis`
--

INSERT INTO `acquis` (`idAcquis`, `libelle`) VALUES
(1, 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `idActivite` int(10) NOT NULL AUTO_INCREMENT,
  `libelleActivite` varchar(255) NOT NULL,
  PRIMARY KEY (`idActivite`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`idActivite`, `libelleActivite`) VALUES
(1, 'à voir'),
(2, 'Septentria 2 : GGL Domaine 1 Cléa : D1-A : 1. 2. 3.'),
(3, 'Septentria 2 : GGL Domaine 1 Cléa : D1-C : 1. 2. 3. 4. 5.'),
(5, 'Septentria 2 : GGL Domaine 1 Cléa : D1-C : 3. 10.'),
(6, 'Septentria 2 : GGL Domaine 1 Cléa : D1-C : 13. 14.'),
(7, 'Septentria 2 : GGL Domaine 1 Cléa : D1-C : 16.'),
(8, 'Septentria 2 : GGL Domaine 1 Cléa : D1-D: 7. 8.'),
(10, 'Septentria 2 : GGL Domaine 1 Cléa : D1-D : 1.'),
(11, 'Septentria 2 : GGL Domaine 1 Cléa : D1-D : 10. 11.'),
(12, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 6. 7. 8. 9. 10. 11. 12. 15 ou Dossier 110, 111, 112, 113 suivant besoins'),
(13, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 1. 2. 4. ou Dossier 100'),
(14, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 3. 5. ou dossier 100'),
(15, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 13. 16.'),
(16, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 14.'),
(17, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 17.'),
(18, 'Septentria 2 : GGL Domaine 2 Cléa : D2-A : 18. 19. ou Dossier 130 partie 1'),
(19, 'Septentria 2 : GGL Domaine 2 Cléa : D2-B : 1. 2. 3. 4. 5. 6. 7.'),
(20, 'Septentria 2 : GGL Domaine 2 Cléa : D2-B : 17 ou Dossier 131'),
(21, 'Septentria 2 : GGL Domaine 2 Cléa : D2-C : 12. ou Dossier 134 jusque p 8)'),
(22, 'A créer à partir d\'une mission \"habiletés clés\"'),
(23, 'Septentria 2 : GGL Domaine 2 : D2-C : 1. 2. 4. 5. 8. 9. 11. ou Dossier 135'),
(24, 'Septentria 2 : GGL Domaine 2 : D2-C : 13.'),
(25, 'rien pour l\'instant'),
(26, 'Septentria 2 : GGL Domaine 2 : D2-C : 3. 6. 7. 10 Dossier 161, 162, 163'),
(27, 'Septentria 2 : GGL Domaine 2 : D2-D : 4. 5. 6. 7. 8. 9.'),
(28, 'A faire en regroupement sur une mission'),
(29, 'A compléter'),
(30, 'Septentria 2 : GGL Domaine 7 : D7-A : 1.'),
(31, 'Septentria 2 : GGL Domaine 7 : D7-A : 2.'),
(32, 'Septentria 2 : GGL Domaine 7 : D7-B : 4. 5.'),
(33, 'Septentria 2 : GGL Domaine 7 : D7-B : 1. 2. 3.'),
(34, 'Septentria 2 : GGL Domaine 7 : D7-C : 1. 2. 3. 4. 5. 6. 7.'),
(35, 'Septentria 2 : GGL Domaine 7 : D7-D : 1. 2. 3. 4.'),
(36, 'Septentria 2 : GGL Domaine 7 : D7-D : 5.'),
(37, ''),
(38, 'Dossier 100');

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `idCompetence` int(10) NOT NULL AUTO_INCREMENT,
  `libelleCompetence` varchar(255) NOT NULL,
  `idSousDomaine` int(10) NOT NULL,
  `idAcquis` int(10) DEFAULT NULL,
  `idActivite` int(10) DEFAULT NULL,
  `idHeure` int(10) NOT NULL,
  PRIMARY KEY (`idCompetence`),
  KEY `competence_sousDomaine_FK` (`idSousDomaine`),
  KEY `competence_acquis0_FK` (`idAcquis`),
  KEY `competence_activite1_FK` (`idActivite`),
  KEY `competence_nbHeure2_FK` (`idHeure`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`idCompetence`, `libelleCompetence`, `idSousDomaine`, `idAcquis`, `idActivite`, `idHeure`) VALUES
(1, '1-1-1 Porter attention aux propos tenus', 1, NULL, 2, 1),
(2, '1-1-2 Savoir poser une question pour comprendre', 1, NULL, 1, 1),
(3, '1-2-1 Exprimer un propos en utilisant le lexique professionnel approprié', 2, NULL, 1, 2),
(4, '1-2-2 Répondre à une question à partir d\'un exposé (oral ou écrit) simple', 2, NULL, 1, 2),
(5, '1-2-3 Argumenter son point de vue', 2, NULL, 1, 3),
(6, '1-2-4 Débattre de manière constructive', 2, NULL, 1, 4),
(7, '1-3-1 Lire et comprendre un document usuel professionnel (lettres, consignes, notices…)', 3, NULL, 3, 3),
(8, '1-3-2 Identifier la nature et la fonction d\'un document', 3, NULL, 5, 3),
(9, '1-3-3 Vérifier la conformité des informations d\'un document par comparaison avec le document', 3, NULL, 6, 3),
(10, '1-3-4 Utiliser les informations d\'un tableau à double entrée', 3, NULL, 7, 3),
(11, '1-4-1 Produire un message en respectant la construction d\'une phrase simple', 4, NULL, 8, 5),
(12, '1-4-2 Rendre compte par écrit conformément à l\'objectif visé (renseigner un formulaire administratif, rédiger un compte-rendu d\'activité journalière)', 4, NULL, 10, 5),
(13, '1-4-3 Lister par écrit des anomalies dans un document personnel', 4, NULL, 1, 5),
(14, '1-4-4 Récupérer l\'essentiel d\'un message en prise de notes', 4, NULL, 11, 5),
(15, '1-4-5 Ecrire un message en utilisant le vocabulaire professionnel', 4, NULL, 1, 5),
(16, '1-4-6 Décrire par écrit une situation professionnelle, un objet, un problème', 4, NULL, 1, 5),
(17, '1-5-1 Transmettre une information, une consigne avec le vocabulaire approprié', 5, NULL, 1, 2),
(18, '1-5-2 Décrire par oral une situation professionnelle, un objet, un problème', 5, NULL, 1, 2),
(19, '2-1-1 Réaliser les 4 opérations à la main ou avec une calculette', 6, NULL, 12, 6),
(20, '2-1-2 Compter, dénombrer', 6, NULL, 13, 6),
(21, '2-1-3 Comparer, classer, sérier', 6, NULL, 14, 6),
(22, '2-1-4 Evaluer un ordre de grandeur', 6, NULL, 15, 6),
(23, '2-1-5 Utiliser les techniques élémentaires du calcul mental', 6, NULL, 16, 6),
(24, '2-1-6 Contrôler la cohérence des résultats obtenus', 6, NULL, 17, 6),
(25, '2-1-7 Réaliser un calcul proportionnel simple', 6, NULL, 18, 6),
(26, '2-2-1 Résoudre un problème mettant en jeu une ou plusieurs des 4 opérations', 7, NULL, 19, 1),
(27, '2-2-2 Comprendre et utiliser les pourcentages', 7, NULL, 20, 1),
(28, '2-3-1 Utiliser les unités de temps', 8, NULL, 21, 4),
(29, '2-3-2 Lire et comprendre un planning de travail', 8, NULL, 22, 4),
(30, '2-3-3 Renseigner correctement les horaires', 8, NULL, 22, 4),
(31, '2-3-4 Utiliser les unités de mesure ainsi que les instruments de mesure', 8, NULL, 23, 4),
(32, '2-3-5 Utiliser et comprendre des tableaux, des diagrammes, des graphiques', 8, NULL, 24, 4),
(33, '2-3-6 Identifier les erreurs', 8, NULL, 25, 4),
(34, '2-3-7 Effectuer des calculs simples de périmètres et surfaces (carré, rectangle, triangle, cercle), et volumes (cube, parallépipède rectangle, cylindre, sphère) ', 8, NULL, 26, 4),
(35, '2-4-1 Lire un plan, une carte, un schéma, et en extraire des informations utiles', 9, NULL, 27, 7),
(36, '2-5-1 Reformuler un calcul (opérations sur des nombres entiers) exposé par quelqu\'un d\'autre', 10, NULL, 28, 8),
(37, '2-5-2 Transmettre ses calculs ou les calculs à effectuer (opérations sur des nombres entiers)', 10, NULL, 28, 8),
(38, '2-5-3 Employer un langage mathématique de base (vocabulaire courant pour les compétences mathématiques de CléA)', 10, NULL, 28, 8),
(39, '3-1-1 Repérer et nommer dans son environnement de travail les différents éléments liés à l\'informatique : machines numériques, systèmes d\'alarme, ordinateurs...', 11, NULL, 1, 9),
(40, '3-1-2 Mettre un ordinateur en marche, utiliser un clavier, une souris', 11, NULL, 1, 9),
(41, '3-1-3 Accéder aux fonctions de base : traitement de texte, messagerie électronique, navigation Internet', 11, NULL, 1, 9),
(42, '3-2-1 Comprendre la structure du document (par exemple pour une lettre : bloc adresse, date, objet, corps du texte, signature ; un message : adresse courriel, objet, corps du message, signature; une page internet : adresse, contenu, liens)', 12, NULL, 1, 6),
(43, '3-2-2 Saisir et modifier un texte simple', 12, NULL, 1, 3),
(44, '3-2-3 Créer, enregistrer, déplacer des fichiers simples', 12, NULL, 1, 6),
(45, '3-2-4 Renseigner un formulaire numérique', 12, NULL, 1, 6),
(46, '3-2-5 Savoir imprimer un document', 12, NULL, 1, 6),
(47, '3-3-1 Utiliser un navigateur pour accéder à un navigateur', 13, NULL, 1, 8),
(48, '3-3-2 Se repérer dans une page Web', 13, NULL, 1, 8),
(49, '3-3-3 Utiliser un moteur de recherche', 13, NULL, 1, 8),
(50, '3-3-4 Effectuer une requête', 13, NULL, 1, 8),
(51, '3-3-5 Analyser la nature des sites proposés par le moteur de recherche', 13, NULL, 1, 8),
(52, '3-3-6 Enregistrer les informations', 13, NULL, 1, 8),
(53, '3-3-7 Savoir trouver des services en ligne', 13, NULL, 1, 8),
(54, '3-3-8 Identifier les sites pratiques ou d\'informations, liés à l\'environnement professionnel', 13, NULL, 1, 8),
(55, '3-4-1 Utiliser et gérer une messagerie et un fichier contacts sur un support numérique (ordinateur, smartphone, tablette, etc.)', 14, NULL, 1, 3),
(56, '3-4-2 Ouvrir et fermer un courriel ou un document attaché', 14, NULL, 1, 3),
(57, '3-4-3 Créer, écrire, un courriel et l\'envoyer', 14, NULL, 1, 3),
(58, '3-4-4 Ouvrir, insérer une pièce jointe', 14, NULL, 1, 3),
(59, '4-1-1 Identifier et appliquer les règles (règlement intérieur, procédures…)', 15, NULL, 29, 10),
(60, '4-1-2 Respecter les horaires, les rythmes de travail', 15, NULL, 29, 10),
(61, '4-1-3 Mettre en pratique les principes de politesse et de respect des autres', 15, NULL, 29, 10),
(62, '4-1-4 Avoir une tenue vestimentaire adaptée à l\'activité et au contexte professionnel', 15, NULL, 29, 10),
(63, '4-2-1 Comprendre les missions de chaque membre du groupe', 16, NULL, 29, 1),
(64, '4-2-2 Réaliser des actions en prenant en compte leur impact sur l\'équipe', 16, NULL, 29, 1),
(65, '4-3-1 Prendre en considération les différents points de vue', 17, NULL, 29, 3),
(66, '4-3-2 Apporter une contribution pour l\'intérêt du groupe, dans le cadre de la mission à remplir', 17, NULL, 29, 3),
(67, '4-3-3 S\'impliquer dans des actions concrètes', 17, NULL, 29, 3),
(68, '4-4-1 Comprendre le périmètre et la place des interlocuteurs dans l\'univers professionnel (collègues, hiérarchiques, clients…)', 18, NULL, 29, 3),
(69, '4-4-2 Communiquer en tenant compte des différents interlocuteurs ', 18, NULL, 29, 3),
(70, '5-1-1 Analyser des situations simples, des relations, son environnement de travail', 19, NULL, NULL, 1),
(71, '5-1-2 Solliciter une assistance', 19, NULL, NULL, 1),
(72, '5-1-3 Rechercher, traiter, transmettre des informations techniques simples', 19, NULL, NULL, 11),
(73, '5-2-1 Mettre en œuvre une action : organiser son temps et planifier l\'action', 20, NULL, NULL, 2),
(74, '5-2-2 Identifier les principales étapes, les méthodes de travail adaptées, à utiliser', 20, NULL, NULL, 3),
(75, '5-2-3 Identifier les principales priorités', 20, NULL, NULL, 4),
(76, '5-2-4 Identifier les contraintes et diffcultés', 20, NULL, NULL, 12),
(77, '5-2-5 Dresser oralement un bilan des résultats de l\'action', 20, NULL, NULL, 3),
(78, '5-3-1 Aller chercher des informations, consulter les ressources à disposition', 21, NULL, NULL, 3),
(79, '5-3-2 Faire face à un aléa courant :\r\n- identifier un problème simple (dysfonctionnement…);\r\n- mettre en place une solution adaptée à ses prérogatives', 21, NULL, NULL, 3),
(80, '5-3-3 Proposer des améliorations dans son champ d\'activité', 21, NULL, NULL, 13),
(81, '6-1-1 Identifier ses principaux atouts (connaissances, compétences, etc.) acquis de manière formelle et informelle et ses axes de progrès', 22, NULL, 38, 14),
(82, '6-1-2 Comprendre la nécessité de son apprentissage', 22, NULL, 1, 14),
(83, '6-1-3 Illustrer ses points forts par des réalisations positives', 22, NULL, 1, 14),
(84, '6-1-4 Comprendre le contenu d\'un CV pour savoir l\'élaborer et le mettre à jour', 22, NULL, 1, 14),
(85, '6-1-5 Formuler un projet professionnel réaliste', 22, NULL, 1, 14),
(86, '6-2-2 Repérer les sources d\'information mobilisables au sein de son environnement', 23, NULL, 1, 9),
(87, '6-2-2 Se renseigner sur les activités et les besoins de compétences associés à son projet professionnel', 23, NULL, 1, 9),
(88, '6-3-1 Faire le lien entre objectifs de formation et objectifs professionnels', 24, NULL, 1, 10),
(89, '6-3-2 Se donner des exigences de qualité en termes de compétences à acquérir ou de formation', 24, NULL, 1, 10),
(90, '6-3-3 Se concentrer dans la durée et stimuler sa mémoire (connaissance de quelques moyens appropriés favorisant ces dispositions)', 24, NULL, 1, 10),
(91, '6-3-4 A partir de ses objectifs d\'apprentissage, identifier sa progression et ses acquisitions', 24, NULL, 1, 10),
(92, '7-1-1 Connaître et expliciter les consignes et pictogrammes de sécurité', 25, NULL, 30, 15),
(93, '7-1-2 Appliquer  un règlement, une procédure en matière d\'hygiène, de sécurité, de qualité et d\'environnement', 25, NULL, 31, 15),
(94, '7-1-3 Appliquer les règles de sécurité dans toute intervention', 25, NULL, 1, 15),
(95, '7-2-1 Maîtriser les automatismes gestuels du métier', 26, NULL, 1, 16),
(96, '7-2-2 Adopter les gestes et postures adaptés aux différentes situations afin d\'éviter les douleurs et ménager son corps', 26, NULL, 32, 16),
(97, '7-2-3 Se protéger avec les équipements adéquats et selon les règles transmises', 26, NULL, 1, 16),
(98, '7-2-4 Connaître et appliquer les règles de déplacement de charges', 26, NULL, 33, 16),
(99, '7-2-5 Identifier un dysfonctionnement dans son périmètre d\'activité ainsi que les risques associés s\'il y a lieu', 26, NULL, 1, 16),
(100, '7-2-6 Alerter les interlocuteurs concernés par les dysfonctionnements et les risques constatés', 26, NULL, 1, 16),
(101, '7-3-1 Connaître les principaux reflexes de premiers secours (sécurisation du lieu d\'accident, appréciation de l\'état de la/les victime(s), appel des secours)', 27, NULL, 34, 9),
(102, '7-3-2 Réagir de manière adaptée à une situation dangereuse', 27, NULL, 1, 9),
(103, '7-3-3 Identifier le bon interlocuteur à alerter selon les situations les plus courantes', 27, NULL, 1, 9),
(104, '7-4-1 Appliquer les règles de gestion des déchets. Respecter les règles élémentaires de recyclage', 28, NULL, 35, 10),
(105, '7-4-2 Faire un usage optimal des installations et des équipements en termes d\'économie d\'énergie', 28, NULL, 1, 10),
(106, '7-4-3 Choisir et utiliser de manière adaptée les produits d\'usage courant (papeterie, entretien)', 28, NULL, 36, 10),
(107, '7-4-4 Proposer des actions de nature à favoriser le développement durable ', 28, NULL, 36, 10);

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

DROP TABLE IF EXISTS `domaine`;
CREATE TABLE IF NOT EXISTS `domaine` (
  `idDomaine` int(10) NOT NULL AUTO_INCREMENT,
  `numeroDomaine` varchar(10) NOT NULL,
  PRIMARY KEY (`idDomaine`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`idDomaine`, `numeroDomaine`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `idEval` int(10) NOT NULL AUTO_INCREMENT,
  `libelleEval` varchar(2) NOT NULL,
  `idStagiaire` int(10) DEFAULT NULL,
  PRIMARY KEY (`idEval`),
  KEY `evaluation_stagiaire_FK` (`idStagiaire`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluer`
--

DROP TABLE IF EXISTS `evaluer`;
CREATE TABLE IF NOT EXISTS `evaluer` (
  `idCompetence` int(10) NOT NULL,
  `idEval` int(10) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idCompetence`,`idEval`),
  KEY `evaluer_evaluation0_FK` (`idEval`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nbheure`
--

DROP TABLE IF EXISTS `nbheure`;
CREATE TABLE IF NOT EXISTS `nbheure` (
  `idHeure` int(10) NOT NULL AUTO_INCREMENT,
  `totalHeure` float NOT NULL,
  PRIMARY KEY (`idHeure`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `nbheure`
--

INSERT INTO `nbheure` (`idHeure`, `totalHeure`) VALUES
(1, 10),
(2, 9),
(3, 5),
(4, 4),
(5, 6),
(6, 3),
(7, 14),
(8, 2),
(9, 7),
(10, 3.5),
(11, 20),
(12, 18),
(13, 15),
(14, 8.5),
(15, 4.5),
(16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sousdomaine`
--

DROP TABLE IF EXISTS `sousdomaine`;
CREATE TABLE IF NOT EXISTS `sousdomaine` (
  `idSousDomaine` int(10) NOT NULL AUTO_INCREMENT,
  `libelleSousDomaine` varchar(10) NOT NULL,
  `idDomaine` int(10) NOT NULL,
  PRIMARY KEY (`idSousDomaine`),
  KEY `sousDomaine_domaine_FK` (`idDomaine`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sousdomaine`
--

INSERT INTO `sousdomaine` (`idSousDomaine`, `libelleSousDomaine`, `idDomaine`) VALUES
(1, '1 - 1', 1),
(2, '1 - 2', 1),
(3, '1 - 3', 1),
(4, '1 - 4', 1),
(5, '1 - 5', 1),
(6, '2 - 1', 2),
(7, '2 - 2', 2),
(8, '2 - 3', 2),
(9, '2 - 4', 2),
(10, '2 - 5', 2),
(11, '3 - 1', 3),
(12, '3 - 2', 3),
(13, '3 - 3', 3),
(14, '3 - 4', 3),
(15, '4 - 1', 4),
(16, '4 - 2', 4),
(17, '4 - 3', 4),
(18, '4 - 4', 4),
(19, '5 - 1', 5),
(20, '5 - 2', 5),
(21, '5 - 3', 5),
(22, '6 - 1', 6),
(23, '6 - 2', 6),
(24, '6 - 3', 6),
(25, '7 - 1', 7),
(26, '7 - 2', 7),
(27, '7 - 3', 7),
(28, '7 - 4', 7);

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `idStage` int(10) NOT NULL AUTO_INCREMENT,
  `nomEntreprise` varchar(255) NOT NULL,
  `nomTuteur` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `secteurActivite` varchar(255) NOT NULL,
  `posteOccupe` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `idStagiaire` int(10) NOT NULL,
  PRIMARY KEY (`idStage`),
  KEY `idStagiaire` (`idStagiaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

DROP TABLE IF EXISTS `stagiaire`;
CREATE TABLE IF NOT EXISTS `stagiaire` (
  `idStagiaire` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL,
  `orientation` varchar(10) NOT NULL,
  `DVE` varchar(10) NOT NULL,
  PRIMARY KEY (`idStagiaire`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stagiaire`
--

INSERT INTO `stagiaire` (`idStagiaire`, `nom`, `prenom`, `groupe`, `orientation`, `DVE`) VALUES
(10, 'ozanne', 'ulrich', '1', '', ''),
(11, 'leclercq', 'cedwic', '1', '', ''),
(12, 'milou', 'maxence', '1', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idType` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`idType`, `type`) VALUES
(1, 'superAdmin'),
(2, 'utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `idType` int(10) NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `utilisateur_type_FK` (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `login`, `mdp`, `idType`, `prenom`, `nom`) VALUES
(21, 'remiLeroy', '$2y$10$prNjG5LTK9mIxEGiDsJ9hu08qFlt6v/Uhg0xsCJuxmx2a3TC3y33W', 1, 'Rémi', 'Leroy'),
(23, 'okok', '$2y$10$rh9Vfbk9VF5bnWt8cfbAi.lhjhMEHJb3.xWXruBNM6DH.3RSvliI2', 2, 'okok', 'okok');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `competence_acquis0_FK` FOREIGN KEY (`idAcquis`) REFERENCES `acquis` (`idAcquis`),
  ADD CONSTRAINT `competence_activite1_FK` FOREIGN KEY (`idActivite`) REFERENCES `activite` (`idActivite`),
  ADD CONSTRAINT `competence_nbHeure2_FK` FOREIGN KEY (`idHeure`) REFERENCES `nbheure` (`idHeure`),
  ADD CONSTRAINT `competence_sousDomaine_FK` FOREIGN KEY (`idSousDomaine`) REFERENCES `sousdomaine` (`idSousDomaine`);

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_stagiaire_FK` FOREIGN KEY (`idStagiaire`) REFERENCES `stagiaire` (`idStagiaire`);

--
-- Contraintes pour la table `evaluer`
--
ALTER TABLE `evaluer`
  ADD CONSTRAINT `evaluer_competence_FK` FOREIGN KEY (`idCompetence`) REFERENCES `competence` (`idCompetence`),
  ADD CONSTRAINT `evaluer_evaluation0_FK` FOREIGN KEY (`idEval`) REFERENCES `evaluation` (`idEval`);

--
-- Contraintes pour la table `sousdomaine`
--
ALTER TABLE `sousdomaine`
  ADD CONSTRAINT `sousDomaine_domaine_FK` FOREIGN KEY (`idDomaine`) REFERENCES `domaine` (`idDomaine`);

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `idStagiaire` FOREIGN KEY (`idStagiaire`) REFERENCES `stagiaire` (`idStagiaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_type_FK` FOREIGN KEY (`idType`) REFERENCES `type` (`idType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
