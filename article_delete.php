<?php

//charge la méthode de débug
require_once './lib/debug.php';

//charge les modèles
require_once './model/article.php';
require_once 'article_new.php';

// récupération de l'id dans l'url si existant et redirection dans le cas contraire
if(isset($_GET['id'])){
    $id = htmlspecialchars($_GET['id']);
}else{
    header('Location:index.php');
}


// création d'une nouvelle instance de la classe Article
$articleModel = new Article();

// supprime la photo associée à l'article
$article = $articleModel->getArticle($id);
// teste si la valeur n'est pas vide et si le fichier existe
if(!empty($article->image) && is_file($article->image)){
    unlink($article->image);
}

// appel de la méthode de suppresion dans la classe article par rapport à l'id
$article =  $articleModel->deleteArticle($id);

// redirection de l'utilisateur vers la page articles.php
header('Location:articles.php');
