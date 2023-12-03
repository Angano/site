
<?php
    $title = 'Accueil';
?>
<head>
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
