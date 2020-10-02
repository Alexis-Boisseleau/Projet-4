-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 01 oct. 2020 à 12:08
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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `author`, `createdAt`) VALUES
(1, '<p>Le Paon</p>', '<p style=\"text-align: justify;\">Un paon muait : un geai prit son plumage ; Puis apr&egrave;s se l\'accommoda (1) ; Puis parmi d\'autres paons tout fier se panada (2), Croyant &ecirc;tre un beau personnage. Quelqu\'un le reconnut : il se vit bafou&eacute;, Bern&eacute;, siffl&eacute;, moqu&eacute;, jou&eacute;,(3) Et par messieurs les paons plum&eacute; d\'&eacute;trange sorte ; M&ecirc;me vers ses pareils s\'&eacute;tant r&eacute;fugi&eacute;, Il fut par eux mis &agrave; la porte. Il est assez de geais &agrave; deux pieds comme lui, Qui se parent souvent des d&eacute;pouilles d\'autrui, Et que l\'on nomme plagiaires (4). Je m\'en tais, et ne veux leur causer nul ennui : Ce ne sont pas l&agrave; mes affaires.</p>', '<p>Jean de La Fontaine</p>', '2020-02-04 09:17:22'),
(2, '<p>Le lievre et la Tortue</p>', '<p style=\"text-align: justify;\">Rien ne sert de courir ; il faut partir &agrave; point. Le Li&egrave;vre et la Tortue en sont un t&eacute;moignage. Gageons, dit celle-ci, que vous n\'atteindrez point Si t&ocirc;t que moi ce but. Si t&ocirc;t ? &Ecirc;tes-vous sage ?(1) Repartit l\'Animal l&eacute;ger.(2) Ma Comm&egrave;re, il vous faut purger Avec quatre grains (3) d\'ell&eacute;bore. Sage ou non, je parie encore. Ainsi fut fait : et de tous deux On mit pr&egrave;s du but les enjeux. Savoir quoi, ce n\'est pas l\'affaire ; Ni de quel juge l\'on convint. (4) Notre Li&egrave;vre n\'avait que quatre pas &agrave; faire ; J\'entends de ceux qu\'il fait lorsque pr&ecirc;t d\'&ecirc;tre atteint Il s\'&eacute;loigne des Chiens, les renvoie aux calendes, (5) Et leur fait arpenter les landes. Ayant, dis-je, du temps de reste pour brouter, Pour dormir, et pour &eacute;couter D\'o&ugrave; vient le vent, il laisse la Tortue Aller son train de S&eacute;nateur. (6) Elle part, elle s\'&eacute;vertue ; Elle se h&acirc;te avec lenteur. Lui cependant m&eacute;prise une telle victoire ; Tient la gageure (7) &agrave; peu de gloire ; Croit qu\'il y va de son honneur De partir tard. Il broute, il se repose, Il s\'amuse &agrave; toute autre chose Qu\'&agrave; la gageure. &Agrave; la fin, quand il vit Que l\'autre touchait presque au bout de la carri&egrave;re, (8) Il partit comme un trait ; mais les &eacute;lans qu\'il fit Furent vains : la Tortue arriva la premi&egrave;re. Eh bien, lui cria-t-elle, avais-je pas raison ? (9) De quoi vous sert votre vitesse ? Moi l\'emporter ! et que serait-ce Si vous portiez une maison ?</p>', '<p>Jean de La Fontaine</p>', '2020-02-12 11:14:21'),
(3, '<p>La poule aux oeufs d\'Or</p>', '<p style=\"text-align: justify;\">L\'Avarice (1) perd tout en voulant tout gagner. Je ne veux pour le t&eacute;moigner (2) Que celui (3) dont la Poule, &agrave; ce que dit la fable, (4) Pondait tous les jours un &oelig;uf d\'or. Il crut que dans son corps elle avait un tr&eacute;sor. Il la tua, l\'ouvrit, et la trouva semblable A celles dont les &oelig;ufs ne lui rapportaient rien, S\'&eacute;tant lui-m&ecirc;me &ocirc;t&eacute; le plus beau de son bien. Belle le&ccedil;on pour les gens chiches : (5) Pendant ces derniers temps, combien en a-t-on vus Qui du soir au matin sont pauvres devenus Pour vouloir trop t&ocirc;t &ecirc;tre riches ? (6)</p>', '<p>Jean de La fontaine</p>', '2020-02-18 03:26:12'),
(4, '<p>L\'Aigle et l\'Escarbot</p>', '<p>L\'Aigle donnait la chasse &agrave; Ma&icirc;tre Jean Lapin, Qui droit &agrave; son terrier s\'enfuyait au plus vite. Le trou de l\'Escarbot se rencontre en chemin : Je laisse &agrave; penser si ce g&icirc;te Etait s&ucirc;r ; mais o&ugrave; mieux (1) ? Jean Lapin s\'y blottit. L\'Aigle fondant sur lui nonobstant (2) cet asile, L\'Escarbot interc&egrave;de et dit : Princesse (3) des Oiseaux, il vous est fort facile D\'enlever malgr&eacute; moi ce pauvre malheureux ; Mais ne me faites pas cet affront, je vous prie ; Et, puisque Jean Lapin vous demande la vie, Donnez-la-lui, de gr&acirc;ce, ou l\'&ocirc;tez &agrave; tous deux : C\'est mon voisin, c\'est mon comp&egrave;re. L\'Oiseau de Jupiter, sans r&eacute;pondre un seul mot, Choque de l\'aile l\'Escarbot, L\'&eacute;tourdit, l\'oblige &agrave; se taire, Enl&egrave;ve Jean Lapin. L\'Escarbot indign&eacute; Vole au nid de l\'Oiseau, fracasse en son absence Ses &oelig;ufs, ses tendres &oelig;ufs, sa plus douce esp&eacute;rance : Pas un seul ne fut &eacute;pargn&eacute;. L\'Aigle &eacute;tant de retour et voyant ce m&eacute;nage, Remplit le ciel de cris, et, pour comble de rage, Ne sait sur qui venger le tort qu\'elle a souffert. Elle g&eacute;mit en vain, sa plainte au vent se perd. Il fallut pour cet an vivre en m&egrave;re afflig&eacute;e. L\'an suivant, elle mit son nid en lieu plus haut. L\'Escarbot prend son temps, fait faire aux &oelig;ufs le saut. La mort de Jean Lapin derechef est veng&eacute;e. Ce second deuil fut tel que l\'&eacute;cho de ces bois N\'en dormit de plus de six mois. L\'Oiseau qui porte Ganym&egrave;de (4) Du Monarque des Dieux enfin implore l\'aide, D&eacute;pose en son giron ses &oelig;ufs, et croit qu\'en paix Ils seront dans ce lieu, que pour ses int&eacute;r&ecirc;ts Jupiter se verra contraint de les d&eacute;fendre : Hardi qui les irait l&agrave; prendre. Aussi ne les y prit-on pas. Leur ennemi changea de note, Sur la robe du Dieu fit tomber une crotte ; Le Dieu la secouant jeta les &oelig;ufs &agrave; bas. Quand l\'Aigle sut l\'inadvertance (5), Elle mena&ccedil;a Jupiter D\'abandonner sa cour, d\'aller vivre au d&eacute;sert (6), De quitter toute d&eacute;pendance Avec mainte autre extravagance. Le pauvre Jupiter se tut : Devant son tribunal l\'Escarbot comparut, Fit sa plainte, et conta l\'affaire : On fit entendre &agrave; l\'Aigle enfin qu\'elle avait tort. Mais les deux ennemis ne voulant point d\'accord, Le Monarque des Dieux s\'avisa, pour bien faire, De transporter le temps o&ugrave; l\'Aigle fait l\'amour En une autre saison, quand la race escarbote Est en quartier d\'hiver, et comme la Marmotte Se cache et ne voit point le jour.</p>', '<p>Jean de La Fontaine</p>', '2020-04-21 10:02:08'),
(5, '<p>Le cur&eacute; et le mort</p>', '<p style=\"text-align: justify;\">Un mort s\'en allait tristement S\'emparer de (1) son dernier g&icirc;te ; Un Cur&eacute; s\'en allait gaiement Enterrer ce mort au plus vite. Notre d&eacute;funt &eacute;tait en carrosse port&eacute;, Bien et d&ucirc;ment empaquet&eacute;, Et v&ecirc;tu d\'une robe, h&eacute;las ! qu\'on nomme bi&egrave;re, Robe d\'hiver, robe d\'&eacute;t&eacute;, Que les morts ne d&eacute;pouillent gu&egrave;re. Le Pasteur &eacute;tait &agrave; c&ocirc;t&eacute;, Et r&eacute;citait &agrave; l\'ordinaire (2) Maintes d&eacute;votes oraisons, Et des psaumes et des le&ccedil;ons, Et des versets et des r&eacute;pons (3) : Monsieur le Mort, laissez-nous faire, On vous en donnera de toutes les fa&ccedil;ons ; Il ne s\'agit que du salaire. Messire Jean Chouart (4) couvait des yeux son mort, Comme si l\'on e&ucirc;t d&ucirc; lui ravir ce tr&eacute;sor, Et des regards semblait lui dire : Monsieur le Mort, j\'aurai de vous Tant en argent, et tant en cire, (5) Et tant en autres menus co&ucirc;ts. Il fondait l&agrave;-dessus l\'achat d\'une feuillette Du meilleur vin des environs ; Certaine ni&egrave;ce assez propette Et sa chambri&egrave;re P&acirc;quette Devaient voir des cotillons. Sur cette agr&eacute;able pens&eacute;e Un heurt survient, adieu le char. Voil&agrave; Messire Jean Chouart Qui du choc de son mort a la t&ecirc;te cass&eacute;e : Le Paroissien en plomb entra&icirc;ne son Pasteur ; Notre Cur&eacute; suit son Seigneur ; Tous deux s\'en vont de compagnie. Proprement toute notre vie ; Est le cur&eacute; Chouart, qui sur son mort comptait, Et la fable du Pot au lait.</p>', '<p>Jean de la Fontaine</p>', '2020-04-23 10:06:09'),
(17, '<p style=\"text-align: center;\">Le ch&ecirc;ne et le roseau.</p>', '<p style=\"text-align: justify;\">Le Ch&ecirc;ne un jour dit au roseau : Vous avez bien sujet (1)d\'accuser la Nature ; Un Roitelet pour vous est un pesant fardeau. Le moindre vent qui d\'aventure (2) Fait rider la face de l\'eau, Vous oblige &agrave; baisser la t&ecirc;te : Cependant que mon front, au Caucase pareil, Non content d\'arr&ecirc;ter les rayons du soleil, Brave l\'effort de la temp&ecirc;te. Tout vous est aquilon ; tout me semble z&eacute;phir (3). Encor si vous naissiez &agrave; l\'abri du feuillage Dont je couvre le voisinage, Vous n\'auriez pas tant &agrave; souffrir : Je vous d&eacute;fendrais de l\'orage ; Mais vous naissez le plus souvent Sur les humides bords des Royaumes du vent. La Nature envers vous me semble bien injuste. Votre compassion, lui r&eacute;pondit l\'Arbuste , Part d\'un bon naturel ; mais quittez ce souci. Les vents me sont moins qu\'&agrave; vous redoutables. Je plie, et ne romps pas. Vous avez jusqu\'ici Contre leurs coups &eacute;pouvantables R&eacute;sist&eacute; sans courber le dos ; Mais attendons la fin. Comme il disait ces mots, Du bout de l\'horizon accourt avec furie Le plus terrible des enfants Que le Nord e&ucirc;t port&eacute; jusque-l&agrave; dans ses flancs. L\'Arbre tient bon ; le Roseau plie. Le vent redouble ses efforts, Et fait si bien qu\'il d&eacute;racine Celui de qui la t&ecirc;te au ciel &eacute;tait voisine,(4) Et dont les pieds touchaient &agrave; l\'empire des morts.</p>', '<p>Jean de La Fontaine</p>', '2020-05-11 09:44:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articleid`, `author`, `content`, `createdAt`, `flag`) VALUES
(1, 1, 'michel', 'super article!', '2020-04-22 00:00:00', 0),
(2, 1, 'franck', 'pas ouf!', '2020-03-18 00:00:00', 0),
(3, 2, 'corine', 'wow amazing', '2020-02-11 00:00:00', 0),
(33, 17, 'alex', 'cool', '2020-08-05 11:44:41', 0),
(6, 3, 'alexis', 'ça marche ou pas ?\r\n', '2020-04-09 00:00:00', 0),
(10, 4, 'pado', 'wow super', '2020-04-24 11:31:54', 0),
(12, 4, 'star', 'super article', '2020-04-24 11:39:38', 0),
(14, 5, 'pado', 'sdfgqsdf', '2020-04-24 14:50:04', 0),
(20, 1, 'zinedine zidane', 'c\'est bien', '2020-04-24 14:57:29', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
