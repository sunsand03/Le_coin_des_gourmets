# Blog de partage de recettes "Le coin des gourmets"

Ce document explique le fonctionnement prévu du site.

Pour le moment, ce site permet de consulter des recettes de cuisine et d'en partager. Il contient 8 url:

1.  *__"index.php"__* : présente un article extrait de la base de données de manière aléatoire à l'utilisateur ainsi que l'ensemble des recettes regroupées par catégorie. Une recette pouvant appartenir à plusieurs catégories, elle apparait autant de fois que nécessaire.
2.  *__"articles.php"__* : liste l'intégralité des recettes disponibles sur le site.
3.  *__"auteurs.php"__* : liste tous les auteurs des recettes (contributeurs).
4.  *__"article\_detail.php"__* : présente le contenu de la recette.
5.  *__"article\_new.php"__* : présente le formulaire pour ajouter une nouvelle recette.
6.  *__"article\_update.php"__* : présente le formulaire pour modifier une recette.
7.  *__"login.php"__* : permet de se connecter.
8.  *__"register.php"__* : permet de s'inscrire et donc de créer un nouvel utilisateur.

Aujourd'hui, quelqu'un qui n'est pas connecté ou pas inscrit peut voir l'ensemble des recettes dans `index.php`, et accéder aux pages détaillées des recettes.

## Identifiant de connexion pour tester le site
- Email: test3@gmail.com
- Mot de passe : 123


## Fonctionnalités à développer :

- Gérer tous les caractères spéciaux contenus dans l'extrait des recettes affichées, dans `index.php`.

- Ne permettre qu'à l'utilisateur ayant rédigé une recette de la modifier. Aujourd'hui tous les utilisateurs peuvent modifier toutes les recettes.

- Ajouter un champ 'pseudo' aux auteurs qui sera affichée dans `auteurs.php` pour que les utilisateurs du site ne voient que les pseudos.

- Améliorer la responsivité du site.

- Permettre aux utilisateurs de liker, noter et commenter les recettes.

- Créer différents rôles pour les utilisateurs : administrateur, modérateur et simple utilisateur.

- Ajouter une barre de recherche. 

- avoir une page qui affiche les recettes que l'utilisateur a liké, pour qu'il puisse les retrouver facilement.