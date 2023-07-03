<?php

// charge le fichier pour démarrer la session
include_once './include/session.php';

// attribue une valeur à $page
$page = 'register';

// charge le modèle
require_once './model/auteur.php';

// teste l'existence du champ 'email' dans la requête POST
if (isset($_POST['email'])) {

    // vérifie la valeur du mot de passe pour la confirmation
    if ($_POST['password'] == $_POST['password2']) {

        // vérifie si la valeur de 'email' est un format d'email valide.
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            // affiche un message d'erreur dans le cas contraire
            echo 'format de mail invalide';
        } else {

            // création d'une nouvelle instance de la classe 'Auteur'.
            $authorModel = new Auteur();

            // vérifie si l'email existe déja dans la bdd et si oui, affiche un message d'erreur
            if ($authorModel->emailExist($_POST['email'])) {
                echo 'erreur ce compte existe déjà';
            } else {
                // si l'email n'existe pas dans la bdd, hachage du mot de passe
                $passwordHash = password_hash($_POST['password'], PASSWORD_BCRYPT);

                // insert les informations de l'auteur dans la bdd
                $authorModel->insertAuthor($_POST['nom'], $_POST['prenom'], $_POST['email'], $passwordHash);

                // redirection du user vers la page de connexion avec un message pour lui dire que l'inscription s'est bien passée
                header('Location:login.php?inscription=ok');
            }
        }
    // message d'erreur si les deux mots de passe ne correspondent pas lors de la confirmation
    } else {
        echo 'vos deux mots de passe ne correspondent pas';
    }
}

// charge la vue
include_once './template_view/register.phtml';
