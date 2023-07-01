<?php
    
    //chargement du modèle
    require_once './model/article.php';

    //création d'une nouvelle instance de la classe Article
    $articleModel = new Article();

    //récupération aléatoire d'un article
    $article = $articleModel->getRandomArticle();    
?>
    

    <header class="py-5 cream">
        <div class="container py-4">
            <div class="card card-xl">
                <div class="row g-0">
                    <!-- charge l'image de l'article -->
                    <div class="col-6 overflow-hidden">
                        <img src="<?php echo $article->image; ?>" class="h-100 w-70 object-fit-cover img-fluid" alt="...">
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
    