<?php

include_once './include/session.php';

$page = 'nouvel article';


// si l'utilisateur n'est pas connecté alors on le redirige vers l'accueil
if(!isset($_SESSION['email'])){
    header('Location:index.php');
}

require_once './model/article.php';
require_once './model/auteur.php';
require_once './model/categorie.php';


if (isset($_POST['titre'])) {
    $data = $_POST;

    if (isset($_FILES['photo'])) {
        
        $typeAuthoryse = [
            'image/jpeg',
            'image/jpg',
            'image/png',
            'image/gif'
        ];


        if (in_array($_FILES['photo']['type'], $typeAuthoryse)) {

            if ($_FILES['photo']['size'] <= (1048576  * 2)) {
                // on extrait l'extension du fichier
                $extension = explode(".", $_FILES['photo']['name']);
                // on copie le fichier temporaire dans le dossier souhaité
                $newDestination = './photo/' . uniqid() . '.' . $extension[count($extension)-1];
                move_uploaded_file($_FILES['photo']['tmp_name'], $newDestination);

                $data['image'] = $newDestination;

                $articleModel = new article();
                $idArticle = $articleModel->insertArticle($data);

                
                $articleModel ->insertCategoryArticle($idArticle, $_POST['category']);

                // redirection si l'insertion s'est bien passé
                header("Location:articles.php");
            } else {
                echo '<span style= "color:red;"> photo trop volumineuse </span> ';
            }
        } else {
            echo '<span style= "color:red;"> le type de fichier n\'est pas pris en charge </span> ';
        }
    }
}


$authorModel = new Auteur();
$authorList = $authorModel->getAllAuthor();

$categoryModel = new Category();
$categoryList= $categoryModel->getAllCategory();

include './template_view/article_new.phtml';
