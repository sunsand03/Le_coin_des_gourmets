<?php

// appel du fichier contenant les informations de connexion
require_once './bdd/connexion.php';

/**
 * crée le repo sur les catégories
 */
Class Category
{
  /**
   * récupère toutes les catégories des articles
   *
   * @return void
   */
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