<?php
    
    //chargement du modèle
    require_once './model/article.php';

    //création d'une nouvelle instance de la classe Article
    $articleModel = new Article();

    //récupération aléatoire d'un article
    $article = $articleModel->getRandomArticle();    
?> 
  
    <!-- crée le header avec un padding de 5 en haut et en bas -->
    <header class="py-5 mt-3">
        <div class="container pt-2 pb-5 overflow-hidden">
            <div class="card card-xl">
                <!-- crée une ligne dont les colonnes ont une marge nulle -->
                <div class="row g-0">
                    <!-- charge l'image de l'article. Si le contenu de la div dépasse la taille définie pour la div, il sera caché et aucun défilement ne sera affiché. Cela crée un effet de débordement contrôlé.-->
                    <div class="col-6 overflow-hidden d-flex align-items-center justify-content-center">
                        <img src="<?php echo $article->image; ?>" class="img-fluid" alt="image de la recette" style="height: 400px;">
                    </div>

                    <div class="col-6">
                        <div class="card-body">

                            <!-- affiche le nom de la catégorie -->
                            <h4><?php echo $article->nom; ?></h4>

                            <!-- affiche le titre de l'article -->
                            <h3 class="card-title"><?php echo $article->titre; ?></h3>

                            <!-- affiche le contenu de l'article -->
                            <p class="card-text"><?php echo $article->contenu; ?></p>
                        </div>

                        <div class="card-footer">
                            <ul class="list-unstyled d-flex">

                                <!-- affiche la date de publication de l'article -->
                                <li class="me-2"><small class="text-primary"><?php echo date_format(date_create($article->date_publication), 'd/m/Y H:i:s'); ?></small></li>
                                
                            </ul>

                            <!-- affiche l'encart vidéo si l'article en possède -->
                            <p>
                                <iframe width="360" height="315" src="<?php echo $article->video; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    