
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap-5.2.0/bootstrap.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/media_query.css">
    <script src="assets/js/bootstrap-5.2.0/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

</head>
<body>


<script>
     if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)){
        $('body').load('mobile.php');
     }else{
        $('body').load('desktop.php');
     }
</script>

</body>
</html>

