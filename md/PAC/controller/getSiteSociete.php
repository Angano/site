<?php

    require_once('./model/connect.php');

    
    // on récupère le numéro de téléphone et on rajoute un 0 devant celui ci
    $societe_telephone = str_pad($societe[0]['societe_tel'],'10','0',STR_PAD_LEFT);

    // on affiche le numéro de téléphone avec un espace entre 2 nombre
    $societe_telephone = wordwrap($societe_telephone,2," ",1);


   require_once('./model/close.php');