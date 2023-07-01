<?php

include_once './include/session.php';
require_once './bdd/debug.php';
require_once './model/article.php';

$id = htmlspecialchars($_GET['id']);

$articleModel = new Article();
// on donne l'id à la méthode
$article =  $articleModel->getArticle($id);

$category = $articleModel->getCategoryByArticleId($id);


include_once './template_view/article_detail.phtml';