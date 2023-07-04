<?php



// initialise la variable $emailSession
$emailSession = '';
// vérifie si la variable $_SESSION['email'] est définie et si elle n'est pas vide; attribue alors cette valeur à $emailSession
if (isset($_SESSION['email']) && ($_SESSION['email']) != '') {
    $emailSession = $_SESSION['email'];
}

?>

<!-- rend la barre de navigation responsive, fixe et la colore en rouge -->
<nav class="navbar navbar-expand-lg bg-danger text-white fixed-top">
    <div class="container-fluid">
        <div class="row w-100 align-items-center">
            <!-- logo -->
            <div class="col">
                <a href="index.php" class="navbar-brand small">
                    Le coin des gourmets
                </a>
            </div>

            <!-- barre de navigation -->
            <div class="col">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">

                        <!-- liens qui apparait lorsqu'on est pas connecté -->
                        <?php if ($emailSession == '') { ?>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($page == 'index') {
                                                        echo 'active-page';
                                                    } ?> mx-lg-5" href="index.php">Accueil</a>
                            </li>
                            <li class="nav-item"><a href="login.php" class="nav-link <?php if ($page == 'login') {
                                                                                            echo 'active-page';
                                                                                        } ?>">Connexion</a></li>
                            <li class="nav-item"><a href="register.php" class="nav-link <?php if ($page == 'register') {
                                                                                            echo 'active-page';
                                                                                        } ?>">Inscription</a></li>
                        <?php } else { ?>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($page == 'index') {
                                                        echo 'active-page';
                                                    } ?> mx-lg-5" href="index.php">Accueil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($page == 'article') {
                                                        echo 'active-page';
                                                    } ?> mx-lg-5" href="articles.php">Articles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($page == 'auteur') {
                                                        echo 'active-page';
                                                    } ?> mx-lg-5" href="auteurs.php">Auteurs</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($page == 'nouvel article') {
                                                        echo 'active-page';
                                                    } ?> mx-lg-5" href="article_new.php">Nouvel article</a>
                            </li>
                            <li class="nav-item nav-link text-center">Bonjour<br><?php echo $emailSession; ?></li>
                            <li class="nav-item"> <a class="nav-link <?php if ($page == 'logout') {
                                                                            echo 'active-page';
                                                                        } ?>" href="logout.php">Déconnexion</a></li>
                        <?php } ?>

                    </ul>

                    <!-- burger button à développer-->
                    <!-- <div class="col text-end">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div> -->

                </div>

            </div>


        </div>

    </div>


    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.1/js/bootstrap.bundle.min.js"></script>
</nav>