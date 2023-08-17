<?php

/**
 * Connexion à la base de données
 *
 * @return $conn
 */
function connect(){

    // $conn = new PDO("mysql:host=localhost;port=3306;dbname=blog","root","root");
    $conn = new PDO("mysql:host=mysql-snombo.alwaysdata.net;port=3306;dbname=snombo_blog","snombo","cactus0706!");
    return $conn;
}



?>

<!-- port 3336 à l'école -->