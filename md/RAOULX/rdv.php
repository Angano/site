<?php
    $title = 'R.D.V';
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
</head>
<body>
    <img src="assets/img/rdv.webp" class="img-fluid position-absolute w-100  h-100 " style="opacity:0.6" alt="...">
    <?php
        require_once('_nav-mobil.php')
    ?>
        <?php
            require_once('./_entite.php');
        ?>
    
    <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
</body>
</html>