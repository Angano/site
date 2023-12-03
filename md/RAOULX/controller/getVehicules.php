<?php

    require_once('./model/connect.php');

    
   $sql = 'SELECT * FROM ambu_vehicule where pk_societe:pk_socite';

   $query = $db->prepare($sql);
   $query->bindValue(':fk_societe',$id_societe,PDO::PARAM_STR);
   $query->exec();

   $vehicules = $query->fetchAll(PDO::FETCH_ASSOC);


   require_once('./model/close.php');