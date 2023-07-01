<?php

require_once './bdd/connexion.php';

Class Category
{
      // définition d'une méthode
  public function getAllCategory()
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("SELECT * FROM categorie");
    // execution
    $query->execute();
    // récupère tous les résulatats sous forme de tableau
    $result = $query->fetchAll(PDO::FETCH_OBJ);
    // retourne les résultats
    return ($result);
  }

}