-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 04 juil. 2023 à 12:53
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
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
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `contenu`, `image`, `video`, `id_auteur`, `date_publication`) VALUES
(22, 'Tarte aux poireaux et aux lardons', 'Ingrédients :\r\n\r\n    250 g de farine\r\n    140 g de beurre\r\n    2 cuillères à soupe d&#039;eau\r\n    3 poireaux\r\n    400 g de lardons\r\n    100 g de fromage râpé\r\n    25 cl de crème fraîche\r\n    Poivre\r\n    Sel\r\n    3 œufs​1​\r\n\r\nPréparation :\r\n\r\n   Préchauffer le four à 210°C (thermostat 7).\r\n   Faire la pâte à tarte : malaxer le beurre et la farine, ajouter l&#039;eau, étaler puis mettre dans le plat.\r\n   Émincer les poireaux. Les faire dorer dans un peu de beurre.\r\n   Faire dorer les lardons à part.\r\n   Égoutter soigneusement les lardons avant de les ajouter aux poireaux.\r\n   Faire l&#039;appareil : mêler les œufs, la crème, le sel et le poivre.\r\n   Étaler les poireaux et les lardons sur la pâte.\r\n   Parsemer de gruyère râpé, couvrir avec l&#039;appareil.\r\n   Mettre au four pendant 25 minutes​.', './photo/647a005b81ec3.jpg', 'https://www.youtube.com/embed/kQnmuPDit9I', 12, '2023-07-04 08:21:30'),
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
(33, 'Lasagnes', 'Ingrédients pour 6 personnes :\r\n\r\nPour la sauce bolognaise :\r\n\r\n2 cuillères à soupe d&#039;huile d&#039;olive\r\n1 oignon, haché\r\n2 gousses d&#039;ail, hachées\r\n500g de viande de bœuf hachée\r\n800g de tomates en conserve, hachées\r\n2 cuillères à café de sel\r\n1 cuillère à café de poivre noir moulu\r\n1 cuillère à café d&#039;origan séché\r\n1 cuillère à café de basilic séché\r\nPour la sauce béchamel :\r\n\r\n50g de beurre\r\n50g de farine\r\n500ml de lait\r\nSel et poivre au goût\r\n1 pincée de noix de muscade\r\nAutres :\r\n\r\n12 feuilles de lasagne\r\n200g de fromage mozzarella râpé\r\n50g de parmesan râpé\r\nInstructions :\r\n\r\nPréchauffez le four à 180°C (350°F).\r\nDans une grande casserole, faites chauffer l&#039;huile d&#039;olive et faites revenir l&#039;oignon et l&#039;ail jusqu&#039;à ce qu&#039;ils soient translucides.\r\nAjoutez la viande de bœuf hachée et faites-la cuire jusqu&#039;à ce qu&#039;elle soit bien dorée. Ajoutez ensuite les tomates, le sel, le poivre, l&#039;origan et le basilic. Laissez mijoter pendant environ 30 minutes.\r\nPendant ce temps, préparez la sauce béchamel. Dans une autre casserole, faites fondre le beurre, puis ajoutez la farine. Mélangez bien jusqu&#039;à obtenir une pâte lisse. Ajoutez ensuite le lait petit à petit, en remuant constamment jusqu&#039;à ce que la sauce épaississe. Assaisonnez avec du sel, du poivre et de la noix de muscade.\r\nDans un plat à gratin, déposez une couche de sauce bolognaise, puis une couche de lasagnes, et enfin une couche de sauce béchamel. Répétez l&#039;opération jusqu&#039;à épuisement des ingrédients, en terminant par une couche de sauce béchamel.\r\nSaupoudrez le dessus avec le fromage mozzarella râpé et le parmesan.\r\nEnfournez pendant environ 30 minutes, ou jusqu&#039;à ce que les lasagnes soient dorées et bouillonnantes.\r\nLaissez reposer les lasagnes pendant une dizaine de minutes avant de servir.\r\nBon appétit !\r\n\r\n\r\n\r\n\r\n\r\n', './photo/648752cc3463b.jpg', 'https://www.youtube.com/embed/Qy1BVyiXDgg', 12, '2023-07-03 08:40:56'),
(34, 'Mafé d\'agneau (recette sénégalaise)', 'Liste des ingrédients pour 6 à 8 personnes\r\n\r\nPour le nokoss\r\n1 c à s de Netétou moulu\r\n1/2 oignon\r\n3 gousses d\'ail\r\n\r\n1kg de viande (ex : épaule d\'agneau)\r\n250g de tomate pelée\r\n250g de tomates concentrée\r\n250g de pâte d\'arachide\r\n100g ml d\'huile végétale\r\n1 morceau de guedj\r\n1 morceau de yet\r\n1 Piment (facultatif)\r\n1 oignon\r\nDu sel\r\n\r\nÀ bientôt!', './photo/6487541029dde.jpg', 'https://www.youtube.com/embed/lClwnXJT8kA', 13, '2023-06-12 17:21:20'),
(39, 'Blanquette de veau', '\r\nIngrédients\r\n- 1 kg de collier de veau coupé en gros cubes (50 g)\r\n- Gros sel\r\n\r\nPour la garniture aromatique\r\n- 1 carotte\r\n- 1 oignon piqué d&#039;un clou de girofle\r\n- 1 blanc de poireau\r\n- 1 branche de céleri\r\n\r\nPour la sauce\r\n- 30 g de beurre\r\n- 30 g de farine\r\n- 1 jaune d&#039;oeuf\r\n- 10 cl de crème fraiche épaisse\r\n- 150 g de petits champignons de Paris\r\n\r\nPour la garniture à l&#039;ancienne\r\n- 4 carottes\r\n- 4 branches de céleri\r\n- 4 blancs de poireau\r\n- 100 g d&#039;oignons nouveaux\r\n- 5 champignons de Paris boutons\r\n- Sel et poivre du moulin.\r\n\r\nPréparation de la recette\r\n    Placez la viande de veau dans une cocotte et couvrez d&#039;eau froide. Portez à ébullition, égouttez et rincez la viande.\r\n    Remettez la viande dans la cocotte et couvrez d&#039;eau froide.\r\n    Faites cuire à frémissements, salez avec du gros sel et écumez, puis ajoutez les légumes de la garniture aromatique (carotte, oignon piqué d&#039;un clou de girofle, blanc de poireau, branche de céleri) sans les couper.\r\n    Laissez cuire à frémissements 45 minutes à couvert. Réservez la viande et passez le bouillon au chinois.\r\n    Dans une casserole, faites fondre 30 grammes de beurre à feu doux, puis incorporez la farine. Mélangez avec une cuillère en bois et laissez légèrement cuire avant de verser le bouillon chaud.\r\n    Mélangez au fouet, portez à ébullition et faites cuire 15 minutes à feu doux. Délayez le jaune d&#039;oeuf dans la crème fraiche. Ajoutez-les au roux blanc tout en mélangeant énergiquement.\r\n    Laissez épaissir à feu doux, puis ajoutez la viande et les petits champignons de Paris lavés. Rectifiez l&#039;assaisonnement.\r\n    Pour la garniture à l&#039;ancienne, épluchez et lavez tous les légumes. Taillez les carottes, le céleri et les poireaux en morceaux. Laissez entiers les oignons et les champignons.\r\n    Faites cuire tous les légumes, séparément, 10 minutes à l&#039;eau bouillante salée.\r\n    Au moment de servir, réchauffez la blanquette de veau dans sa sauce, puis ajoutez les légumes.\r\n\r\n\r\n', './photo/64a3d934eda16.jpg', 'https://www.youtube.com/embed/2Lt1MWEPfps', 11, '2023-07-04 08:32:52'),
(40, 'Ratatouille facile', 'Ingrédients\r\n1 aubergine\r\n2 courgettes\r\n1 oignon\r\n2 poivrons rouges\r\n4 doses de Planta Fin Cuisson Pratique\r\n12 tomates cerises\r\npoivre\r\nthym frais \r\n\r\nInstructions\r\n    Préchauffez le four à 180°C. Lavez et coupez en dés l&#039;aubergine, les courgettes et les poivrons non épluchés. Coupez l&#039;oignon en petits morceaux. Effeuillez les branches  de thym.\r\n    Mélangez les légumes au Planta Fin Cuisson Pratique liquide avec les tomates et ajoutez les feuilles de thym et du poivre, selon vos\r\n    Versez les légumes dans un plat allant au four et faites rôtir la ratatouille une demi-heure au four. \r\n\r\n', './photo/64a3da0097c92.jpg', 'https://www.youtube.com/embed/1cHP_-AMquQ', 11, '2023-07-04 08:36:16'),
(41, 'Boeuf bourguignon', 'Ingrédients :\r\n\r\n    1 kg de bœuf pour bourguignon\r\n    150 g de lardons\r\n    2 carottes\r\n    1 oignon\r\n    4 gousses d&#039;ail\r\n    1 bouteille de vin rouge de Bourgogne (ou autre vin rouge corsé)\r\n    2 cuillères à soupe de farine\r\n    Bouquet garni (thym, laurier)\r\n    Huile d&#039;olive\r\n    Sel, poivre\r\n    200 g de champignons de Paris (facultatif)\r\n    Beurre (pour la cuisson des champignons)\r\n\r\nPréparation :\r\n\r\n    Coupez le bœuf en gros cubes. Épluchez et coupez les carottes en rondelles. Émincez l&#039;oignon et l&#039;ail.\r\n\r\n    Dans une grande cocotte, faites revenir les lardons dans un peu d&#039;huile d&#039;olive. Ajoutez ensuite les morceaux de bœuf et faites-les dorer de tous les côtés. Ajoutez l&#039;oignon et l&#039;ail et laissez revenir quelques minutes.\r\n\r\n    Saupoudrez la viande de farine et remuez bien. Ajoutez ensuite les carottes et le bouquet garni. Salez, poivrez.\r\n\r\n    Versez le vin rouge dans la cocotte jusqu&#039;à ce que la viande soit presque entièrement recouverte. Laissez mijoter à feu doux pendant au moins 2 heures.\r\n\r\n    Si vous souhaitez ajouter des champignons, nettoyez-les et coupez-les en quartiers. Dans une poêle, faites-les revenir dans un peu de beurre jusqu&#039;à ce qu&#039;ils soient dorés, puis ajoutez-les à la cocotte environ 30 minutes avant la fin de la cuisson.\r\n\r\n    Une fois la viande tendre et la sauce réduite, le bœuf bourguignon est prêt à être servi. Accompagnez-le de pommes de terre, de riz ou de pâtes.\r\n\r\nAstuce : Pour encore plus de saveur, préparez le bœuf bourguignon la veille et réchauffez-le doucement avant de servir. Les saveurs auront eu le temps de se développer et le plat sera encore meilleur.', './photo/64a3db17e2e99.jpg', 'https://www.youtube.com/embed/_Bx9P32tdaM', 11, '2023-07-04 08:40:55');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
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
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom`, `prenom`, `date_de_naissance`, `email`, `mot_de_passe`, `valide`, `administrateur`) VALUES
(8, 'utilisateur', 'test', NULL, 'test3@gmail.com', '$2y$10$PLh/gcmZK/2I4caD/YAwO.1NlwbkuSQYuBZOKw2FA6oOtlDC3Fqw.', NULL, NULL),
(10, 'NOMBO', 'Sandrine', NULL, 'sandrinen@gmail.com', '$2y$10$h7vgyA1mWBScVChUZJX7le/ffHR4UqWHIBaE.6Iu8hFrX6G/.t0XS', NULL, NULL),
(11, 'DUPONT', 'Amélie', NULL, 'amelie.dupont@gmail.com', '$2y$10$/VyQM5sa2Q1OyS28XtLT3e.AQMDD9dHo9fHzY0.76fUuoM4LOoh.a', NULL, NULL),
(12, 'DESROUX', 'Vincent', NULL, 'vincent.desroux@gmail.com', '$2y$10$ZJkSIr7sLJOzBFx9sts5teV.UzWbnk/Ucu82lPSfttTeOWjQqMmb.', NULL, NULL),
(13, 'Diallo', 'Fanta', NULL, 'fanta.diallo@yahoo.fr', '$2y$10$fJ5y65fdN.UVW21BQphgiOswz6s5a4x1HnWKHTtGfyS8I0/1SeFE.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
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
-- Structure de la table `commentaire`
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
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `id_article` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posseder`
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
(39, 12),
(40, 12),
(41, 12);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_auteur` (`id_auteur`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD PRIMARY KEY (`id_article`,`id_categorie`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posseder`
--
ALTER TABLE `posseder`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`),
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
