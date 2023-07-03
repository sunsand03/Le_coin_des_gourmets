<?php

// appel du fichier contenant les informations de connexion
require_once './bdd/connexion.php';

/**
 * crée le repo des auteurs
 */
class Auteur
{
    /**
     * renvoit l'intégralité des auteurs
     *
     * @return array
     */
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

        /**
         * recherche l'auteur dans la bdd à partir de l'adresse email
         *
         * @param [type] $email
         * @return object
         */
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
    
    /**
     * vérifie si une adresse email existe déjà dans la bdd
     *
     * @param [type] $email
     * @return boolean
     */
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


    /**
     * insert un nouvel auteur(utilisateur dans la bdd)
     *
     * @param [type] $nom
     * @param [type] $prenom
     * @param [type] $email
     * @param [type] $password
     * @return void
     */
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
