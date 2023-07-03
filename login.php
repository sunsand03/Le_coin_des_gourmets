<?php

// charge le fichier pour démarrer la session
include_once './include/session.php';

// attribue une valeur à $page
$page = 'login';

// charge le modèle
require_once './model/auteur.php';

// test si des données sont envoyées depuis le formualaire
if (isset($_POST['email']) && isset($_POST['password'])) {

    // on va voir si un compte utilisateur existe par l'email qu'envoie l'utilisateur

    $authorModel = new Auteur();
    $auteur = $authorModel->getAuthorByEmail($_POST['email']);

    if (isset($auteur->email)) {

        // on teste le mot de passe
        if (password_verify($_POST['password'], $auteur->mot_de_passe)) {
            session_start();
            $_SESSION['email'] = $_POST['email'];

            // redirection vers la page d'accueil
            header('Location:index.php');

        //   message d'alerte si la connexion n'a pas pu se faire  
        } else {
            echo '<p class= alert-danger> Mauvais couple identifiant/mot de passe</p>';
        }

    // message d'alerte si la connexion n'a pas pu se faire 
    } else {
        echo '<p class= alert-danger> Mauvais couple identifiant/mot de passe</p>';
    }
}

// charge la vue
include_once './template_view/login.phtml';
