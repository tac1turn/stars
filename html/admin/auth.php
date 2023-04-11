<?php
    session_start();
    if(($_SESSION['is_login']??false) != true){
        header("location: login.php");
    }
    if($_SESSION['level'] == 'user'){
        header("location: ../index.php");
    }
?>