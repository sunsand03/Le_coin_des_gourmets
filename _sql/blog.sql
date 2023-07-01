-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2023 at 05:53 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(500) DEFAULT NULL,
  `id_auteur` int(11) NOT NULL,
  `date_publication` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `contenu`, `image`, `video`, `id_auteur`, `date_publication`) VALUES
(22, 'Tarte aux poireaux et aux lardons', 'Ingrédients :\r\n\r\n    250 g de farine\r\n    140 g de beurre\r\n    2 cuillères à soupe d\'eau\r\n    3 poireaux\r\n    400 g de lardons\r\n    100 g de fromage râpé\r\n    25 cl de crème fraîche\r\n    Poivre\r\n    Sel\r\n    3 œufs​1​\r\n\r\nPréparation :\r\n\r\n    Préchauffer le four à 210°C (thermostat 7).\r\n    Faire la pâte à tarte : malaxer le beurre et la farine, ajouter l\'eau, étaler puis mettre dans le plat.\r\n    Émincer les poireaux. Les faire dorer dans un peu de beurre.\r\n    Faire dorer les lardons à part.\r\n    Égoutter soigneusement les lardons avant de les ajouter aux poireaux.\r\n    Faire l\'appareil : mêler les œufs, la crème, le sel et le poivre.\r\n    Étaler les poireaux et les lardons sur la pâte.\r\n    Parsemer de gruyère râpé, couvrir avec l\'appareil.\r\n    Mettre au four pendant 25 minutes​1​.', './photo/647a005b81ec3.jpg', 'https://www.youtube.com/embed/kQnmuPDit9I', 12, '2023-06-12 17:24:17'),
(23, 'Tarte Tatin', 'Ingrédients :\r\n\r\n1 pâte feuilletée\r\n6 à 8 pommes (de préférence des variétés comme les Golden ou les Granny Smith)\r\n150 g de sucre\r\n 80 g de beurre\r\n Le jus d&#039;un demi citron\r\n\r\nInstructions :\r\n\r\nPréchauffez votre four à 180°C (thermostat 6).\r\n\r\nPelez les pommes, retirez le cœur et les pépins puis coupez-les en quartiers. Arrosez-les avec le jus de citron pour éviter qu&#039;elles ne brunissent.\r\n\r\nDans une poêle ou une cocotte qui peut aller au four (idéalement une poêle en fonte ou une cocotte en cuivre), faites fondre le beurre à feu moyen. Ajoutez le sucre et remuez jusqu&#039;à ce qu&#039;il soit bien mélangé au beurre.\r\n\r\nAjoutez les quartiers de pomme dans la poêle. Laissez cuire à feu moyen pendant environ 15 minutes jusqu&#039;à ce que les pommes soient tendres et que le mélange de sucre et de beurre se soit transformé en caramel.\r\n\r\nDisposez les pommes et le caramel de manière uniforme sur le fond de la poêle, puis couvrez avec la pâte feuilletée. \r\n\r\nEnfournez pendant environ 25 à 30 minutes, ou jusqu&#039;à ce que la pâte soit bien dorée.\r\n\r\nLaissez refroidir pendant quelques minutes, puis retournez délicatement la tarte sur un plat de service pour que les pommes soient sur le dessus.\r\n\r\nServez tiède ou à température ambiante. La tarte tatin est délicieuse telle quelle, ou vous pouvez l&#039;accompagner d&#039;une boule de glace à la vanille ou d&#039;une cuillerée de crème fraîche.\r\n\r\nBon appétit !', './photo/647d966218c1b.jpg', 'https://www.youtube.com/embed/JQb9nFIcufs', 10, '2023-06-05 08:01:38'),
(24, 'Jus de baobab', 'Ingrédients :\r\n\r\n    100 g de poudre de baobab (aussi appelée pain de singe)\r\n    1 litre d&#039;eau\r\n    Sucre au goût (environ 100 à 200 g)\r\n    Le jus de 2 citrons\r\n    De la menthe fraîche pour la garniture (facultatif)\r\n\r\nInstructions :\r\n\r\n    Dans un grand bol, mélangez la poudre de baobab avec un peu d&#039;eau pour former une pâte.\r\n\r\n    Ajoutez le reste de l&#039;eau petit à petit en mélangeant constamment pour éviter la formation de grumeaux.\r\n\r\n    Laissez reposer le mélange pendant environ 2 heures pour que la poudre de baobab se dissolve complètement.\r\n\r\n    Après 2 heures, passez le mélange à travers une passoire fine ou un tissu propre pour enlever les impuretés et les grumeaux restants. Vous devriez vous retrouver avec un liquide laiteux.\r\n\r\n    Ajoutez le jus de citron et le sucre au goût, puis mélangez bien jusqu&#039;à ce que le sucre soit complètement dissous.\r\n\r\n    Réfrigérez votre jus de baobab pendant quelques heures jusqu&#039;à ce qu&#039;il soit bien frais.\r\n\r\n    Servez votre jus de baobab frais avec des glaçons et une branche de menthe pour la garniture.\r\n\r\nProfitez de votre boisson rafraîchissante et saine !', './photo/647db303ef995.jpg', '', 13, '2023-06-05 10:03:47'),
(25, 'Brownies moelleux et croquant', 'Ingrédients :\r\n\r\n    200 g de chocolat noir\r\n    150 g de sucre\r\n    150 g de beurre\r\n    3 œufs\r\n    90 g de farine\r\n    1 cuillère à café de levure chimique (facultatif, pour un peu plus de moelleux)\r\n    50 g de noix hachées (facultatif)\r\n\r\nInstructions :\r\n\r\n    Préchauffez votre four à 180°C (thermostat 6).\r\n\r\n    Faites fondre le beurre et le chocolat ensemble. Vous pouvez faire cela au micro-ondes (en surveillant bien et en remuant toutes les 30 secondes) ou au bain-marie (placez les ingrédients dans un bol résistant à la chaleur au-dessus d&#039;une casserole d&#039;eau frémissante).\r\n\r\n    Une fois que le beurre et le chocolat sont complètement fondus et bien mélangés, ajoutez le sucre et mélangez bien.\r\n\r\n    Incorporez les œufs un par un, en mélangeant bien après chaque ajout.\r\n\r\n    Ajoutez la farine et la levure chimique, puis mélangez jusqu&#039;à obtenir une pâte lisse.\r\n\r\n    Si vous utilisez des noix, ajoutez-les maintenant et mélangez jusqu&#039;à ce qu&#039;elles soient bien réparties dans la pâte.\r\n\r\n    Versez la pâte dans un moule carré ou rectangulaire préalablement beurré et fariné (ou recouvert de papier cuisson).\r\n\r\n    Faites cuire au four pendant environ 20-25 minutes. Les brownies sont prêts lorsque le dessus est cuit et craquelé, mais l&#039;intérieur est encore un peu mou. Ils continueront à cuire un peu après être sortis du four, donc ne les faites pas trop cuire.\r\n\r\n    Laissez les brownies refroidir dans le moule avant de les découper en carrés.\r\n\r\nVoilà, vous avez une recette de brownies moelleux ! Ces brownies sont délicieux tels quels, mais vous pouvez aussi les servir avec une boule de glace à la vanille pour un dessert encore plus gourmand.', './photo/647db44db5816.jpeg', '', 12, '2023-06-05 10:09:17'),
(26, 'Verrine de mousse d’avocats et saumon fumé', 'Ingrédients :\r\n\r\n2 avocats mûrs\r\n200g de saumon fumé\r\nLe jus d\'un citron\r\n2 cuillères à soupe de crème fraîche épaisse\r\nSel et poivre\r\nAneth frais (facultatif)\r\nInstructions :\r\n\r\nCoupez le saumon fumé en petits morceaux et réservez-le.\r\n\r\nCoupez les avocats en deux, retirez le noyau et épluchez-les. Mettez la chair de l\'avocat dans un mixeur ou un robot de cuisine.\r\n\r\nAjoutez le jus de citron, la crème fraîche, le sel et le poivre à la chair d\'avocat. Mixez jusqu\'à obtenir une texture lisse.\r\n\r\nDisposez une couche d\'avocat dans le fond de chaque verrine.\r\n\r\nAjoutez ensuite une couche de saumon fumé.\r\n\r\nRépétez les couches jusqu\'à épuisement des ingrédients, en terminant par une couche de saumon.\r\n\r\nGarnissez chaque verrine avec un peu d\'aneth frais si vous le souhaitez.\r\n\r\nRéfrigérez les verrines pendant au moins une heure avant de servir.\r\n\r\nCes verrines de saumon et d\'avocat sont parfaites comme entrée ou pour un apéritif. Elles sont fraîches et légères, idéales pour un repas d\'été.', './photo/6480c6cc68baf.jpg', '', 10, '2023-06-07 18:08:31'),
(27, 'Mikate', 'Ingrédients:\r\n\r\n1 kg de farine\r\n400g de sucre\r\n4 sachets de levure de boulanger\r\n2 c.c. de sel\r\n3 sachets de sucre vanillé\r\n2 sachets de levure boulangère\r\nDescription:\r\n\r\nMettre la farine dans un grand plat avec le sucre, la levure et le sel. Verser de l’eau progressivement en mélangeant.\r\nAjouter le sucre vanillé et de l’eau tiède afin d’obtenir une consistance un peu flasque mais pas liquide.\r\nLaisser reposer pendant 1 heure.\r\nPour la cuisson : chauffer l’huile à 170 °C. Ensuite, ajouter les beignets. Si l’huile est assez chaude, le beignet doit remonter à la surface rapidement.\r\nLaissez dorer les beignets environ 5 minutes​​.', './photo/64874bc6d2d14.jpeg', 'https://www.youtube.com/embed/k9gmLD6E9pI', 13, '2023-06-12 16:45:58'),
(28, 'Mini-brochettes de tomates cerises, mozzarella et basilic.', 'Ingrédients:\r\n- Des tomates cerises\r\n- Des billes de mozzarella\r\n- Des feuilles de basilic frais\r\n- De l\'huile d\'olive extra vierge\r\n- Du vinaigre balsamique (facultatif)\r\n- Des piques à brochettes\r\n\r\nInstructions:\r\n\r\nLavez les tomates cerises et les feuilles de basilic.\r\n\r\nÉgouttez les billes de mozzarella.\r\n\r\nCommencez à assembler les mini-brochettes en enfilant une tomate cerise, une feuille de basilic (pliée en deux si elle est grande), et une bille de mozzarella sur une pique à brochette.\r\n\r\nRépétez l\'opération jusqu\'à épuisement des ingrédients.\r\n\r\nDisposez les mini-brochettes sur un plat de service.\r\n\r\nJuste avant de servir, arrosez les brochettes d\'un filet d\'huile d\'olive et, si vous le souhaitez, d\'un peu de vinaigre balsamique.\r\n\r\nCes mini-brochettes sont simples à préparer, belles à regarder et délicieuses à déguster. Elles sont parfaites pour un apéritif léger et frais.', './photo/64874ced6696f.jpg', '', 10, '2023-06-12 16:50:53'),
(29, 'Pancakes super facile', 'Ingrédients pour 4 personnes :\r\n\r\n250 g de farine\r\n30 g de sucre semoule\r\n1 sachet de levure traditionnelle\r\n65 g de beurre doux\r\n1 pincée de sel\r\n2 oeufs\r\n30 cl de lait\r\nInstructions :\r\n\r\nFaire fondre le beurre, dans une casserole à feu doux ou dans un bol au micro-ondes.\r\nMettre la farine, la levure et le sucre dans un saladier. Mélanger et creuser un puits.\r\nAjouter ensuite les oeufs entiers et fouetter l\'ensemble.\r\nIncorporer le beurre fondu, fouetter puis délayer progressivement le mélange avec le lait afin d\'éviter les grumeaux.\r\nLaisser reposer la pâte au minimum 1 heure au réfrigérateur.\r\nDans une poêle chaude et légèrement huilée, faire cuire comme des crêpes, mais en les faisant plus petites. Réserver au chaud et déguster​​.', './photo/64874dd72134c.jpg', '', 12, '2023-06-12 16:54:47'),
(30, 'Ceviche de saumon aux agrumes', 'Ingrédients :\r\n\r\n300 g de pavé de saumon cru\r\n2 oranges\r\n1 pamplemousse rose\r\n2 jus de citron\r\n1/4 de poivron rouge , vert et jaune\r\n1 oignon blanc\r\nDu persil\r\nHuile d\'olive\r\nSel et poivre​1​.\r\nPréparation :\r\n\r\nCoupez le saumon en petits dés.\r\nPelez les oranges et le pamplemousse à vif, ôtez la chair blanche qui les entoure et coupez-les en dés.\r\nPelez les poivrons et coupez-les en petits morceaux, hachez l\'oignon finement.\r\nDans un saladier, mettez tous les ingrédients et assaisonnez avec le jus de citron, l\'huile, le sel et le poivre, mélangez bien.\r\nCouvrez et faites mariner au frais environ une demi-journée et au moment de servir, ajoutez le persil haché​1​.', './photo/64874ec5e9d26.jpg', '', 10, '2023-06-12 16:58:45'),
(31, 'Sangria maison', 'Ingrédients pour 6 personnes :\r\n\r\n15 cl de rhum\r\nFruits de saison coupés en morceaux\r\n45 cl de Fanta\r\n15 cl de cointreau\r\n15 cl de gin\r\n75 cl de vin rouge léger 12°\r\n75 cl de muscat de Valence\r\nPréparation :\r\n\r\nFaire macérer les fruits dans le mélange Gin-Rhum-Cointreau, et mettre au frigo.\r\n1/2 heure avant l\'arrivée des invités, ajouter le vin, le muscat et le Fanta à la préparation, puis remettre au frigo.\r\nAjouter des glaçons, juste avant de servir​1​.', './photo/6487507de290a.jpg', 'https://www.youtube.com/embed/k_Jxp600XGQ', 11, '2023-06-12 17:06:05'),
(32, 'Jus de Bissap', 'Ingrédients :\r\n\r\n2 tasses de fleurs d\'hibiscus séchées\r\n10 tasses d\'eau\r\n1 à 1.5 tasses de sucre (ou plus selon le goût)\r\nQuelques tranches de gingembre frais (facultatif)\r\nQuelques feuilles de menthe (facultatif)\r\nInstructions :\r\n\r\nRincez les fleurs d\'hibiscus à l\'eau froide.\r\nDans une grande casserole, portez l\'eau à ébullition.\r\nAjoutez les fleurs d\'hibiscus et le gingembre à l\'eau bouillante.\r\nLaissez bouillir pendant 10 à 15 minutes.\r\nÉteignez le feu et laissez la boisson se refroidir.\r\nUne fois refroidie, filtrez la boisson à l\'aide d\'une passoire fine pour retirer les fleurs et le gingembre.\r\nAjoutez le sucre à la boisson filtrée et mélangez jusqu\'à ce qu\'il soit complètement dissous. Vous pouvez ajuster la quantité de sucre selon votre goût.\r\nSi vous le souhaitez, vous pouvez ajouter des feuilles de menthe pour donner à la boisson une touche de fraîcheur.\r\nRéfrigérez le bissap avant de le servir.\r\nNote : Certaines personnes aiment ajouter du jus de citron ou d\'orange pour donner un peu d\'acidité à la boisson. Vous pouvez également remplacer une partie de l\'eau par du jus d\'ananas pour une variante exotique de la recette.\r\n\r\nProfitez bien de votre bissap !', './photo/64875195d7cd2.jpg', 'https://www.youtube.com/embed/8UJMjTISqxw', 10, '2023-06-12 17:10:45'),
(33, 'Lasagnes', 'Ingrédients pour 6 personnes :\r\n\r\nPour la sauce bolognaise :\r\n\r\n2 cuillères à soupe d\'huile d\'olive\r\n1 oignon, haché\r\n2 gousses d\'ail, hachées\r\n500g de viande de bœuf hachée\r\n800g de tomates en conserve, hachées\r\n2 cuillères à café de sel\r\n1 cuillère à café de poivre noir moulu\r\n1 cuillère à café d\'origan séché\r\n1 cuillère à café de basilic séché\r\nPour la sauce béchamel :\r\n\r\n50g de beurre\r\n50g de farine\r\n500ml de lait\r\nSel et poivre au goût\r\n1 pincée de noix de muscade\r\nAutres :\r\n\r\n12 feuilles de lasagne\r\n200g de fromage mozzarella râpé\r\n50g de parmesan râpé\r\nInstructions :\r\n\r\nPréchauffez le four à 180°C (350°F).\r\nDans une grande casserole, faites chauffer l\'huile d\'olive et faites revenir l\'oignon et l\'ail jusqu\'à ce qu\'ils soient translucides.\r\nAjoutez la viande de bœuf hachée et faites-la cuire jusqu\'à ce qu\'elle soit bien dorée. Ajoutez ensuite les tomates, le sel, le poivre, l\'origan et le basilic. Laissez mijoter pendant environ 30 minutes.\r\nPendant ce temps, préparez la sauce béchamel. Dans une autre casserole, faites fondre le beurre, puis ajoutez la farine. Mélangez bien jusqu\'à obtenir une pâte lisse. Ajoutez ensuite le lait petit à petit, en remuant constamment jusqu\'à ce que la sauce épaississe. Assaisonnez avec du sel, du poivre et de la noix de muscade.\r\nDans un plat à gratin, déposez une couche de sauce bolognaise, puis une couche de lasagnes, et enfin une couche de sauce béchamel. Répétez l\'opération jusqu\'à épuisement des ingrédients, en terminant par une couche de sauce béchamel.\r\nSaupoudrez le dessus avec le fromage mozzarella râpé et le parmesan.\r\nEnfournez pendant environ 30 minutes, ou jusqu\'à ce que les lasagnes soient dorées et bouillonnantes.\r\nLaissez reposer les lasagnes pendant une dizaine de minutes avant de servir.\r\nBon appétit !\r\n\r\n\r\n\r\n\r\n\r\n', './photo/648752cc3463b.jpg', 'https://www.youtube.com/embed/Qy1BVyiXDgg', 12, '2023-06-12 17:15:56'),
(34, 'Mafé d\'agneau (recette sénégalaise)', 'Liste des ingrédients pour 6 à 8 personnes\r\n\r\nPour le nokoss\r\n1 c à s de Netétou moulu\r\n1/2 oignon\r\n3 gousses d\'ail\r\n\r\n1kg de viande (ex : épaule d\'agneau)\r\n250g de tomate pelée\r\n250g de tomates concentrée\r\n250g de pâte d\'arachide\r\n100g ml d\'huile végétale\r\n1 morceau de guedj\r\n1 morceau de yet\r\n1 Piment (facultatif)\r\n1 oignon\r\nDu sel\r\n\r\nÀ bientôt!', './photo/6487541029dde.jpg', 'https://www.youtube.com/embed/lClwnXJT8kA', 13, '2023-06-12 17:21:20'),
(35, 'Hachis parmentier', 'Ingrédients :\r\n\r\n500g de boeuf haché\r\n1kg de pommes de terre\r\n2 carottes\r\n1 oignon\r\n1 gousse d\'ail\r\n50g de beurre\r\n100ml de lait\r\nFromage râpé (facultatif)\r\nSel, poivre\r\nNoix de muscade (facultatif)\r\nInstructions :\r\n\r\nÉpluchez les pommes de terre et les carottes, puis coupez-les en morceaux. Faites-les cuire dans de l\'eau bouillante salée jusqu\'à ce qu\'elles soient tendres (environ 20 minutes).\r\n\r\nPendant que les pommes de terre et les carottes cuisent, hachez l\'oignon et l\'ail. Faites-les revenir dans une poêle avec un peu de beurre jusqu\'à ce qu\'ils soient translucides.\r\n\r\nAjoutez le boeuf haché à la poêle et faites cuire jusqu\'à ce qu\'il soit bien doré. Ajoutez du sel et du poivre selon votre goût.\r\n\r\nUne fois que les pommes de terre et les carottes sont cuites, égouttez-les et écrasez-les avec un presse-purée ou une fourchette pour faire une purée. Ajoutez le beurre, le lait, du sel, du poivre et de la noix de muscade (si vous l\'utilisez) à la purée et mélangez bien.\r\n\r\nPréchauffez votre four à 180°C (Thermostat 6).\r\n\r\nDans un plat allant au four, étalez une couche de la viande hachée cuite. Recouvrez-la ensuite avec la purée de pommes de terre et de carottes.\r\n\r\nSaupoudrez de fromage râpé sur le dessus, si vous le souhaitez.\r\n\r\nEnfournez pendant environ 30 minutes, ou jusqu\'à ce que le dessus soit doré.\r\n\r\nEt voilà, votre hachis parmentier est prêt à être dégusté !\r\n\r\nVeuillez noter que cette recette est assez basique et peut être adaptée selon vos préférences. Par exemple, vous pouvez ajouter d\'autres légumes à la viande hachée, comme des petits pois ou du maïs, ou vous pouvez utiliser d\'autres types de fromage pour le dessus.', './photo/6488a9157ba36.jpeg', '', 16, '2023-06-13 17:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `id_auteur` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT NULL,
  `administrateur` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom`, `prenom`, `date_de_naissance`, `email`, `mot_de_passe`, `valide`, `administrateur`) VALUES
(8, 'Testeur', 'volontaire', NULL, 'test3@gmail.com', '$2y$10$PLh/gcmZK/2I4caD/YAwO.1NlwbkuSQYuBZOKw2FA6oOtlDC3Fqw.', NULL, NULL),
(10, 'NOMBO', 'Sandrine', NULL, 'sandrinen@gmail.com', '$2y$10$h7vgyA1mWBScVChUZJX7le/ffHR4UqWHIBaE.6Iu8hFrX6G/.t0XS', NULL, NULL),
(11, 'Dupont', 'Amélie', NULL, 'amelie.dupont@gmail.com', '$2y$10$/VyQM5sa2Q1OyS28XtLT3e.AQMDD9dHo9fHzY0.76fUuoM4LOoh.a', NULL, NULL),
(12, 'DESROUX', 'Vincent', NULL, 'vincent.desroux@gmail.com', '$2y$10$ZJkSIr7sLJOzBFx9sts5teV.UzWbnk/Ucu82lPSfttTeOWjQqMmb.', NULL, NULL),
(13, 'Diallo', 'Fanta', NULL, 'fanta.diallo@yahoo.fr', '$2y$10$fJ5y65fdN.UVW21BQphgiOswz6s5a4x1HnWKHTtGfyS8I0/1SeFE.', NULL, NULL),
(14, 'Ecole', 'La Passerelle', NULL, 'lapasserelle@gmail.com', '$2y$10$yfLxJ4dm7sK8hIx6MkuNsOWUr4DTTYosT.z/fh1j458DrmZvRoTU2', NULL, NULL),
(16, 'Kanian', 'Barbara', NULL, 'bk@gmail.com', '$2y$10$c04dsbL6.CHPqT5iIRxJuOG35Xr2ptSAOEY9v8QxjA0/ge9n.T1j6', NULL, NULL),
(17, 'sandrine', 'noel', NULL, 'sn@gmail.com', '$2y$10$FDgTGKnz7e9t9lLZtYe7Pu64/Q0fkd5d2m5/Avk8.FPRh4KT4Pdlq', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'dessert'),
(5, 'apéritif'),
(9, 'Petit déjeuner/brunch'),
(10, 'Entrées'),
(11, 'Boissons'),
(12, 'Plats');

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `contenu` text,
  `date_heure` datetime DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posseder`
--

CREATE TABLE `posseder` (
  `id_article` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posseder`
--

INSERT INTO `posseder` (`id_article`, `id_categorie`) VALUES
(23, 1),
(25, 1),
(27, 1),
(26, 5),
(27, 5),
(28, 5),
(25, 9),
(27, 9),
(29, 9),
(26, 10),
(28, 10),
(30, 10),
(24, 11),
(31, 11),
(32, 11),
(22, 12),
(33, 12),
(34, 12),
(35, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_auteur` (`id_auteur`);

--
-- Indexes for table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `id_article` (`id_article`);

--
-- Indexes for table `posseder`
--
ALTER TABLE `posseder`
  ADD PRIMARY KEY (`id_article`,`id_categorie`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posseder`
--
ALTER TABLE `posseder`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`);

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`);

--
-- Constraints for table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`),
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
