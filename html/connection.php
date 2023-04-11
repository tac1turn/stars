<?php
class connect
{
  private $servername = "localhost:8082";
  private $database = "stars";
  public $conn;

  function __construct($username = "root", $password = "")
  {
    $this->conn = mysqli_connect($this->servername, $username, $password, $this->database);
    if (!$this->conn) {
      die("Connection failed: " . mysqli_connect_error());
    }
  }
}
