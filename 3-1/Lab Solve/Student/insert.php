<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $roll = $_POST['roll'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $department = $_POST['department'];

    $sql = "INSERT INTO students (roll, name, email, phone, department) VALUES ('$roll', '$name', '$email', '$phone', '$department')";

    if ($conn->query($sql) === TRUE) {
        echo "Student data inserted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
