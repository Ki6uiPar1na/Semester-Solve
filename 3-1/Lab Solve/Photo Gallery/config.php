<?php
$host = "localhost";
$user = "root"; // Change this if you have a different DB user
$pass = "";
$dbname = "student";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
