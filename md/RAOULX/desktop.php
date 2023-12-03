<?php

require_once('./controller/getSiteSociete.php');

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $societe_nom?></title>
 
    <link rel="stylesheet" href="assets/css/bootstrap-5.2.0/bootstrap.css">

  
    <link rel="stylesheet" href="assets/css/style-desktop.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>


<body>
   <div class="container-fluid">
    <div class="row" style="height:100vh;">
        <!-- aside -->
        <div class="col-md-2 text-center md-aside" style="padding:0px;">

            <aside>
                <h1>Ambulance <?=$societe_nom?></h1>
                
            <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#accueil">ACCUEIL</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service">SERVICES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#agence">L'AGENCE</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#contact">CONTACT</a>
                    </li>
                </ul>
            </aside>
   
        
        </div> 
        <div class="col-md-10" style="overflow: auto;height:100%;" id="style-content">
        <!-- Accueil -->
            <div class="row md_block" id="accueil" style="background-color: #FAFAFA;">
                <div class="col-md-12 px-0" style="height: 100%;">
                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" style="height: 100%;">
                        <div class="carousel-inner" style="height: 100%;">
                            <div class="carousel-item active" style="height:100%;">
                                <img src="./assets/img/<?=$societe[0]['slider_1']?>" class="d-block mx-auto" height="100%" width="auto" alt="...">
                            </div>
                            <div class="carousel-item" style="height: 100%;">
                                <img src="./assets/img/<?=$societe[0]['slider_2']?>" class="d-block mx-auto" height="100%" width="auto" alt="...">
                            </div>
                            <div class="carousel-item" style="height: 100%;">
                                <img src="./assets/img/<?=$societe[0]['slider_3']?>" class="d-block mx-auto" height="100%" width="auto" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div> 
        <!-- Service -->
            <div class="row md_block"  id="service">
                <div class="col-md-6 px-0">
                        <img src="./assets/img/<?=$societe[0]['img_1']?>"  width="100%" alt="...">
                </div>
                <div class="col-md-6 px-0">
                <?=$societe[0]['story_1']?>
                </div>
            </div>
          
        <!-- Agence -->  
            <div class="row md_block" id="agence">
                <div class="col-md-12 px-0"><pre><?=$societe[0]['story_2']?></pre>
                </div>
            </div>

          
        <!-- Contact -->   
            <div class="row md_block" id="contact">
                <div class="col-md-12">
                    <p>Coordonnées :</p>
                    <p><?=$societe[0]['societe_nom']?></p>
                    <p><?=$societe[0]['societe_adress']?></p>
                    <p><?=$societe[0]['societe_zip']?> <?=$societe[0]['societe_ville']?></p>
                    <p>Emplacement d'une carte.</p>
                </div>
            </div>
            
        </div>
    </div>


   </div>

   <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
</body>
</html>