<?php
require_once('./assets/js/switch_to_desktop.js');
    $title = 'Emplois';
    require_once('./controller/getEmplois.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$title?></title>
    <link rel="stylesheet" href="assets/css/bootstrap-5.2.0/bootstrap.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/media_query.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
    <img src="assets/img/emploi.webp" class="img-fluid position-absolute w-100  h-100 " style="opacity:0.6" alt="...">
    
   <?php
        require_once('_nav-mobil.php');
   
    ?>
        <?php
            require_once('./_entite.php');
        ?>



<div class="row row-cols-1 row-cols-md-2 g-4" style="position:absolute;top:5rem;right:19%; width:50%; max-height:50%;top:30%">

<?php 
    foreach ($emplois as $emploi) {
   ?>
  <div class="col">
    <div class="card">
        
      
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <h6 class="card-title"><?=$emploi['nom_emploi']?></h6><button class="btn btn-sm btn-light" data-emploi="offre_<?=$emploi['emploi_id']?>">... more</button></div>
        
        
        <div style="display:none">
          <p class="card-text">Description: <?=$emploi['description_emploi']?></p>
          <p class="card-text">Obligation: <?=$emploi['obligation_emploi']?></p>
          <p class="card-text"><?=$emploi['contrat']?></p>
          <p class="card-text"><?=$emploi['temps']?></p>
          <p class="card-text"><?=$emploi['salaire_heure']?></p>
          <p class="card-text"><?=$emploi['statut']?></p>
          <p class="card-text"><?=$emploi['date']?></p>
          <p class="card-text"><?=$emploi['mail_alerte']?></p>
 <div class="card-footer">
        <small class="text-muted">Last updated 3 mins ago</small>
        <a h="" class="btn btn-sm btn-primary">Détail</a>
      </div>
        </div>
        
      </div>
     
    </div>
  </div>
   <?php
}?>





</div>
    
    <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
    <script>
      console.log(window.userAgent);
      window.addEventListener('load',function(){
        if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) )
{

 $('body').load('mobil.php');
}


      })

        
    
    </script>
</body>
</html>