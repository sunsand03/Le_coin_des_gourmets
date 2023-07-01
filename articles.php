<?php
include_once './include/session.php';

$page = 'article';

// appel du fichier contenant la méthode de débug
    require_once './bdd/debug.php';
// appel du fichier conntenant la classe Article
    require_once './model/article.php';

// instanciation du modèle
    $articleModel = new Article();
    $articles = $articleModel->getAllArticle();
    // d($articles);

include './template_view/article.phtml';