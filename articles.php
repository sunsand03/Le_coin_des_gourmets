<?php

// charge le fichier de démarrage de la session
include_once './include/session.php';

// attribue une valeur à $page
$page = 'article';

// appel du fichier contenant la méthode de débug
require_once './lib/debug.php';

// appel du fichier conntenant la classe Article
require_once './model/article.php';

// instanciation du modèle
$articleModel = new Article();

//récupère tous les articles   
$articles = $articleModel->getAllArticle();
  
// charge la vue 
include './template_view/article.phtml';