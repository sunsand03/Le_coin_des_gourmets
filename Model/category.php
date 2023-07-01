<?php
//connexion à la bdd
require_once './bdd/connexion.php';

Class Category
{
    /**
     * récupère tous les articles 
     *
     * @return void
     */
  public function getAllCategory()
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("SELECT * FROM categorie");
    // execution de la requête
    $query->execute();
    // récupère tous les résultats sous la forme d'un objet avec plusieurs lignes
    $result = $query->fetchAll(PDO::FETCH_OBJ);
    // retourne les résultats
    return ($result);
  }

}