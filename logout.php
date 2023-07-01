<?php

include_once './include/session.php';
$page = 'logout';

session_destroy();

header('Location:index.php');