<?php

//charge le fichier pour démarrer la session
include_once './include/session.php';

//charge la méthode de débug
require_once './bdd/debug.php';

//charge le modèle
require_once './model/article.php';

// récupération de l'id dans l'url
$id = htmlspecialchars($_GET['id']);

// création d'une nouvelle instance de la classe Article
$articleModel = new Article();

// récupération de l'article
$article =  $articleModel->getArticle($id);

//récupération de la ou des catégorie(s)
$category = $articleModel->getCategoryByArticleId($id);

//charge la vue
include_once './template_view/article_detail.phtml';