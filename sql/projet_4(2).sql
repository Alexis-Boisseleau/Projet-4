-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 05 nov. 2020 à 14:47
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_4`
--

-- --------------------------------------------------------

--
-- Structure de la table `administration`
--

DROP TABLE IF EXISTS `administration`;
CREATE TABLE IF NOT EXISTS `administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `administration`
--

INSERT INTO `administration` (`id`, `pseudo`, `password`) VALUES
(9, 'admin', '$2y$10$yYzMj.SQITgaGLBA857d.eiiGYrilWSmVVyARKac/b.t02gBKcXki'),
(5, 'alexisboisseleau', '$2y$10$OmzsovTn73yrVOAmcr6dYew7Ebg0TAB2WNAhcuVRalf6tmBEDbPOG');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `createdAt`) VALUES
(1, 'L\'hisoire de l\'Alaska', '<p style=\"text-align: justify;\">Alaska signifie &laquo; continent &raquo; en al&eacute;oute. Cette r&eacute;gion, que l&rsquo;on appelait au xixe si&egrave;cle l&rsquo;&laquo; Am&eacute;rique russe &raquo;, tire son nom d&rsquo;une longue presqu&rsquo;&icirc;le, au nord-ouest du continent am&eacute;ricain, &agrave; environ 1 000 km au sud du d&eacute;troit de Bering, et qui se lie, vers le sud, aux &icirc;les Al&eacute;outiennes. Peupl&eacute; par des al&eacute;outes, esquimaux (notamment Inuits et Yupiks) et peut-&ecirc;tre d&rsquo;autres am&eacute;rindiens depuis plusieurs mill&eacute;naires, le territoire est colonis&eacute; par des trappeurs russes &agrave; la fin du XVIII &egrave;me si&egrave;cle. L&rsquo;Alaska vit alors essentiellement du commerce du bois et de la traite des fourrures. En 1867, les &Eacute;tats-Unis l&rsquo;ach&egrave;tent &agrave; la Russie pour la somme de 7,2 millions de dollars (environ 120 millions de dollars actuels), et celui-ci adh&egrave;re &agrave; l&rsquo;Union le 3 janvier 1959.</p>', '2020-02-04 09:17:22'),
(2, 'Partie arctique de l\'Alaska', '<p>La partie de l&rsquo;Alaska pr&eacute;sente au Nord du cercle polaire repr&eacute;sente une superficie de 65 000 km&sup2;. La partie c&ocirc;ti&egrave;re est longue de 1700 km.</p>\r\n<p>Au nord du cercle polaire, la cha&icirc;ne de Brooks, massive et peu &eacute;lev&eacute;e, s&rsquo;&eacute;tend sur 1 000 km environ, de la fronti&egrave;re canadienne &agrave; la mer des Tchouktches. Les altitudes moyennes sont de l&rsquo;ordre de 1 500 m, quoique la cha&icirc;ne culmine pr&egrave;s de la fronti&egrave;re canadienne &agrave; plus de 2 700 m. Peu de glaciers subsistent, mais le relief t&eacute;moigne de glaciations anciennes. Le versant nord des monts Brooks est prolong&eacute; par des collines d&rsquo;altitude d&eacute;croissante qui aboutissent &agrave; une plaine s&rsquo;&eacute;tendant jusqu&rsquo;au rivage arctique. Toute cette r&eacute;gion est appel&eacute;e North Slope ou Artic Slope. Le climat est froid et aride, et le sol gel&eacute; sur une profondeur de plusieurs centaines de m&egrave;tres. De grands refuges ont &eacute;t&eacute; cr&eacute;&eacute;s pour prot&eacute;ger les hardes de caribous migrateurs. La banquise est habit&eacute;e par des phoques, des morses et des ours blancs ; lorsqu&rsquo;elle se retire, plusieurs esp&egrave;ces de baleines migrent au large de la c&ocirc;te arctique.</p>\r\n<p>Au nord du cercle polaire, la cha&icirc;ne de Brooks s&eacute;pare les r&eacute;gions centrales des plaines arctiques.</p>', '2020-02-12 11:14:21'),
(4, 'Géographie de l\'Alaska', '<p>L&rsquo;Alaska, d&rsquo;une superficie de 1 518 769 km&sup2; (presque trois fois celle de la France), est entour&eacute; :</p>\r\n<p>au Nord, la mer de Beaufort et l&rsquo;oc&eacute;an Arctique</p>\r\n<p>&agrave; l&rsquo;Ouest, la mer des Tchouktches et la mer de B&eacute;ring. La Russie n&rsquo;est qu&rsquo;&agrave; 83 kilom&egrave;tres s&eacute;par&eacute;e par le d&eacute;troit de B&eacute;ring.</p>\r\n<p>au Sud, le golfe d&rsquo;Alaska et l&rsquo;oc&eacute;an Pacifique et la Colombie Britannique.</p>\r\n<p>&agrave; l&rsquo;Est, le territoire du Yukon dans sa partie Nord et la Colombie Britannique dans sa partie Sud.</p>\r\n<p>&nbsp;</p>\r\n<p>&Icirc;les et fjords compris, la longueur des c&ocirc;tes atteint 54 000 km, soit plus d&rsquo;une fois et demie le littoral du reste des &Eacute;tats-Unis. &Agrave; l&rsquo;est, la fronti&egrave;re avec le Canada s&rsquo;&eacute;tend sur 2 470 km, dont environ 1 050 km en ligne droite vers le nord &agrave; partir du mont Saint Elias. La cordill&egrave;re qui traverse tout le continent am&eacute;ricain d&eacute;crit un vaste arc de cercle dans le sud de l&rsquo;Alaska ; elle est prolong&eacute;e par la cha&icirc;ne des Al&eacute;outiennes. Au nord du cercle polaire, la cha&icirc;ne de Brooks s&eacute;pare les r&eacute;gions centrales des plaines arctiques. Le relief prononc&eacute; d&eacute;termine des r&eacute;gions naturelles et des zones climatiques fort diverses.</p>', '2020-04-21 10:02:08'),
(40, 'Climat en Alaska', '<p>quoique l&rsquo;Alaska soit situ&eacute; &agrave; la m&ecirc;me latitude que la Scandinavie, on ne peut comparer ni leurs conditions naturelles ni leur d&eacute;veloppement &eacute;conomique actuel ou potentiel. En effet, &agrave; l&rsquo;exception de la c&ocirc;te du Pacifique, la nature est plus hostile &agrave; l&rsquo;homme en Alaska que dans le Nord europ&eacute;en. Le littoral de l&rsquo;oc&eacute;an Arctique et de la mer de B&eacute;ring poss&egrave;de un climat polaire. L&rsquo;hiver est long, froid (temp&eacute;rature moyenne inf&eacute;rieure &agrave; &ndash; 18 &deg;C pendant 170 &agrave; 180 jours, minimale de &ndash; 40 &agrave; &ndash; 50 &deg;C) et relativement sec. L&rsquo;&eacute;t&eacute; est court, sans chaleur (moyenne inf&eacute;rieure &agrave; 10 &deg;C) et re&ccedil;oit quelques pr&eacute;cipitations. Dans les vall&eacute;es int&eacute;rieures (Yukon, Tanana) r&egrave;gne le climat subarctique, avec des minimums encore plus bas que ceux de la r&eacute;gion arctique (minimum absolu de &ndash; 60 &deg;C &agrave; Tanana), mais avec un moins grand nombre de jours tr&egrave;s froids ; les pr&eacute;cipitations sont plus abondantes, surtout en &eacute;t&eacute; ; un ou deux mois d&rsquo;&eacute;t&eacute; ont une moyenne d&eacute;passant 10 &deg;C et occasionnellement des temp&eacute;ratures de 25 &deg;C, voire 30 &deg;C. Seule la c&ocirc;te du Pacifique est temp&eacute;r&eacute;e, sans hiver marqu&eacute; (&ndash; 2 &deg;C en janvier &agrave; Sitka), ni &eacute;t&eacute; accus&eacute; (11 &deg;C en ao&ucirc;t) ; les pr&eacute;cipitations d&eacute;passent partout 2 500 mm, 4 000 mm sur la c&ocirc;te m&ecirc;me (4 500 mm &agrave; Ketchikan) et beaucoup plus encore dans les montagnes littorales.</p>\r\n<p>Sur la fa&ccedil;ade arctique, le perg&eacute;lisol (sol gel&eacute; permanent) est continu&nbsp;; en &eacute;t&eacute;, une mince couche d&eacute;g&egrave;le, et la r&eacute;gion se transforme en une toundra tachet&eacute;e de marais infranchissables et perc&eacute;e d&rsquo;une myriade de lacs. Dans l&rsquo;int&eacute;rieur, le perg&eacute;lisol, discontinu ou plus profond en &eacute;t&eacute;, permet la croissance de la toundra bois&eacute;e ou d&rsquo;une for&ecirc;t de petits conif&egrave;res. La c&ocirc;te du Pacifique doit &agrave; l&rsquo;absence de perg&eacute;lisol, aux temp&eacute;ratures mod&eacute;r&eacute;es et aux pr&eacute;cipitations abondantes une belle for&ecirc;t de grands conif&egrave;res, comparable parfois &agrave; celle de la Colombie-Britannique.</p>\r\n<p>D&rsquo;une mani&egrave;re g&eacute;n&eacute;rale, le climat alaskien est marqu&eacute; par un hiver glacial et long. L&rsquo;&eacute;crivain Jack London a &eacute;crit que l&rsquo;Alaska &eacute;tait &laquo; le pays o&ugrave; le whisky g&egrave;le et peut servir de presse-papiers durant une bonne partie de l&rsquo;ann&eacute;e &raquo;. Le sol est gel&eacute; en profondeur et emp&ecirc;che le d&eacute;veloppement de l&rsquo;agriculture : c&rsquo;est le perg&eacute;lisol (ou permafrost) qui varie de quelques dizaines &agrave; quelques centaines de m&egrave;tres en Alaska. La couche superficielle, sur laquelle les Hommes marchent, est le mollisol qui d&eacute;g&egrave;le au printemps. En hiver, les chutes de neige et les avalanches peuvent isoler les villages. Au cours du printemps, le sol d&eacute;g&egrave;le en surface et provoque la formation de mar&eacute;cages, souvent infest&eacute;s de moustiques. L&rsquo;Alaska se couvre de centaines de lacs. Les rivi&egrave;res gonflent et charrient des troncs d&rsquo;arbres. L&rsquo;&eacute;t&eacute; ne dure que peu de temps et autour du solstice, le soleil ne se couche pas au-del&agrave; du cercle polaire arctique. La saison est marqu&eacute;e par de grands incendies de for&ecirc;t provoqu&eacute;s par la foudre.</p>\r\n<p>&nbsp;</p>', '2020-10-02 10:00:17'),
(5, 'Volcan de l\'Alaska', '<div id=\"slider-pro-3-2885\" class=\"slider-pro sp-horizontal sp-has-buttons\">\r\n<div class=\"sp-buttons\">\r\n<div class=\"sp-button\">Le chapelet des &icirc;les Al&eacute;outiennes t&eacute;moignent du choc tectonique : elles ont une forme pointue (exemple : le volcan Mont Shishaldin, (2 857 m&egrave;tres) et prolonge la cordill&egrave;re de la cha&icirc;ne des Al&eacute;outiennes. En 1912, une violente explosion a d&eacute;coiff&eacute; le mont Katmai de ses 600 derniers m&egrave;tres. Plusieurs tonnes d&rsquo;oxyde de soufre ont &eacute;t&eacute; projet&eacute;es dans l&rsquo;atmosph&egrave;re, &agrave; plus de 15 kilom&egrave;tres du sol et ont perturb&eacute; la mousson en Asie. Haut-lieu mondial de la volcanologie, la vall&eacute;e des Dix Mille Fum&eacute;es a &eacute;t&eacute; recouverte par les cendres sur une surface de 100 km2.</div>\r\n</div>\r\n</div>\r\n<p>La fosse des Kouriles borde le plateau continental de l&rsquo;Alaska au sud et atteint une profondeur maximale de 10 498 m&egrave;tres.</p>', '2020-04-23 10:06:09'),
(53, 'L\'économie de l\'arctique ', '<p style=\"text-align: justify;\">D&eacute;but juin Shell a renonc&eacute; &agrave; ses permis d&rsquo;exploration dans l&rsquo;Arctique canadien, en mer de Baffin. La compagnie p&eacute;troli&egrave;re a c&eacute;d&eacute; ses droits, couvrant au total une zone de 8 625 km2, &agrave; un organisme de protection de l&rsquo;environnement (Conservation de la nature Canada), en vue de la cr&eacute;ation d&rsquo;un parc naturel marin.</p>\r\n<p style=\"text-align: justify;\">La compagnie anglo-n&eacute;erlandaise avait d&eacute;j&agrave; renonc&eacute; l&rsquo;an dernier, avec pertes et fracas, &agrave; ses projets de forage dans les eaux arctiques de l&rsquo;Alaska et de la Norv&egrave;ge. En mai dernier, elle a abandonn&eacute; ses droits sur ses concessions en Alaska, ne conservant qu&rsquo;un seul permis dans la zone. La compagnie espagnole Repsol a &eacute;galement renonc&eacute; &agrave; ses 93 concessions au large de l&rsquo;Alaska. Ainsi, Shell est la seule compagnie p&eacute;troli&egrave;re &agrave; d&eacute;tenir encore un permis dans les eaux arctiques de l&rsquo;Alaska.</p>\r\n<p style=\"text-align: justify;\">La baisse du prix du p&eacute;trole, les risques inconsid&eacute;r&eacute;s que repr&eacute;sentent les forages dans les eaux glac&eacute;es, l&rsquo;impossibilit&eacute; d&rsquo;y nettoyer une mar&eacute;e noire, les explorations infructueuses mais aussi l&rsquo;opposition croissante des citoyens sont autant de facteurs qui ont fait d&eacute;chanter les promoteurs d&rsquo;un Arctique p&eacute;trolier.</p>\r\n<p style=\"text-align: justify;\">Ces raisons avaient d&eacute;j&agrave; fait renoncer d&rsquo;autres compagnies p&eacute;troli&egrave;res &agrave; exploiter les ressources de l&rsquo;Arctique, au premier rang desquelles Total. Cependant, le groupe fran&ccedil;ais est le premier client du p&eacute;trole arctique russe produit par Gazprom. Derri&egrave;re ses beaux discours, Total inonde donc le march&eacute; europ&eacute;en d&rsquo;un p&eacute;trole particuli&egrave;rement sale, provenant notamment de la plateforme controvers&eacute;e Prirazlomnaya.</p>\r\n<p style=\"text-align: justify;\">Outre l&rsquo;exploitation p&eacute;troli&egrave;re, l&rsquo;autre menace qui p&egrave;se sur l&rsquo;Arctique est l&rsquo;expansion de la p&ecirc;che industrielle, rendue possible par la fonte des glaces. Fin mai, de grandes multinationales ont dit &laquo; non &raquo; au d&eacute;veloppement de la p&ecirc;che au cabillaud (morue) dans les eaux autrefois recouvertes de glace de la mer de Barents, au large de la Norv&egrave;ge. Le moratoire ainsi adopt&eacute;, sous l&rsquo;impulsion de Greenpeace, porte sur une superficie deux fois plus grande que la France</p>\r\n<p style=\"text-align: justify;\">Dans une d&eacute;claration commune, des g&eacute;ants de la restauration (McDonalds, Iglo&hellip;), des enseignes de la grande distribution (dont Tesco, n&deg; 1 britannique), ainsi que la plus grande entreprise europ&eacute;enne de transformation de poisson surgel&eacute; (Espersen) se sont engag&eacute;s &agrave; ne pas se fournir en cabillaud en provenance de ces zones. Cette d&eacute;claration rassemble aussi les associations des flottes de p&ecirc;che russe et norv&eacute;gienne, les deux plus importantes flottes de la r&eacute;gion.</p>\r\n<p style=\"text-align: justify;\">Il s&rsquo;agit d&rsquo;une initiative in&eacute;dite : des industriels d&rsquo;un bout &agrave; l&rsquo;autre de la cha&icirc;ne se sont auto-impos&eacute;s des limites. Cette d&eacute;marche va donc dans le bon sens, mais elle pallie surtout l&rsquo;inaction des gouvernements concern&eacute;s.</p>\r\n<p style=\"text-align: justify;\">L&rsquo;OSPAR, la Commission internationale charg&eacute;e de la pr&eacute;servation du milieu marin en Atlantique du nord-est, se r&eacute;unissait la semaine derni&egrave;re &agrave; Tenerife, en Espagne. &Agrave; l&rsquo;ordre du jour se trouvait notamment la cr&eacute;ation de la premi&egrave;re aire marine prot&eacute;g&eacute;e dans la haute-mer de l&rsquo;oc&eacute;an Arctique. Malgr&eacute; la bonne volont&eacute; de plusieurs pays progressistes, la Norv&egrave;ge, le Danemark et l&rsquo;Islande se sont fermement oppos&eacute;s &agrave; cette initiative, refusant m&ecirc;me tout d&eacute;bat sur la question.</p>\r\n<p style=\"text-align: justify;\">&Agrave; cet &eacute;chec s&rsquo;ajoute un autre mauvais signal : le 18 mai dernier, le gouvernement norv&eacute;gien a attribu&eacute; des licences &agrave; 13 compagnies p&eacute;troli&egrave;res dans l&rsquo;Arctique, notamment dans une zone jusque-l&agrave; totalement inexplor&eacute;e. Pourtant, il y a quelques mois &eacute;tait sign&eacute; &agrave; Paris l&rsquo;accord sur le climat, fixant comme objectif de limiter l&rsquo;augmentation de la temp&eacute;rature mondiale, ent&eacute;rinant la fin prochaine de l&rsquo;&egrave;re des &eacute;nergies fossiles &hellip;</p>\r\n<p style=\"text-align: justify;\">N&eacute;cessit&eacute; urgente d&rsquo;une protection juridique<br />Si quelques pas dans la bonne direction ont &eacute;t&eacute; faits par le secteur priv&eacute;, la r&eacute;gion arctique est encore loin d&rsquo;&ecirc;tre sauv&eacute;e. Il demeure plus que jamais n&eacute;cessaire d&rsquo;&eacute;tablir un cadre juridique &laquo;officiel&raquo; pour sa protection. La r&eacute;gion arctique ne doit pas &ecirc;tre per&ccedil;ue comme une nouvelle zone d&rsquo;exploitation sauvage, ouverte par la fonte de la banquise, mais comme un patrimoine mondial qu&rsquo;il faut pr&eacute;server. C&rsquo;est pourquoi la campagne &laquo;Save the Arctic&raquo; de Greenpeace se poursuit.</p>\r\n<p style=\"text-align: justify;\">Cet &eacute;t&eacute;, l&rsquo;Arctic Sunrise, le brise-glace de Greenpeace, est pr&eacute;sent dans l&rsquo;oc&eacute;an Arctique. Ses membres d&rsquo;&eacute;quipage ont pour mission de v&eacute;rifier que les engagements pris par les industriels sur la p&ecirc;che au cabillaud ne fondent pas comme banquise au soleil, mais aussi de nettoyer les rives souill&eacute;es par les d&eacute;chets des chalutiers.</p>', '2020-11-04 09:48:02');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articleid`, `author`, `content`, `createdAt`, `flag`) VALUES
(1, 1, 'michel', 'super article!', '2020-04-22 00:00:00', 0),
(3, 2, 'corine', 'wow amazing', '2020-02-11 00:00:00', 0),
(71, 4, 'alex', '^ljlkl', '2020-11-04 14:52:30', 1),
(50, 40, 'alex', 'bueno', '2020-11-02 09:02:00', 1),
(58, 40, 'alex', 'le retour', '2020-11-03 16:44:18', 0),
(66, 40, 'alex', 'commentaire ', '2020-11-03 18:04:14', 1),
(42, 4, 'alex', 'c\'est super beau l\'alaska!', '2020-10-02 16:04:04', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
