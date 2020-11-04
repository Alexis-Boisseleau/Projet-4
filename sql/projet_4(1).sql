-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 30 oct. 2020 à 13:05
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `administration`
--

INSERT INTO `administration` (`id`, `pseudo`, `password`) VALUES
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
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `author`, `createdAt`) VALUES
(1, '<p style=\"text-align: center;\">L\'hisoire de l\'Alaska</p>', '<p style=\"text-align: justify;\">Alaska signifie &laquo; continent &raquo; en al&eacute;oute. Cette r&eacute;gion, que l&rsquo;on appelait au xixe si&egrave;cle l&rsquo;&laquo; Am&eacute;rique russe &raquo;, tire son nom d&rsquo;une longue presqu&rsquo;&icirc;le, au nord-ouest du continent am&eacute;ricain, &agrave; environ 1 000 km au sud du d&eacute;troit de Bering, et qui se lie, vers le sud, aux &icirc;les Al&eacute;outiennes. Peupl&eacute; par des al&eacute;outes, esquimaux (notamment Inuits et Yupiks) et peut-&ecirc;tre d&rsquo;autres am&eacute;rindiens depuis plusieurs mill&eacute;naires, le territoire est colonis&eacute; par des trappeurs russes &agrave; la fin du XVIII &egrave;me si&egrave;cle. L&rsquo;Alaska vit alors essentiellement du commerce du bois et de la traite des fourrures. En 1867, les &Eacute;tats-Unis l&rsquo;ach&egrave;tent &agrave; la Russie pour la somme de 7,2 millions de dollars (environ 120 millions de dollars actuels), et celui-ci adh&egrave;re &agrave; l&rsquo;Union le 3 janvier 1959.</p>', '<p>Jean Forteroche</p>', '2020-02-04 09:17:22'),
(2, '<p style=\"text-align: center;\">Partie arctique de l\'Alaska</p>', '<p>La partie de l&rsquo;Alaska pr&eacute;sente au Nord du cercle polaire repr&eacute;sente une superficie de 65 000 km&sup2;. La partie c&ocirc;ti&egrave;re est longue de 1700 km.</p>\r\n<p>Au nord du cercle polaire, la cha&icirc;ne de Brooks, massive et peu &eacute;lev&eacute;e, s&rsquo;&eacute;tend sur 1 000 km environ, de la fronti&egrave;re canadienne &agrave; la mer des Tchouktches. Les altitudes moyennes sont de l&rsquo;ordre de 1 500 m, quoique la cha&icirc;ne culmine pr&egrave;s de la fronti&egrave;re canadienne &agrave; plus de 2 700 m. Peu de glaciers subsistent, mais le relief t&eacute;moigne de glaciations anciennes. Le versant nord des monts Brooks est prolong&eacute; par des collines d&rsquo;altitude d&eacute;croissante qui aboutissent &agrave; une plaine s&rsquo;&eacute;tendant jusqu&rsquo;au rivage arctique. Toute cette r&eacute;gion est appel&eacute;e North Slope ou Artic Slope. Le climat est froid et aride, et le sol gel&eacute; sur une profondeur de plusieurs centaines de m&egrave;tres. De grands refuges ont &eacute;t&eacute; cr&eacute;&eacute;s pour prot&eacute;ger les hardes de caribous migrateurs. La banquise est habit&eacute;e par des phoques, des morses et des ours blancs ; lorsqu&rsquo;elle se retire, plusieurs esp&egrave;ces de baleines migrent au large de la c&ocirc;te arctique.</p>\r\n<p>Au nord du cercle polaire, la cha&icirc;ne de Brooks s&eacute;pare les r&eacute;gions centrales des plaines arctiques.</p>', '<p>Jean Forteroche</p>', '2020-02-12 11:14:21'),
(4, '<p style=\"text-align: center;\">G&eacute;ographie de l\'Alaska</p>', '<p>L&rsquo;Alaska, d&rsquo;une superficie de 1 518 769 km&sup2; (presque trois fois celle de la France), est entour&eacute; :</p>\r\n<p>au Nord, la mer de Beaufort et l&rsquo;oc&eacute;an Arctique</p>\r\n<p>&agrave; l&rsquo;Ouest, la mer des Tchouktches et la mer de B&eacute;ring. La Russie n&rsquo;est qu&rsquo;&agrave; 83 kilom&egrave;tres s&eacute;par&eacute;e par le d&eacute;troit de B&eacute;ring.</p>\r\n<p>au Sud, le golfe d&rsquo;Alaska et l&rsquo;oc&eacute;an Pacifique et la Colombie Britannique.</p>\r\n<p>&agrave; l&rsquo;Est, le territoire du Yukon dans sa partie Nord et la Colombie Britannique dans sa partie Sud.</p>\r\n<p>&nbsp;</p>\r\n<p>&Icirc;les et fjords compris, la longueur des c&ocirc;tes atteint 54 000 km, soit plus d&rsquo;une fois et demie le littoral du reste des &Eacute;tats-Unis. &Agrave; l&rsquo;est, la fronti&egrave;re avec le Canada s&rsquo;&eacute;tend sur 2 470 km, dont environ 1 050 km en ligne droite vers le nord &agrave; partir du mont Saint Elias. La cordill&egrave;re qui traverse tout le continent am&eacute;ricain d&eacute;crit un vaste arc de cercle dans le sud de l&rsquo;Alaska ; elle est prolong&eacute;e par la cha&icirc;ne des Al&eacute;outiennes. Au nord du cercle polaire, la cha&icirc;ne de Brooks s&eacute;pare les r&eacute;gions centrales des plaines arctiques. Le relief prononc&eacute; d&eacute;termine des r&eacute;gions naturelles et des zones climatiques fort diverses.</p>', '<p>Jean Forteroche</p>', '2020-04-21 10:02:08'),
(40, '<p style=\"text-align: center;\">Climat en Alaska&nbsp;</p>', '<p>Quoique l&rsquo;Alaska soit situ&eacute; &agrave; la m&ecirc;me latitude que la Scandinavie, on ne peut comparer ni leurs conditions naturelles ni leur d&eacute;veloppement &eacute;conomique actuel ou potentiel. En effet, &agrave; l&rsquo;exception de la c&ocirc;te du Pacifique, la nature est plus hostile &agrave; l&rsquo;homme en Alaska que dans le Nord europ&eacute;en. Le littoral de l&rsquo;oc&eacute;an Arctique&nbsp;et de la mer de B&eacute;ring&nbsp;poss&egrave;de un climat polaire. L&rsquo;hiver est long, froid (temp&eacute;rature moyenne inf&eacute;rieure &agrave; &ndash;&nbsp;18&nbsp;&deg;C pendant 170 &agrave; 180&nbsp;jours, minimale de &ndash;&nbsp;40 &agrave; &ndash;&nbsp;50&nbsp;&deg;C) et relativement sec. L&rsquo;&eacute;t&eacute; est court, sans chaleur (moyenne inf&eacute;rieure &agrave; 10&nbsp;&deg;C) et re&ccedil;oit quelques pr&eacute;cipitations. Dans les vall&eacute;es int&eacute;rieures (Yukon, Tanana) r&egrave;gne le climat subarctique, avec des minimums encore plus bas que ceux de la r&eacute;gion arctique (minimum absolu de &ndash;&nbsp;60&nbsp;&deg;C &agrave; Tanana), mais avec un moins grand nombre de jours tr&egrave;s froids&nbsp;; les pr&eacute;cipitations sont plus abondantes, surtout en &eacute;t&eacute;&nbsp;; un ou deux mois d&rsquo;&eacute;t&eacute; ont une moyenne d&eacute;passant 10&nbsp;&deg;C et occasionnellement des temp&eacute;ratures de 25&nbsp;&deg;C, voire 30&nbsp;&deg;C. Seule la c&ocirc;te du Pacifique est temp&eacute;r&eacute;e, sans hiver marqu&eacute; (&ndash;&nbsp;2&nbsp;&deg;C en janvier &agrave; Sitka), ni &eacute;t&eacute; accus&eacute; (11&nbsp;&deg;C en ao&ucirc;t)&nbsp;; les pr&eacute;cipitations d&eacute;passent partout 2&nbsp;500&nbsp;mm, 4&nbsp;000&nbsp;mm sur la c&ocirc;te m&ecirc;me (4&nbsp;500&nbsp;mm &agrave; Ketchikan) et beaucoup plus encore dans les montagnes littorales.</p>\r\n<p>Sur la fa&ccedil;ade arctique, le perg&eacute;lisol (sol gel&eacute; permanent) est continu&nbsp;; en &eacute;t&eacute;, une mince couche d&eacute;g&egrave;le, et la r&eacute;gion se transforme en une toundra tachet&eacute;e de marais infranchissables et perc&eacute;e d&rsquo;une myriade de lacs. Dans l&rsquo;int&eacute;rieur, le perg&eacute;lisol, discontinu ou plus profond en &eacute;t&eacute;, permet la croissance de la toundra bois&eacute;e ou d&rsquo;une for&ecirc;t de petits conif&egrave;res. La c&ocirc;te du Pacifique doit &agrave; l&rsquo;absence de perg&eacute;lisol, aux temp&eacute;ratures mod&eacute;r&eacute;es et aux pr&eacute;cipitations abondantes une belle for&ecirc;t de grands conif&egrave;res, comparable parfois &agrave; celle de la Colombie-Britannique.</p>\r\n<p>D&rsquo;une mani&egrave;re g&eacute;n&eacute;rale, le climat alaskien est marqu&eacute; par un hiver glacial et long. L&rsquo;&eacute;crivain Jack London a &eacute;crit que l&rsquo;Alaska &eacute;tait &laquo; le pays o&ugrave; le whisky g&egrave;le et peut servir de presse-papiers durant une bonne partie de l&rsquo;ann&eacute;e &raquo;. Le sol est gel&eacute; en profondeur et emp&ecirc;che le d&eacute;veloppement de l&rsquo;agriculture : c&rsquo;est le perg&eacute;lisol (ou permafrost) qui varie de quelques dizaines &agrave; quelques centaines de m&egrave;tres en Alaska. La couche superficielle, sur laquelle les Hommes marchent, est le mollisol qui d&eacute;g&egrave;le au printemps. En hiver, les chutes de neige et les avalanches peuvent isoler les villages. Au cours du printemps, le sol d&eacute;g&egrave;le en surface et provoque la formation de mar&eacute;cages, souvent infest&eacute;s de moustiques. L&rsquo;Alaska se couvre de centaines de lacs. Les rivi&egrave;res gonflent et charrient des troncs d&rsquo;arbres. L&rsquo;&eacute;t&eacute; ne dure que peu de temps et autour du solstice, le soleil ne se couche pas au-del&agrave; du cercle polaire arctique. La saison est marqu&eacute;e par de grands incendies de for&ecirc;t provoqu&eacute;s par la foudre.</p>\r\n<p>&nbsp;</p>', '<p>Jean Forteroche</p>', '2020-10-02 10:00:17'),
(5, '<p>Volcan de l\'Alaska</p>', '<div id=\"slider-pro-3-2885\" class=\"slider-pro sp-horizontal sp-has-buttons\">\r\n<div class=\"sp-buttons\">\r\n<div class=\"sp-button\">Le chapelet des &icirc;les Al&eacute;outiennes t&eacute;moignent du choc tectonique : elles ont une forme pointue (exemple : le volcan Mont Shishaldin, (2 857 m&egrave;tres) et prolonge la cordill&egrave;re de la cha&icirc;ne des Al&eacute;outiennes. En 1912, une violente explosion a d&eacute;coiff&eacute; le mont Katmai de ses 600 derniers m&egrave;tres. Plusieurs tonnes d&rsquo;oxyde de soufre ont &eacute;t&eacute; projet&eacute;es dans l&rsquo;atmosph&egrave;re, &agrave; plus de 15 kilom&egrave;tres du sol et ont perturb&eacute; la mousson en Asie. Haut-lieu mondial de la volcanologie, la vall&eacute;e des Dix Mille Fum&eacute;es a &eacute;t&eacute; recouverte par les cendres sur une surface de 100 km2.</div>\r\n</div>\r\n</div>\r\n<p>La fosse des Kouriles borde le plateau continental de l&rsquo;Alaska au sud et atteint une profondeur maximale de 10 498 m&egrave;tres.</p>', '<p>Jean Forteroche</p>', '2020-04-23 10:06:09'),
(17, '<p style=\"text-align: center;\">Economie de l\'Alaska</p>', '<p>Les principales activit&eacute;s du secteur primaire sont la p&ecirc;che, l&rsquo;exploitation du bois, des mati&egrave;res premi&egrave;res et des hydrocarbures. La plupart des biens manufactur&eacute;s est import&eacute;e, ce qui rench&eacute;rit le co&ucirc;t de la vie des habitants.</p>\r\n<p>Le milieu naturel ne laisse que peu de terres pour l&rsquo;agriculture : la Matanuska Valley (en), au nord d&rsquo;Anchorage, est cultiv&eacute;e depuis les ann&eacute;es 1930 et donne des r&eacute;coltes de pommes de terre, salades, tomates, choux55.</p>\r\n<p>Exploitation des hydrocarbures:<br />Le sous-sol de l&rsquo;Alaska est riche en gaz naturel, charbon, or, zinc et autres minerais. Mais surtout, cet &Eacute;tat assure 17 % de la production am&eacute;ricaine de p&eacute;trole, m&ecirc;me si celle-ci est en baisse depuis les ann&eacute;es 1970. 90 % du budget de l&rsquo;Alaska viennent des hydrocarbures.</p>\r\n<p>L&rsquo;&egrave;re de l&rsquo;or noir bouleverse l&rsquo;Alaska. Au nord-est de l&rsquo;&Eacute;tat, la d&eacute;couverte d&rsquo;un &eacute;norme gisement de p&eacute;trole a entra&icirc;n&eacute;, en 1973, la construction d&rsquo;un pipe-line reliant Prudhoe Bay &agrave; Valdez, d&rsquo;o&ugrave; &eacute;tait partie la ru&eacute;e vers l&rsquo;or en 1904.</p>\r\n<p>En novembre 2005, la Chambre des repr&eacute;sentants a renonc&eacute; au projet d&rsquo;exploitation p&eacute;troli&egrave;re dans le territoire prot&eacute;g&eacute; de l&rsquo;Arctic National Wildlife Refuge. Face &agrave; la demande grandissante de p&eacute;trole, le pr&eacute;sident Bill Clinton a ouvert l&rsquo;exploitation vers l&rsquo;ouest de la National Petroleum Reserve. L&rsquo;association &eacute;cologiste Alaska Wilderness League se bat pour emp&ecirc;cher l&rsquo;extension de l&rsquo;exploitation, en organisant des campagnes m&eacute;diatiques retentissantes (Save the Arctic) et en appelant au boycott d&rsquo;Exxon.</p>\r\n<p>Une partie du nord est exploit&eacute;e par plusieurs compagnies telles que British Petroleum, Exxon et ARCO (en). Il s&rsquo;agit de la National Petroleum Reserve. L&rsquo;or noir est &eacute;galement tir&eacute; d&rsquo;une zone off-shore, malgr&eacute; les conditions climatiques polaires. &Agrave; elle seule, la zone de Prudhoe Bay produit la moiti&eacute; du p&eacute;trole de l&rsquo;Alaska et assure 8 % de la production totale am&eacute;ricaine58. En mars 2006, la compagnie britannique BP avait d&eacute;couvert une fuite sur un ol&eacute;oduc de transit de Prudhoe Bay, qui avait laiss&eacute; s&rsquo;&eacute;chapper entre 760 000 et un million de litres de p&eacute;trole. Une nouvelle fuite, d&eacute;but ao&ucirc;t, entra&icirc;ne l&rsquo;arr&ecirc;t provisoire du forage.</p>', '<p>Jean Forteroche</p>', '2020-05-11 09:44:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articleid`, `author`, `content`, `createdAt`, `flag`) VALUES
(1, 1, 'michel', 'super article!', '2020-04-22 00:00:00', 0),
(43, 2, 'alex', 'très bel article ', '2020-10-12 10:41:08', 0),
(3, 2, 'corine', 'wow amazing', '2020-02-11 00:00:00', 0),
(33, 17, 'alex', 'cool', '2020-08-05 11:44:41', 1),
(49, 40, '', '', '2020-10-26 14:07:44', 0),
(48, 40, 'alex', 'xdgsdgbsdg', '2020-10-26 14:06:24', 0),
(44, 1, 'alex', 'fgh', '2020-10-12 11:03:51', 0),
(45, 17, 'vnb', 'bhk;;', '2020-10-12 13:09:28', 0),
(46, 17, 'alex', 'dsgcfgb', '2020-10-26 12:53:43', 0),
(42, 4, 'alex', 'c\'est super beau l\'alaska!', '2020-10-02 16:04:04', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
