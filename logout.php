<?php

// charge le fichier de démarrage de la session
include_once './include/session.php';

// attribue une valeur à $page
$page = 'logout';

// détruit la session en cours
session_destroy();

// redirige vers la page d'accueil
header('Location:index.php');