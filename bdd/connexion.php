<?php

/**
 * Connexion à la base de données
 *
 * @return $conn
 */
function connect(){

    $conn = new PDO("mysql:host=localhost;port=3306;dbname=blog","root","root");
    return $conn;
}



?>

<!-- port 3336 à l'école -->