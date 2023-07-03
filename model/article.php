<?php

// appel du fichier contenant les informations de connexion
require_once './bdd/connexion.php';


/**
 * crée le repo des articles
 */
class Article
{
  /**
   * renvoit l'intégralité des articles contenus dans la bdd
   *
   * @return void
   */
  public function getAllArticle()
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("SELECT * FROM article");
    // execution
    $query->execute();
    // récupère tous les résulatats sous forme de tableau
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    // retourne les résultats
    return ($result);
  }  

    /**
     * renvoit de manière alétoire un article contenu dans la bdd
     *
     * @return object
     */
    public function getRandomArticle()
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("SELECT * FROM Article 
                            JOIN posseder ON posseder.id_article = Article.id_article 
                            JOIN Categorie ON Categorie.id_categorie = posseder.id_categorie                            
                            ORDER BY RAND() LIMIT 1; ");  

    // execution
    $query->execute();
    // récupère tous les résultats sous forme de tableau
    $result = $query->fetch(PDO::FETCH_OBJ);
    // retourne les résultats
    return ($result);
  }

  /**
   * Renvoit un article selon l'id renseigné
   *
   * @param [type] $id
   * @return object
   */
  public function getArticle($id)
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("
                                SELECT * 
                                FROM Article 
                                JOIN auteur ON auteur.id_auteur = article.id_auteur
                                WHERE id_article = :id
        ");
    $query->bindValue('id', $id);
    // execution
    $query->execute();
    // récupère tous les résultats sous forme de tableau
    $result = $query->fetch(PDO::FETCH_OBJ);
    // retourne les résultats
    return ($result);
  }

  /**
   * insert un article dans la bdd
   *
   * @param [type] $data
   * @return integer
   */
  public function insertArticle($data): int
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare(
      "INSERT INTO article 
        (titre, 
        contenu, 
        image, video, 
        id_auteur, 
        date_publication)
        VALUES (:titre, 
        :contenu,
        :image,
        :video,
        :id_auteur,
        :date_publication)
     "
    );
    // rajoute htmlspecialchars pour éviter l'attaque XXS
    $query->bindValue('titre', htmlspecialchars($data['titre']));
    $query->bindValue('contenu', htmlspecialchars($data['contenu']));
    $query->bindValue('image', htmlspecialchars($data['image']));
    $query->bindValue('video', htmlspecialchars($data['video']));
    $query->bindValue('id_auteur', htmlspecialchars($data['id_auteur']));
    $query->bindValue('date_publication', date('Y-m-d H:i:s'));

    $query->execute();

    // récupération du dernier id généré en bdd
    return $conn->lastInsertId();
  }


  /**
   * insert les catégories renseignées pour l'article
   *
   * @param [type] $idArticle
   * @param [type] $categories
   * @return void
   */
  public function insertCategoryArticle($idArticle, $categories)
  {
    // appel de la fonction de connexion
    $conn = connect();

    foreach ($categories as $key => $value) {
      $query = $conn->prepare(
        "INSERT INTO posseder (`id_article`,`id_categorie`)        
            VALUES (:idArticle, :idCategory)
        "
      );

      // on rajoute htmlspecialchars pour éviter l'attaque XXS
      $query->bindValue('idArticle', $idArticle);
      $query->bindValue('idCategory', $value);

      $query->execute();
    }
  }

  /**
   * modifie l'article dans la bdd
   *
   * @param [type] $data
   * @return void
   */
  public function updateArticle($data)
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare(
      "UPDATE article
       SET titre = :titre, contenu =:contenu, video=:video, id_auteur=:idAuteur, date_publication= :datePublication
       WHERE id_article = :id
      "
    );
    //   on rajoute htmlspecialchars pour éviter l'attaque XXS
    $query->bindValue('id', htmlspecialchars($data['id']));
    $query->bindValue('titre', htmlspecialchars($data['titre']));
    $query->bindValue('contenu', htmlspecialchars($data['contenu']));
    $query->bindValue('video', htmlspecialchars($data['video']));
    $query->bindValue('idAuteur', htmlspecialchars($data['id_auteur']));
    $query->bindValue('datePublication', date('Y-m-d H:i:s'));

    $query->execute();

    // supprimer les categories liées à l'article
    $query = $conn->prepare("DELETE FROM posseder WHERE id_article = :id");
    $query->bindValue('id', htmlspecialchars($data['id']));
    $query->execute();

    // réinsertion des nouvelles données
    $this->insertCategoryArticle($data['id'], $data['category']);
  }

  // définition d'une méthode
  public function deleteArticle($id)
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("DELETE FROM posseder WHERE id_article = :id");

    $query->bindValue('id', $id);

    // execution de la première requête
    $query->execute();

    $query = $conn->prepare("DELETE  FROM article WHERE id_article = :id");

    $query->bindValue('id', $id);

    // execution de la seconde requête
    $query->execute();
  }


  /**
   * renvoit tous les articles d'une catégorie
   *
   * @param [type] $id
   * @return array
   */
  public function getCategoryByArticleId($id): array
  {
    // appel de la fonction de connexion
    $conn = connect();
    // préparation de la requête
    $query = $conn->prepare("SELECT * FROM posseder
                                JOIN categorie ON categorie.id_categorie = posseder.id_categorie
                                WHERE posseder.id_article = :id ");

    $query->bindValue('id', $id);
    // execution
    $query->execute();
    // récupère tous les résulatats sous forme de tableau
    $result = $query->fetchAll(PDO::FETCH_OBJ);
    // retourne les résultats
    return ($result);
  }

  // fonction test
  public function getArticleByCategoryId($idCategory) 
  {
       // appel de la fonction de connexion
       $conn = connect();
       // préparation de la requête
       $query = $conn->prepare("SELECT * FROM Article
       JOIN posseder ON posseder.id_article = article.id_article
       JOIN categorie ON categorie.id_categorie = posseder.id_categorie
       WHERE posseder.id_categorie = :idCategory
       ");
   
       $query->bindValue('idCategory', $idCategory);
       // execution
       $query->execute();
       // récupère tous les résulatats sous forme de tableau
       $result = $query->fetchAll(PDO::FETCH_OBJ);
       // retourne les résultats
       return ($result);
  }
}
