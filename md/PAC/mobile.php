
<?php
     require_once('./assets/js/switch_to_desktop.js');
    $title = 'Accueil';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap-5.2.0/bootstrap.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/media_query.css">
    <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>


    <title><?=$title?></title>
</head>
    <img src="assets/img/background.webp" class="img-fluid position-absolute w-100  h-100 " style="opacity:0.6" alt="...">
    <?php
 
if(isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])){
   
   echo '<div style="position:absolute; color:white; right:1rem"><a class="btn btn-sm btn-light" href="index.php?logout=true">hello '.$_SESSION['user_nom'].' '.$_SESSION['user_prenom'].'</a></div>';
  }
            require_once('./_nav-mobil.php');
            require_once('./_entite.php');
        ?>
