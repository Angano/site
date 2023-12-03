<?php 
require_once('./model/connect.php');

    $sql = "SELECT * FROM `ambu_emploi` where fk_societe = :fksociete";

    $query = $db->prepare($sql);
    $query->bindValue(':fksociete',$id_societe,PDO::PARAM_STR);

    $query->execute();

    $emplois =  $query->fetchAll(PDO::FETCH_ASSOC);

require_once('./model/close.php');
