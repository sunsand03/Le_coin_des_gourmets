<?php



    // initialise la variable $emailSession
  $emailSession= '';
    // vérifie si la variable $_SESSION['email'] est définie et si elle n'est pas vide; attribue alors cette valeur à $emailSession
  if(isset($_SESSION['email']) && ($_SESSION['email']) != ''){
    $emailSession= $_SESSION['email'];
  }

?>

<!-- rend la barre de navigation responsive, fixe et la colore en rouge -->
<nav class="navbar navbar-expand-lg bg-danger text-white fixed-top">
   <div class="container">
        <div class="logo">

            <a href="index.php" class="navbar-brand small">
                <!-- <img src="./assets/pictures/icones-et-logo/logo.png" alt="logo" id="logo"> -->
            </a>
        </div>

        <!-- div pour le menu burger au niveau du responsive  -->
        <div class="d-flex d-lg-none">
                <div>
                    <img src="../assets/pictures/icones-et-logo/share.svg" alt="" class="mx-2">
                    <img src="../assets/pictures/icones-et-logo/facebook.svg" alt="" class="ms-2 me-4">
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>  
            </div>

            <!-- barre de navigation -->
            <div class="collapse navbar-collapse text-end">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link <?php if($page == 'index'){echo 'active-page'; }?> mx-lg-5" href="index.php">Accueil</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link <?php if($page == 'article'){echo 'active-page'; }?> mx-lg-5" href="articles.php">Articles</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link <?php if($page == 'auteur'){echo 'active-page'; }?> mx-lg-5" href="auteurs.php">Auteurs</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link <?php if($page == 'nouvel article'){echo 'active-page'; }?> mx-lg-5" href="article_new.php">Nouvel article</a>
                    </li>

                    <!-- liens qui apparait lorsqu'on est pas connecté -->
                    <?php if ($emailSession == ''){ ?>
                    <li class="nav-item"><a href="login.php" class="nav-link <?php if($page == 'login'){echo 'active-page'; }?>">Connexion</a></li>
                    <li class="nav-item"><a href="register.php" class="nav-link <?php if($page == 'register'){echo 'active-page'; }?>">Inscription</a></li>
                    <?php }else{ ?>
                    <li class="nav-item nav-link">Bonjour<?php echo $emailSession; ?></li>          
                    <li class="nav-item"> <a class="nav-link <?php if($page == 'logout'){echo 'active-page'; }?>" href="logout.php">Me déconnecter</a></li>
                    <?php }?>

                </ul>
            </div>

            <!-- icones visibles sur les écrans de taille large -->
            <div class="d-none d-lg-block">
                <img src="./assets/pictures/icones-et-logo/share.svg" alt="" class="mx-2">
                <img src="./assets/pictures/icones-et-logo/facebook.svg" alt="" class="mx-2">
            </div>

    </div>


      
</nav>
