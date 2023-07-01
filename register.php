<?php
include_once './include/session.php';
$page = 'register';

require_once './model/auteur.php';

// isset teste l'existence de la variable dans le post
if (isset($_POST['email'])) {

    if ($_POST['password'] == $_POST['password2']) {
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            echo 'format de mail invalide';
        } else {


            $authorModel = new Auteur();

            if ($authorModel->emailExist($_POST['email'])) {
                echo 'erreur ce compte existe déjà';
            } else {
                // insertion de l'auteur
                $passwordHash = password_hash($_POST['password'], PASSWORD_BCRYPT);

                $authorModel->insertAuthor($_POST['nom'], $_POST['prenom'], $_POST['email'], $passwordHash);

                // redirection du user
                header('Location:login.php?inscription=ok');
            }
        }
    } else {
        echo 'vos deux mots de passe ne correspondent pas';
    }
}

include_once './template_view/register.phtml';
