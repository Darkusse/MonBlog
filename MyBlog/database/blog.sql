-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 déc. 2019 à 17:45
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `texte` text NOT NULL,
  `date` date DEFAULT NULL,
  `auteur` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `texte`, `date`, `auteur`) VALUES
(3, 'The future of web developement on earth', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>', '2018-04-27', 'admin'),
(6, 'Restaurant : Candide, simple et gÃ©nÃ©reux', 'Ambiance familiale, poulet rÃ´ti, brandade de lieu noir, sandwichsâ€¦ Avec son restaurant et son Â« mange-debout Â», pour manger sur le pouce, Candide propose une cuisine basique et rÃ©ussie\r\nPartager sur Messenger\r\n\r\nDans le 10e arrondissement de Paris, Ã  cÃ´tÃ© des grandes tables en bois se dresse une rÃ´tissoire faite sur mesure pour le restaurant.\r\nDans le 10e arrondissement de Paris, Ã  cÃ´tÃ© des grandes tables en bois se dresse une rÃ´tissoire faite sur mesure pour le restaurant. Candide\r\nLa promesse\r\n\r\nSur le compte Instagram du restaurant Candide, ouvert mi-octobre dans le 10e arrondissement de Paris, le chef Alessandro Candido annonce le dÃ©but des festivitÃ©s avec :\r\n\r\nune poignÃ©e de cornichons cultivÃ©s dans le potager de ses beaux-parents (#growyourownfood). Tandis que le chef peaufinait ses recettes de #pickles, son grand-pÃ¨re, Nonno Vincenzo, tressait des paniÃ¨res en bois de chÃ¢taignier (#artisanat) en attendant la fin du chantier ;\r\nune #rÃ´tissoire qui tourne Ã  plein rÃ©gime. Elle incarne la Â« sincÃ©ritÃ© et la spontanÃ©itÃ© Â» revendiquÃ©es par le restaurant dans le manifeste publiÃ© sur son site Internet ;\r\nune story qui reprend le post de ChloÃ© Charles, cuisiniÃ¨re Ã©coresponsable et Ã©pouse de la sommeliÃ¨re : #beauxobjets #bienveillance #cornichons.\r\nLâ€™Ã©preuve du rÃ©el\r\n\r\nMais quel est ce monde idÃ©al Ã  portÃ©e de papilles promis par Instagram ? Avec sa profusion de hashtags convoquant le simple et le gÃ©nÃ©reux, Candide semble cocher toutes les cases requises pour un restaurant du XXIe siÃ¨cle. Au risque de pousser le client cynique au sarcasme, voire Ã  la malveillance ?\r\n\r\nTelles sont les questions qui se posent Ã  lâ€™approche de la rue de Sambre-et-Meuse. DerriÃ¨re les grandes vitrines de Candide, des tables de vieux bois dÃ©corÃ©es de courges de saison, une rÃ´tissoire dans laquelle deux poulets dorent gentiment, des cuisiniers au port altier qui Å“uvrent, silencieux et concentrÃ©s.\r\n\r\nLa porte sâ€™ouvre, un murmure presque familial tapisse les murs. Une large salle, puis une volÃ©e de marches conduisent vers un espace plus petit oÃ¹ une demoiselle prÃ©pare des sandwichs. Câ€™est la deuxiÃ¨me partie de lâ€™histoire : un mange-debout, un endroit oÃ¹ lâ€™on grignote.\r\n\r\nPour lâ€™heure, cela se passe Ã  table, en vitrine. Le menu du midi se prÃ©sente avec la simplicitÃ© dâ€™un veloutÃ© de cÃ©leri et de champignons. Quelques croÃ»tons et des noisettes concassÃ©es apportent couleur automnale et croquant Ã  cette douceur roborative. Un verre de morgon de Lapierre aurait Ã©tÃ© parfait, mais il aurait fallu commander la bouteille.', '2018-04-27', 'Marie Aline'),
(14, 'GrÃ¨ve : Le trafic RATP et SNCF toujours trÃ¨s perturbÃ© dimanche et lundi', ' La RATP et la SNCF ont annoncÃ© un trafic toujours trÃ¨s perturbÃ© dimanche et lundi. CÃ´tÃ© RATP, 14 lignes de mÃ©tro sur 16 fermÃ©es seront notamment fermÃ©es dimanche et 10 lundi, en raison de la grÃ¨ve contre la rÃ©forme des retraites, a-t-elle annoncÃ© ce samedi en fin de journÃ©e.\r\n\r\nCÃ´tÃ© SNCF, un TGV Inoui sur deux, un Ouigo sur six, un Transilien sur six, un IntercitÃ©s sur dix, deux TER sur dix sont prÃ©vus dimanche, et le trafic Â« restera fortement perturbÃ© Â» lundi. Lâ€™entreprise recommande Â« aux voyageurs qui le peuvent de reporter leur dÃ©placement Â».\r\n\r\nDimanche Â« trÃ¨s fortement perturbÃ© Â»\r\nA Paris, le trafic sera Â« normal Â» dimanche et lundi sur les lignes automatiques 1 et 14 du mÃ©tro, la ligne Orlyval qui dessert lâ€™aÃ©roport dâ€™Orly, ainsi que les lignes de bus Orlybus et Roissybus, a indiquÃ© la RATP dans un communiquÃ©. Dimanche, le RER A sera Â« fermÃ© toute la journÃ©e Â», tandis que le trafic du RER B sera Â« trÃ¨s fortement perturbÃ© Â». En revanche, la moitiÃ© des bus et deux tramways sur trois, Â« en moyenne Â», circuleront.\r\n\r\nLundi, les estimations de trafic de la RÃ©gie prÃ©voient que les RER A et B quâ€™elle opÃ¨re circuleront Â« uniquement en heures de pointe Â», et les gares RATP seront fermÃ©es en dehors de ces horaires. Le trafic des deux lignes est annoncÃ© Â« fortement perturbÃ© Â», avec 1 train sur 2 uniquement en heures de pointe (6h30-9h30 et 16h30-19h30) sur le RER A, et 1 train sur 3 uniquement en heures de pointe (6h30-9h30 et 16h30-19h30) sur le RER B. Lâ€™interconnexion est interrompue Ã  Gare du Nord.\r\n\r\nRisque de saturation\r\nSur le mÃ©tro, le trafic sera Â« extrÃªmement perturbÃ© avec risque de saturation en heures de pointe Â» sur les lignes qui fonctionnent : les lignes 1, 14 et lâ€™Orly Val. Le trafic sera trÃ¨s perturbÃ© avec 1 train sur 3 aux heures de pointe et plusieurs stations fermÃ©es sur les lignes 4 et 7.\r\n\r\nSur les lignes 8 et 9, le trafic sera trÃ¨s fortement perturbÃ© et les gares ouvertes uniquement en heures de pointe (6h30-9h30 et 16h30-19h30) avec 1 train sur 2 entre CrÃ©teil Pointe du Lac et Reuilly-Diderot pour la ligne 8, et 1 train sur 2 entre Mairie de Montreuil et Nation sur la 9. Le trafic sera interrompu sur les autres lignes, soit les 2, 3, 3bis, 5, 6, 7, 10, 11, 12, et 13.\r\n\r\nTrafic perturbÃ© aussi sur le tramway\r\nCÃ´tÃ© tramway, 2 tramways sur 3 circuleront en moyenne toute la journÃ©e sur les lignes 2, 3b, 6 et 8. 1 tramway sur 2 en moyenne toute la journÃ©e sur la ligne 5, 1 sur 4 sur la ligne 7, et 1 sur 3 en heures de pointe uniquement sur les lignes 1 et 3a.\r\n\r\nLa moitiÃ© des bus circuleront. Le service du Orlybus sera normal, alors qu\'il y aura deux Roissybus sur trois. La RATP insiste sur le fait que ces estimations ne sont pas dÃ©finitives, et que les prÃ©visions dÃ©finitives pourront Ãªtre donnÃ©es dimanche Ã  17h.\r\n', '2019-12-08', 'Arnaud.B'),
(16, 'Ligue 1 : Battu pour la septiÃ¨me fois d\'affilÃ©e, Toulouse est Â« dans la merde Â»', 'Que sâ€™est-il passÃ© dans le vestiaire du TFC samedi soir aprÃ¨s la lourde dÃ©faite Ã  Strasbourg (4-2) ? Difficile de le savoir mais Ã§a a durÃ© ! Attendu en confÃ©rence de presse, Antoine KombouarÃ© sâ€™y est pointÃ© quarante-cinq minutes aprÃ¨s le coup de sifflet final. Du jamais-vu.\r\n\r\nÂ« Jâ€™avais certaines choses Ã  dire qui nous passe dans la tÃªte quâ€™on est trÃ¨s dÃ©Ã§u, quâ€™on est en colÃ¨re, quand on ne fait pas ce quâ€™il faut Â», sâ€™est vaguement justifiÃ© lâ€™entraÃ®neur toulousain. Son gardien titulaire, Baptiste Reynet, ne devait pas Ãªtre concernÃ© par le discours. Il sâ€™Ã©tait prÃ©sentÃ© devant les micros un quart dâ€™heure plus tÃ´t, visiblement trÃ¨s affectÃ© par la situation.\r\n\r\nÂ« Insupportable de voir comment on a dÃ©fendu ce soir Â»\r\nÂ« Jâ€™ai honte dâ€™avoir pris quatre buts, de perdre pour la septiÃ¨me fois dâ€™affilÃ©e Â», a avouÃ© lâ€™ancien Dijonnais, le regard dans le vide. Â« Il faut prendre conscience quâ€™on est aussi en train de jouer avec nos carriÃ¨res, quâ€™il y a des gens derriÃ¨re nous, des supporters, des salariÃ©s. LÃ , on est dans la merde. Je nâ€™ai pas dâ€™autres mots, je suis dÃ©solÃ© mais il va falloir se bouger pour sâ€™en sortir sinon on y va tout droit (en Ligue 2). Â»\r\n\r\nCe discours de vÃ©ritÃ©, son entraÃ®neur lâ€™a Ã©galement tenu. Â« Câ€™est insupportable de voir comment on a dÃ©fendu ce soir Â», a pointÃ© Antoine KombouarÃ©, sans nier la difficultÃ© de la situation. Cette derniÃ¨re place en Ligue 1, ces sept dÃ©faites de suite et un groupe visiblement touchÃ© mentalement. Samedi en Alsace, il a mÃªme plongÃ© par moments, incapable notamment de tenir un score.\r\n\r\nKombouarÃ© : Â« Je me fous de ma situation personnelle Â»\r\nLes Haut-Garonnais menaient pourtant 1-0 aprÃ¨s trois minutes de jeu et le but dâ€™Isimat-Marin (0-1, 3e). Cette accalmie nâ€™a durÃ© que quatre minutes : KonÃ© a Ã©galisÃ© (1-1) puis les Strasbourgeois ont multipliÃ© les occasions de but. Ils auraient pu mener 4-1 ou 5-1 Ã  la pause (2-1) avec plus de rÃ©ussite. Le TFC Ã©tait tellement Ã  la rueâ€¦. ComplÃ¨tement dÃ©passÃ© et dÃ©sorganisÃ© derriÃ¨re.\r\n\r\nÂ« Quand on prend 4 buts, câ€™est difficile de gagner Â», a rÃ©sumÃ© lâ€™entraÃ®neur toulousain en Ã©voquant des Â« lacunes techniques et tactiques Â». Et mentales aussi Â« car ce nâ€™est pas facile pour les joueurs quand on enchaÃ®ne les dÃ©ceptions Â». Bref, un beau chantier en vue pour lui, arrivÃ© mi-octobre dans la ville rose et qui nâ€™a depuis pas amÃ©liorÃ© grand-chose.\r\n\r\nSe sent-il dÃ©jÃ  menacÃ© pour son avenir au poste ? Â« Je me fous de ma situation personnelle. A mon Ã¢ge, je ne pense plus Ã  Ã§a Â», a rÃ©pondu le technicien en trouvant des raisons de positiver. Â« LÃ  oÃ¹ on est chanceux câ€™est quâ€™on est catastrophique mais les autres sont toujours lÃ , Ã  portÃ©e de fusil. La 18e place (occupÃ©e par Metz) nâ€™est quâ€™Ã  trois points. Donc oui, la situation est grave mais en mÃªme temps, yâ€™a pas le feu. Â»', '2019-12-08', 'Thibaut Gagnepain'),
(17, 'Android : Une nouvelle faille expose les donnÃ©es bancaires et mots de passe des utilisateurs', 'DerniÃ¨re faille de sÃ©curitÃ© dÃ©couverte sur les smartphones sous Android, StrandHogg rendrait  vulnÃ©rable lâ€™ensemble des versions du systÃ¨me dâ€™exploitation de Google - un vÃ©ritable risque pour lâ€™ensemble des donnÃ©es des propriÃ©taires de smartphones Android, selon lâ€™entreprise norvÃ©gienne spÃ©cialisÃ©e en sÃ©curitÃ© informatique Promon. En cas dâ€™exploitation par des logiciels malveillants, la faille permettrait de rÃ©colter les donnÃ©es bancaires, les mots de passe, ainsi que tout autre fichier stockÃ© sur le smartphone piratÃ©.\r\n\r\nLa vulnÃ©rabilitÃ© repose sur la maniÃ¨re dont le systÃ¨me dâ€™exploitation de Google gÃ¨re le multitÃ¢che. Les pirates informatiques peuvent exploiter la faiblesse de cette gestion pour se superposer Ã  des applications que les utilisateurs pensent ouvrir et ainsi, demander des autorisations dâ€™accÃ¨s Ã  des fonctionnalitÃ©s du smartphone. Croyant quâ€™il sâ€™agit de demandes lÃ©gitimes provenant de leurs applications, les propriÃ©taires autorisent lâ€™accÃ¨s et permettent ainsi aux logiciels malveillants de se dÃ©ployer sur leur tÃ©lÃ©phone. Ils nâ€™ont plus quâ€™Ã  rÃ©colter lâ€™ensemble des donnÃ©es stockÃ©es en prÃ©vision dâ€™une utilisation malveillante (revente, chantage, etc.).\r\n\r\nGrÃ¢ce aux autorisations quâ€™ils recevraient, les logiciels malveillants pourraient Ã©galement afficher de fausses pages de connexion pour un organisme bancaire et ainsi rÃ©cupÃ©rer les identifiants et mots de passe de leurs victimes. En rÃ©alitÃ©, une fois entrÃ© dans le tÃ©lÃ©phone par la faille StrandHogg, un logiciel malveillant pourrait faire tout ce quâ€™il souhaite dessus.\r\n\r\nAndroid : une faille expose les donnÃ©es bancaires et mots de passe des utilisateurs\r\nAndroid : une faille expose les donnÃ©es bancaires et mots de passe des utilisateurs - Geeko\r\nCrÃ©dit photo : Promon\r\n\r\nDe nombreuses applications incriminÃ©es\r\nSelon lâ€™entreprise spÃ©cialisÃ©e Promon, prÃ¨s de 500 applications disponibles sur le Play Store seraient particuliÃ¨rement vulnÃ©rables face Ã  StrandHogg. Pour Lookout, un logiciel antivirus avec lequel Promon a travaillÃ©, 36 logiciels malveillants viseraient la brÃ¨che dâ€™Android.\r\n\r\nPrÃ©venu du problÃ¨me, Google a rÃ©agi Ã  la dÃ©couverte de Promon : Â« Nous apprÃ©cions le travail des chercheurs et nous avons suspendu les applications potentiellement nuisibles quâ€™ils ont identifiÃ©es. En outre, nous continuons dâ€™enquÃªter afin dâ€™amÃ©liorer la capacitÃ© de Google Play Protect Ã  protÃ©ger les utilisateurs contre des problÃ¨mes similaires Â».', '2019-12-08', 'Jennifer Mertens'),
(18, 'DreamWalker, le prochain projet de rÃ©alitÃ© virtuelle de Microsoft', 'Des chercheurs chez Microsoft ont dÃ©veloppÃ© une nouvelle technologie de rÃ©alitÃ© virtuelle qui permet aux utilisateurs d\'arpenter des itinÃ©raires bien rÃ©els tout en Ã©tant plongÃ©s dans un monde virtuel. Il ne s\'agit pas ici de rÃ©alitÃ© augmentÃ©e, oÃ¹ des Ã©lÃ©ments virtuels sont placÃ©s par-dessus une image rÃ©elle, mais bien de rÃ©alitÃ© virtuelle.\r\n\r\nBaptisÃ© DreamWalker, que les fans de jeux vidÃ©o traduiront volontiers  par Â« MarcherÃªve Â» et les autres par Â« Marcheur de rÃªves Â», le systÃ¨me se compose d\'un casque de rÃ©alitÃ© virtuelle qui affiche un environnement entiÃ¨rement fictif, et de diffÃ©rents capteurs afin de gÃ©olocaliser l\'utilisateur et d\'adapter le monde virtuel aux contraintes du monde physique, avec le chemin Ã  suivre et les diffÃ©rents obstacles.\r\n\r\n\r\nPour cette expÃ©rience, huit participants ont parcouru le campus Microsoft en empruntant un itinÃ©raire de 15 minutes, dÃ©couvrant un Manhattan virtuel rempli de voitures, de personnages et dâ€™autres objets animÃ©s. Â© Microsoft\r\n\r\nTransformer le monde rÃ©el en jeu\r\nDans la version actuelle du prototype, les chercheurs ont utilisÃ© un smartphone pour le GPS, un sac Ã  dos contenant un ordinateur avec une carte graphique dÃ©diÃ©e, et deux camÃ©ras avec capteurs de profondeur pour crÃ©er une reprÃ©sentation en 3D de l\'environnement rÃ©el. Le systÃ¨me peut ainsi situer l\'utilisateur de maniÃ¨re prÃ©cise, et s\'adapter au monde rÃ©el, notamment en gÃ©nÃ©rant des objets virtuels pour reprÃ©senter des obstacles bien rÃ©els comme les autres piÃ©tons. DreamWalker adapte Ã©galement de maniÃ¨re dynamique la scÃ¨ne aux contraintes du monde rÃ©el, afin que l\'utilisateur ne dÃ©vie pas du chemin.\r\n\r\nCette nouvelle technologie n\'est pas sans rappeler le film Ready Player One, ou pour les plus anciens l\'Ã©pisode Â« Virtual Slide Â» de la sÃ©rie Sliders. Le systÃ¨me pourrait transformer des corvÃ©es dans le monde rÃ©el en dÃ©tente dans un paysage ou jeu virtuel, mais nÃ©cessitera encore beaucoup de recherches avant de pouvoir Ãªtre utilisÃ© librement dans le monde rÃ©el et permettre, par exemple, de traverser une route sans danger...', '2019-12-11', 'Fabrice Auclert'),
(19, 'Wi-Fi : une portÃ©e augmentÃ©e de 60 mÃ¨tres avec une mise Ã  jour logicielle', 'Avec cette invention, plus besoin de rÃ©pÃ©teur pour augmenter la portÃ©e de son Wi-Fi, ni de changer de matÃ©riel. Attention toutefois, ce sera d\'abord rÃ©servÃ© aux appareils connectÃ©s qui Ã©changent peu de donnÃ©es...\r\n\r\nVous aimez nos ActualitÃ©s ?\r\nInscrivez-vous Ã  la lettre d\'information La quotidienne pour recevoir nos toutes derniÃ¨res ActualitÃ©s une fois par jour.\r\nDes chercheurs de l\'universitÃ© Brigham Young aux Ã‰tats-Unis viennent de mettre au point un nouveau protocole, baptisÃ© On-Off Noise Power Communication ou ONPC, qui pourrait augmenter la portÃ©e des rÃ©seaux Wi-Fi de plus de 60 mÃ¨tres. Cette avancÃ©e technologique ne nÃ©cessite aucun nouveau matÃ©riel et pourrait Ãªtre ajoutÃ©e sur tout appareil et borne Wi-Fi par simple mise Ã  jour logicielle.\r\n\r\nActuellement, les rÃ©seaux nÃ©cessitent un dÃ©bit d\'au moins un mÃ©gabit par seconde (1 Mbps) pour maintenir la connexion et transmettre des donnÃ©es. Le protocole ONPC baisse cette limite Ã  un seul bit par seconde. Un appareil trop loin pour transmettre de maniÃ¨re classique envoie des donnÃ©es sous forme de bruit que la borne parvient Ã  distinguer des autres signaux. Elle reconnaÃ®t alors que l\'appareil tente de communiquer.\r\n\r\nUn protocole pour les objets connectÃ©s\r\nQuel est l\'intÃ©rÃªt d\'un tel systÃ¨me ? Le protocole ONPC ne cherche clairement pas Ã  amÃ©liorer la portÃ©e des smartphones et PC portables. Il s\'adresse plutÃ´t Ã  certains types d\'objets connectÃ©s dont la prÃ©sence seule constitue une donnÃ©e, comme les capteurs de portes de garage ou les dÃ©tecteurs de mouvements. La tentative de connexion rÃ©vÃ¨le ainsi qu\'un Ã©vÃ¨nement s\'est produit nÃ©cessitant une transmission de donnÃ©es, ce qui peut suffire pour ce genre d\'appareils.\r\n\r\nCette technologie viendrait en complÃ©ment d\'autres technologies sans fil. Â« Nous pouvons envoyer et recevoir des donnÃ©es indÃ©pendamment de l\'activitÃ© actuelle du Wi-Fi. Il suffit d\'avoir la capacitÃ© de transmettre de l\'Ã©nergie et recevoir les mesures du bruit Â», a indiquÃ© Phil Lundrigan, l\'un des chercheurs. Â« Nous pourrions Ã©galement appliquer ce protocole aux rÃ©seaux mobiles ou Bluetooth. Â»', '2019-12-11', 'Fabrice Auclert'),
(20, 'Google Maps vous permettra bientÃ´t dâ€™Ã©viter les rues mal Ã©clairÃ©es', 'Google Maps prend soin des piÃ©tons. Le service de navigation de Google va bientÃ´t mettre en Ã©vidence les rues bien Ã©clairÃ©es, rapporte le site spÃ©cialisÃ© XDA Developpers. Les usagers pourront activer cette nouvelle fonctionnalitÃ© baptisÃ©e Â« Lighting Â» pour obtenir un itinÃ©raire garanti sans rues sombres.\r\n\r\nSelon les informations de XDA Developpers, ces rues bien Ã©clairÃ©es seront signalÃ©es en jaune. Mais peu dâ€™Ã©lÃ©ments ont filtrÃ© sur la maniÃ¨re dont Google va alimenter ce nouveau service et le mettre Ã  jour en temps rÃ©el.\r\n\r\nLe service pourrait Ãªtre testÃ© en Inde\r\nCette fonction vise bien sÃ»r Ã  rassurer les piÃ©tons lorsque la nuit tombe, notamment les femmes. En France, 26 % d\'entre elles ont en effet dÃ©jÃ  renoncÃ© Ã  sortir de chez elles pour des raisons de sÃ©curitÃ©, selon une Ã©tude de lâ€™Observatoire national de la dÃ©linquance et des rÃ©ponses pÃ©nales publiÃ©e en septembre 2018.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2019-12-11', 'CHRISTOPHE SEFRIN'),
(21, 'Naples : Gennaro Gattuso officiellement nommÃ© entraÃ®neur Ã  la place d\'Ancelotti', 'Gennaro Gattuso a Ã©tÃ© nommÃ© entraÃ®neur de Naples mercredi, au lendemain de l\'annonce de la mise Ã  l\'Ã©cart de Carlo Ancelotti, a fait savoir le club par un simple tweet. Â« Welcome Gattuso Â», peut-on ainsi lire sur le compte Twitter officiel de Naples. Â« Bienvenue Rino Â», a de son cÃ´tÃ© tweetÃ© Aurelio De Laurentiis, le prÃ©sident du club.\r\n\r\nLe champion du monde 2006 vient donc remplacer Ancelotti, dont il est un ami proche et qui a Ã©tÃ© son entraÃ®neur Ã  l\'AC Milan. Â« Carletto Â» a Ã©tÃ© dÃ©mis de ses fonctions mardi soir aprÃ¨s une victoire face Ã  Genk en Ligue des Champions (4-0).\r\n\r\nS\'il est parvenu Ã  qualifier son Ã©quipe pour les huitiÃ¨mes de finale de la Ligue des Champions, Ancelotti paie en revanche un dÃ©but de championnat ratÃ© en Serie A, sanctionnÃ© par une piÃ¨tre 7e place, Ã  huit points du Top 4.\r\n\r\nÂ« J\'ai parlÃ© avec Ancelotti ce (mercredi) matin. Carlo est comme un pÃ¨re pour moi. Je serais heureux de rÃ©ussir 10% de ce qu\'il a fait dans sa carriÃ¨re Â», a dÃ©clarÃ© Gattuso lors d\'une confÃ©rence de presse organisÃ©e quelques minutes aprÃ¨s l\'annonce de son recrutement.\r\n\r\nÂ« Il a Ã©tÃ© proche de moi pendant toutes ces annÃ©es et il m\'a aidÃ© en tout. Il a tout gagnÃ©, moi je dois encore tout prouver Â», a ajoutÃ© Gattuso, 41 ans, qui reste sur une expÃ©rience mitigÃ©e sur le banc du Milan. Le Calabrais a quittÃ© le club lombard en fin de saison derniÃ¨re aprÃ¨s y avoir passÃ© quasiment deux saisons en tant que coach.\r\n\r\nA Naples, Â« j\'ai trouvÃ© une Ã©quipe consciente d\'Ãªtre dans une situation difficile et qui a envie de bien faire. J\'ai de bonnes sensations. Maintenant on doit baisser la tÃªte et pÃ©daler Â», a encore dÃ©clarÃ© Gattuso, qui a annoncÃ© que son Napoli jouerait en 4-3-3. Â« Cette Ã©quipe a le potentiel pour atteindre les quatre premiÃ¨res places. C\'est embarrassant de voir le Napoli Ã  cette place au classement Â», a-t-il estimÃ©.', '2019-12-11', 'TimothÃ©e Jean');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `texte` text NOT NULL,
  `date` datetime NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `pseudo`, `email`, `texte`, `date`, `id_article`) VALUES
