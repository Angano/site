<?php
    require_once('./model/connect.php');

    if(isset($_POST['login']) && !empty($_POST['login']) && isset($_POST['password']) && !empty($_POST['password'])){

        // nettoyage des données
        $login = filter_input(INPUT_POST,'login', FILTER_SANITIZE_EMAIL);
        $password = filter_input(INPUT_POST,'password',FILTER_SANITIZE_ADD_SLASHES);
       
        $sql = 'SELECT * FROM ambu_utilisateur where mail=:email';
        $query = $db->prepare($sql);

        $query->bindValue(':email',$login,PDO::PARAM_STR);
        $query->execute();
        $user = $query->fetch(PDO::FETCH_ASSOC);

        if(password_verify($password,$user['mdp'])){
          session_start();
          
            $_SESSION['user_nom'] = $user['nom'];
            $_SESSION['user_prenom'] = $user['prenom'];
            $_SESSION['user_mail'] = $user['mail'];
            $_SESSION['user_id'] = $user['user_id'];
          
        };
        
        
       /* 
        $password_record = password_hash('md', PASSWORD_BCRYPT );
        $sql_update = "UPDATE ambu_utilisateur set mdp=:mpd where mail=:email";
        $querey_update = $db->prepare($sql_update);
 
        $querey_update->bindValue(':mpd',$password_record,PDO::PARAM_STR);
        $querey_update->bindValue(':email',$user['mail'],PDO::PARAM_STR);

        $querey_update->execute();
        */
        
        header('location:index.php');
    }


    require_once('./model/close.php');