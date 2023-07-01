<?php
include_once './include/session.php';

require_once './model/article.php';
require_once './model/auteur.php';
require_once './model/categorie.php';

// récupération de l'id qui se trouve dans l'url
$id = htmlspecialchars($_GET['id']);

$articleModel = new Article();
// récupération des informations de l'article en fonction de l'ID
$article =  $articleModel->getArticle($id);

// récupération des auteurs en BDD
$authorModel = new Auteur();
$authorList = $authorModel->getAllAuthor();

$categoryModel = new Category();
$categoryList = $categoryModel->getAllCategory();

$tabIdCategoryArticle = [];
$categoryListArticle = $articleModel->getCategoryByArticleId($id);
foreach($categoryListArticle as $row){
    $tabIdCategoryArticle[] = $row->id_categorie;
}


if (isset($_POST['titre'])) {
    $data = $_POST;


    $articleModel->updateArticle($data);

    // redirection si l'insertion s'est bien passé
    header("Location:articles.php");
}


// appel de la vue
include_once './template_view/article_update.phtml';