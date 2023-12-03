<?php   require_once('get_societe.php');?>

<nav class=" navbar navbar-expand-lg d-flex flex-column position-absolute start-auto mt-3" style="z-index:5;right:0rem" id="nav-menu">
 
  
 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
 </button>
 <div class="collapse navbar-collapse w-100" id="navbarSupportedContent">

         <a href="index.php"class="mb-1 btn btn-light border border-white <?php if($title === 'Accueil'){?>nav_active<?php }?> " ><h6>Accueil</h6></a>
         <a href="emplois.php"class="mb-1 btn btn-light border border-white <?php if($title === 'Emplois'){?>nav_active<?php }?>" ><h6>Emplois</h6></a>
         <a href="vehicules.php"class="mb-1 btn btn-light border border-white <?php if($title === 'Vehicules'){?>nav_active<?php }?> " ><h6>Véhicules</h6></a>
         <a href="rdv.php"class="mb-1 btn btn-light border border-white <?php if($title === 'R.D.V'){?>nav_active<?php }?>" ><h6>R.D.V</h6></a>
         <a href="connexion.php"class="mb-1 btn btn-light border border-white <?php if($title === 'Connexion'){?>nav_active<?php }?> " ><h6>Connexion</h6></a>
    
    </div>
     </nav>
   <nav class="d-flex flex-column position-absolute start-auto end-0" id="nav-contact">
         <button href=""class="btn btn-light border border-primary" ><h5 class="fw-bolder  text-primary "><?=$societe_telephone?></h5></button>
         <button href=""  class="btn btn-light border border-primary" ><h5 class="fw-bolder  text-primary ">GPS</h5></button>
     </nav>