<?php

// require_once './bdd/debug.php';
require_once './model/article.php';
require_once 'article_new.php';

// récupération de l'id dans l'url
$id = htmlspecialchars($_GET['id']);

// instanciation du model Article
$articleModel = new Article();

// supprimer la photo associée à l'article
$article = $articleModel->getArticle($id);
// je teste si la valeur n'est pas vide et si le fichier existe
if(!empty($article->image) && is_file($article->image)){
    unlink($article->image);
}

// appel de la méthode suppresion dans la classe article par rapport à l'id
$article =  $articleModel->deleteArticle($id);

// redirection de l'utilisateur vers la page articles.php
header('Location:articles.php');
