<?php

//inclut le fichier session.php
include_once './include/session.php';


//donne la valeur 'index' à $page
$page = 'index';

// appel du fichier contenant la méthode de débug
require_once './lib/debug.php';

// appel des fichiers conntenant les classe utilisées   
require_once './model/categorie.php';
require_once './model/article.php';

//création d'une nouvelle instance de la classe Category
$CategoryModel = new Category();

//récupère toutes les catégories d'article
$categories = $CategoryModel->getAllCategory();


//charge la vue
include './template_view/index.phtml';
