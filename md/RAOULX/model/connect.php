<?php

    $user_db = 'es';
    $password_db = 'es';
    $dsn = 'mysql:host=localhost;dbname=es';

    try{
        $db = new PDO($dsn,$user_db,$password_db);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->exec("set names utf8mb4");

        // chemin du fichier
        $path = getcwd();
        // on transforme la chaine de caractère en tableau
        $tab = explode('\\',$path);
        // on récupère le nom du dossier
        $directory = end($tab);
        // on nettoye le nom
        //$directory = explode('_',$directory);
        //$directory = [ucfirst($directory[0]), strtoupper($directory[1])];
        //$directory = $directory[0].' '.$directory[1];
       
        $dossier = strtoupper($directory);
        $sql_connect = ' SELECT * from ambu_site_societe where dossier = :societe_nom';

        $query_connect = $db->prepare($sql_connect);
        $query_connect->bindValue(':societe_nom',$dossier, PDO::PARAM_STR);
        $query_connect->execute();
        $societe = $query_connect->fetchAll(PDO::FETCH_ASSOC);

         // on verifie qu'il y a bien un seul résultat
         if(count($societe)>1 ){
            die('la requète a retourné plusieurs résultats');
        }
        elseif( empty($societe)){
            die('Société inconnue');
        };


        $societe_nom = (explode(' ',$societe[0]['societe_nom']))[1];

        // on récupère l'id de la société
        $id_societe = $societe[0]['id_societe'];
    

    } catch(PDOException $e){
        echo $e->getMessage();
    }
 