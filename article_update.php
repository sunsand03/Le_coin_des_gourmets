<?php
include_once './include/session.php';

require_once './model/article.php';
require_once './model/auteur.php';
require_once './model/categorie.php';

// récupération de l'id dans l'url si existant et redirection dans le cas contraire
if(isset($_GET['id'])){
    $id = htmlspecialchars($_GET['id']);
}else{
    header('Location:index.php');
    exit();
}

$articleModel = new Article();
// récupération des informations de l'article en fonction de l'ID
$article =  $articleModel->getArticle($id);

// récupération de tous les auteurs
$authorModel = new Auteur();
$authorList = $authorModel->getAllAuthor();

// récupération de toutes les catégories
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


// charge la vue
include_once './template_view/article_update.phtml';