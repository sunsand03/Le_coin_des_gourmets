<?php
include_once './include/session.php';

$page = 'auteur';

// appel du fichier contenant la méthode de débug
    require_once './bdd/debug.php';
// appel du fichier conntenant la classe Article
    require_once './model/auteur.php';

// instanciation du modèle
    $auteur = new Auteur();
    $auteurs = $auteur->getAllAuthor();
    // d($auteurs);

include './template_view/auteur.phtml';