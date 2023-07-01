<?php
//intégre le fichier session.php
include_once './templates/include/session.php';


//donne la valeur 'index' à $page
$page = 'index';

// appel du fichier contenant la méthode de débug
require_once './lib/debug.php';

// appel des fichiers conntenant la classe utilisée    
require_once './model/category.php';

$CategoryModel = new Category();
$categories = $CategoryModel->getAllCategory();

//appel de la vue
include './templates/index.phtml';
