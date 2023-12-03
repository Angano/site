<?php
  session_start();
  require_once('./controller/getSiteSociete.php');

  if(filter_input(INPUT_GET,'logout',FILTER_DEFAULT)=='true'){
    
    unset($_SESSION);
    session_destroy();

  }