(5, 'aristot', 'as@live.fr', 'changer la base de donner', '2019-12-07 15:38:17', 10),
(6, 'luidion', 'rezrez@hotmail.com', 'excellente topique for me i like this ', '2019-12-07 20:43:27', 3),
(13, 'Amine', 'amine@live.fr', 'forte participation des gens haujourdui', '2019-12-08 02:22:25', 12),
(16, 'shiro', 'shiro@live.com', 'welcome', '2019-12-08 02:44:29', 14),
(22, 'Arial', 'Ar@live.fr', 'Le gouvernement a la trouille. La trouille de ce qui peut arriver le 5 dÃ©cembre. Et aprÃ¨s. Car le 5 dÃ©cembre, câ€™est le dÃ©but de la grÃ¨ve contre le projet de rÃ©forme des retraites qui a dÃ©jÃ  entraÃ®nÃ© de nombreux reculs et voltes face du gouvernement ces derniers jours. Comme si le gouvernement redoutait, cette fois, de perdre la bataille.\"\r\n\r\n', '2019-12-08 21:20:12', 14),
(24, 'David', 'Davis@gmail.com', 'Aucune sÃ©curitÃ© de nous jour !!! ', '2019-12-09 15:30:20', 17),
(25, 'Salim', 'salim@live.fr', 'couocu', '2019-12-09 19:56:22', 17),
(26, 'alonso', 'als@live.fr', 'Dommage pour entraÃ®neur, qui devra chercher un nouveau club  ', '2019-12-15 13:00:10', 21),
(27, 'Blaise', 'bblaise@live.fr', 'dÃ©Ã§u que entraÃ®neur est Ã©tait limoge des ces fonctions ', '2019-12-16 15:42:38', 21);

-- --------------------------------------------------------

--
-- Structure de la table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE IF NOT EXISTS `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ronniengoda@gmail.com', '2018-04-26', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-04-26\nRecord updated automatically on 2018-04-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `page_hits`
--

DROP TABLE IF EXISTS `page_hits`;
CREATE TABLE IF NOT EXISTS `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('Beaux livres 2019. La sélection Cinéma, Musique.', 13),
('Benefits of livig in this world', 8),
('Corneille na pas écrit les pièces de Molière, assure une étude', 24),
('Pierre Amoyal joue Quatre saisons et évoque son Stradivarius Kochanski de 1717', 1),
('The challanges of being a writter', 8),
('The future of web developement on earth', 21),
('The subtle art of not giving a fuck-Mark Manson', 26),
('Why i ventured into writting as a proffesion', 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
