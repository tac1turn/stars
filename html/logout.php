<?php
session_start();
$level = $_SESSION['level'];
session_destroy();
if ($level == 'admin') {
    header("location: admin/login.php");
} else {
    header("location: login.php");
}
