<?php
require_once('./assets/js/switch_to_mobil.js');
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
 
    <link rel="stylesheet" href="assets/css/media_query_desktop.css">
    <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link rel="stylesheet" href="./assets/css/icomoon.css">
    

  
    <link rel="stylesheet" href="assets/css/style-desktop.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>


<body>
   <div class="container-fluid">
        <div class="row" style="height:100vh;position:relative" id=" container">
            <!-- aside -->
           
            <div class="text-center md-aside" id="menu-aside" style="padding:0px;">
                <aside>
                    
                    <h1 style="margin-bottom:4rem; margin-top:2.5rem"><a id="societe_nom" href="index.php">Ambulance <br><?=$societe_nom?></h1></a> 
                    
                    <ul class="nav flex-column mb-5 mt-3" >
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
                    <div class="fs-6" id="legale">
                        <p><small>© 
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright 2022<a href="https://etoilesecours.fr" target="_blank" class="h6" style="color:#FFC300; text-decoration:none;"> Etoile Secours</a> 
                        </small></p>
                        <ul>
                            <small class="d-flex justify-content-around mx-auto" style="width:40%;" id="reseau_sociaux">
                                <li><a href="#"><i class="icon-facebook2"></i></a></li>
                                <li><a href="#"><i class="icon-twitter2"></i></a></li>
                                <li><a href="#"><i class="icon-instagram"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin2"></i></a></li>
                            </small>
                        </ul>
                    </div>
                </aside>
            </div> 

            <button class="btn btn-sm btn-secondary" id="btn-menu">menu</button>
            <div id="style-content"> 
                
            <!-- Accueil -->
                <div class="row md_block" id="accueil" style="background-color: #FAFAFA;">
                    <div class="col-md-12 px-0" style="height: 100%;">
                        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="true" style="height: 100%;">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>

                            <div class="carousel-inner" style="height: 100%;">
                                <div class="carousel-item active" id="morice" style="height:100%; position:relative">
                                    <img src="./assets/img/<?=$societe[0]['slider_1']?>" class="d-block mx-auto" height="100%" width="100%" alt="...">
                                    <div class="popup" style="margin-bottom:-15rem;" id="popup1">
                                        <p class="popup-1">7 jours sur 7</p> 
                                        <p class="popup-2">pour tous typs de transports</p>
                                        
                                    </div>
                                </div>

                                <div class="carousel-item" style="height: 100%;">
                                    <img src="./assets/img/<?=$societe[0]['slider_2']?>" class="d-block mx-auto" height="100%" width="auto" alt="...">
                                    <div class="popup" style="margin-bottom:-15rem;">
                                        <p class="popup-1">24 heures sur 24</p> 
                                        <p class="popup-2">Pour tous types de distances.</p>
                                    </div>
                                </div>

                                <div class="carousel-item" style="height: 100%;">
                                    <img src="./assets/img/<?=$societe[0]['slider_3']?>" class="d-block mx-auto" height="100%" width="auto" alt="...">
                                    <div class="popup" style="margin-bottom:-15rem;">
                                        <p class="popup-1">Ambulances / VSL / Taxi</p> 
                                        <p class="popup-2">Quelque soit vos besoins !.</p>
                                    </div>
                                </div>
                           
                                <!-- <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button> -->
                            </div>
                        </div>
                    </div> 
                </div>
            <!-- Service -->
                <div class="row h-100 "  id="service">
                    <div class="col-md-6 p-3 " style="
                    background-image:url('./assets/img/<?=$societe[0]['img_1']?>'); 
                    background-position:center;
                    background-repeat:no-repeat;
                    background-size:cover;
                    z-index:5;">
                        
                    </div>
                    <div class="col-md-6 p-3 " >
                    <div  id="agence-block">
                         <p><small style="color:#BEBEBE;">UN SERVICE EN CONTINUE</small> </p>
                        <p><span id="textDecoration">24H/24</span> , 7J/7</p>
                        <pre class="text-wrap" style="margin-top:4rem"><small><?=$societe[0]['story_1']?></small></pre>
                    </div>
                       
                        <div class="d-flex" style="margin-top:5rem;" id="equipe">
                            <div style="width:30%">
                                <div class="d-flex" style="align-items: center">
                                    <div><i class="icon-check" style="color:#FFC300"></i></div>
                                    <div class="w-100"><hr></div>
                                </div>
                                <p class="mt-5 pe-3" style="font-weight:100;word-wrap:break-word">DES EQUIPES DE PROFESSIONNELLES</p>
                            </div>
                            
                            <div style="width:30%">
                                <div class="d-flex" style="align-items: center">
                                    <div><i class="icon-check"></i></div>
                                    <div class="w-100"><hr></div>
                                </div>
                                <p class="mt-5 pe-3" style="font-weight:100;word-wrap:break-word">DES VEHICULE ADAPTES</p>
                            </div>
                   
                            <div style="width:30%">
                                <div class="d-flex" style="align-items: center">
                                    <div><i class="icon-check"></i></div>
                                    <div class="w-100"><hr></div>
                                </div>
                                <p class="mt-5 pe-3" style="font-weight:100; word-wrap:break-word">DES SOLUTIONS POUR CHAQUE SITUATIONS!</p>
                            </div>

                        </div>
                    </div>
                </div>
            
            <!-- Agence -->  
                <div class="row md_block-50 " id="agence" style="background-image:url('./assets/img/<?=$societe[0]['img_2']?>'); 
                    background-position:center;
                    background-repeat:no-repeat;
                    background-size:cover;
                    background-attachment:fixed;
                    position:relative;">
                    <div class="w-100 h-100" style="background-color: black;opacity:0.5;position:absolute">
                    </div>
                            <div class="col-md-12 px-0 d-flex flex-column align-self-center h-50">
                                                <div class="card bg-light w-50 mx-auto opacity-75 h-100 "><pre><?=$societe[0]['story_2']?></pre></div>
                                            </div>
                    
                
                    
                </div>

            
            <!-- Contact -->   
                <div class="row  d-flex flex-column" style=" background-color: #FAFAFA;" >
                    <div class="col reveal" id="contact" style="line-height:1.42">
                        <h2 class="coordonnees">Coordonnées :</h2>
                        <h3 class="coordonnees"><?=$societe[0]['societe_nom']?></h3>
                        <h5 class="coordonnees"><?=$societe[0]['societe_adress']?></5>
                        <h5 class="coordonnees"><?=$societe[0]['societe_zip']?> <?=$societe[0]['societe_ville']?></h5>
                    
                        <?php
                        if(isset($societe[0]['societe_mail'])){
                            ?> 
                            <p class="coordonnees"><a href="mailto:<?= $societe[0]['societe_mail'];?>" class="btn btn-lg btn_contact" style="text-transform:uppercase">eMail !</a></p>
                            <?php
                        }
                        if(isset($societe[0]['societe_tel'])){
                            ?> 
                        <p class="coordonnees"><a href="tel:<?= $societe[0]['societe_tel'];?>" class="btn btn_contact btn-lg" style="text-transform:uppercase">Téléphone</a></p>
                            <?php
                        }?>


                    
                    </div> 
                    <div class="col mx-auto">
                        <iframe class="w-100" src="<?=$societe[0]['map']?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                
            </div>
        </div>


   </div>

   <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
   <script src="assets/js/script_desktop.js"></script>
</body>
</html>