<?php
//charge le fichier pour démarrer la session
include_once './include/session.php';

//attribue une valeur à $page
$page = 'auteur';

// appel du fichier contenant la méthode de débug
require_once './lib/debug.php';
// appel du fichier conntenant la classe Article
require_once './model/auteur.php';

// instanciation du modèle
$auteur = new Auteur();

//récupère tous les auteurs
$auteurs = $auteur->getAllAuthor();
   
//charge la vue
include './template_view/auteur.phtml';