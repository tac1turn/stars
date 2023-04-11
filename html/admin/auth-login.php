<?php
include "../connection.php";
$con = new connect();

error_reporting(0);

session_start();
if ($_SESSION['is_login'] ?? false == true) {
    header("location: index.php");
    die();
}

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    try {
        $query = "SELECT id, username, password FROM account_admin WHERE username = '$username'";
        $result = mysqli_query($con->conn, $query);
    } catch (Exception $e) {
        header("location: login.php?login-failed=");
        die();
    }
    if (!($result->num_rows > 0)) {
        header("location: login.php?login-failed=");
        die();
    }
    $row = mysqli_fetch_assoc($result);
    if ($password != $row['password']) {
        header("location: login.php?login-failed=");
        die();
    }
    $_SESSION['username'] = $row['username'];
    $_SESSION['is_login'] = true;
    $_SESSION['level'] = 'admin';
    header("location: index.php");
    die();
}
