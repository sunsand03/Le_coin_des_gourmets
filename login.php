<?php
include_once './include/session.php';
$page = 'login';

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

            header('Location:index.php');
            
        } else {
            echo '<p class= alert-danger> Mauvais couple identifiant/mot de passe</p>';
        }
    } else {
        echo '<p class= alert-danger> Mauvais couple identifiant/mot de passe</p>';
    }
}



include_once './template_view/login.phtml';
