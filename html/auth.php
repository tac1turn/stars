<?php
error_reporting(E_ALL);
    session_start();
    if(($_SESSION['is_login']??false) != true){
        header("location: login.php");
    }
    if($_SESSION['level'] == 'admin'){
        header("location: admin/index.php");
    }
?>