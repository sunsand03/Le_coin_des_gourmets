<?php

// charge la page session.php
include_once './include/session.php';

// donne la valeur 'nouvel article' à $page
$page = 'nouvel article';


// si l'utilisateur n'est pas connecté alors on le redirige vers l'accueil
if(!isset($_SESSION['email'])){
    header('Location:index.php');
}

// chargement des différents modèles
require_once './model/article.php';
require_once './model/auteur.php';
require_once './model/categorie.php';

// vérifie avant l'envoi si l'article contient un titre. Si oui, assigne les données de la requête POST à $data.
if (isset($_POST['titre'])) {
    $data = $_POST;

    // vérifie si l'article contient une photo
    if (isset($_FILES['photo'])) {
        
        // liste le type de photos autorisées
        $typeAuthoryse = [
            'image/jpeg',
            'image/jpg',
            'image/png',
            'image/gif'
        ];

        // vérifie si la photo est dans un des formats autorisés
        if (in_array($_FILES['photo']['type'], $typeAuthoryse)) {

            // vérifie la taille de la photo
            if ($_FILES['photo']['size'] <= (1048576  * 2)) {
                // extrait l'extension du fichier
                $extension = explode(".", $_FILES['photo']['name']);
                // copie le fichier temporaire dans le dossier souhaité
                $newDestination = './photo/' . uniqid() . '.' . $extension[count($extension)-1];
                move_uploaded_file($_FILES['photo']['tmp_name'], $newDestination);

                // Ajoute le chemin du fichier de la photo à la clé 'image' des données de l'article ($data).
                $data['image'] = $newDestination;

                // instanciation de la classe Article
                $articleModel = new article();

                // insert l'article dans la bdd
                $idArticle = $articleModel->insertArticle($data);

                // insert les différentes catégories cochées dans la bdd
                $articleModel ->insertCategoryArticle($idArticle, $_POST['category']);

                // redirection vers la liste des articles si l'insertion s'est bien passé
                header("Location:articles.php");

            // si l'insertion ne s'est pas bien passée  à cause de la taille de la photo  
            } else {
                // affiche le message d'erreur
                echo '<span style= "color:red;"> photo trop volumineuse </span> ';
            }
        
        // si l'insertion ne s'est pas bien passée à cause du format de la photo
        } else {
            // affiche le message d'erreur
            echo '<span style= "color:red;"> le type de fichier n\'est pas pris en charge </span> ';
        }
    }
}

// récupère la liste des auteurs
$authorModel = new Auteur();
$authorList = $authorModel->getAllAuthor();

// récupère toutes les catégories
$categoryModel = new Category();
$categoryList= $categoryModel->getAllCategory();

// charge la vue
include './template_view/article_new.phtml';
