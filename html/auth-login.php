<?php
include "connection.php";
$con = new connect();

session_start();
if ($_SESSION['is_login'] ?? false == true) {
    header("location: index.php");
    die();
}

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT id, username, password FROM account_users WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($con->conn, $query);
    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        $_SESSION['is_login'] = true;
        $_SESSION['level'] = 'user';
        header("location: index.php");
        die();
    } else {
        header("location: login.php?login-failed=");
        die();
    }
}
