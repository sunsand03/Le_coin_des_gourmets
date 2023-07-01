<?php

// appel du fichier contenant les informations de connection
require_once './bdd/connexion.php';

// définition de la classe
class Auteur
{
    // définition d'une méthode
    public function getAllAuthor(): array
    {
        // appel de la fonction de connexion
        $conn = connect();
        // préparation de la requête
        $query = $conn->prepare("SELECT * FROM auteur");
        // execution
        $query->execute();
        // récupère tous les résulatats sous forme de tableau
        $result = $query->fetchAll(PDO::FETCH_OBJ);
        // retourne les résultats
        return ($result);
    }

        // définition d'une méthode
        public function getAuthorByEmail($email): object
        {
            // appel de la fonction de connexion
            $conn = connect();
            // préparation de la requête
            $query = $conn->prepare("SELECT * FROM auteur WHERE email = :email");
            $query->bindValue('email', htmlspecialchars($email));
            
            // execution
            $query->execute();

            $result = $query->fetch(PDO::FETCH_OBJ);
            if(empty($result)){
                return new stdClass;
            }
            return $result;

        }    
    
    // définition d'une méthode
    public function emailExist($email): bool
    {  //void car la fonction ne retourne rien
        // appel de la fonction de connexion
        $conn = connect();
        // préparation de la requête
        $query = $conn->prepare("SELECT * FROM auteur WHERE email = :email");
        $query->bindValue('email', htmlspecialchars($email));
        
        // execution
        $query->execute();

        $result = $query->fetch(PDO::FETCH_OBJ);

        if(empty($result)){
            return false;
        }else {
            return true;
        }
    
    }


    // définition d'une méthode
    public function insertAuthor($nom, $prenom,$email, $password): void
    {  //void car la fonction ne retourne rien
        // appel de la fonction de connexion
        $conn = connect();
        // préparation de la requête
        $query = $conn->prepare("
                                INSERT INTO auteur (`nom`,`prenom`,`email`, `mot_de_passe`)
                                VALUES (:nom, :prenom, :email, :mot_de_passe)
                                ");
        $query->bindValue('nom', htmlspecialchars($nom));
        $query->bindValue('prenom', htmlspecialchars($prenom));
        $query->bindValue('email', htmlspecialchars($email));
        $query->bindValue('mot_de_passe', htmlspecialchars($password));
        // execution
        $query->execute();
    }
}
