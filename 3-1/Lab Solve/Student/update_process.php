<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $roll = $_POST['roll'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $department = $_POST['department'];

    $sql = "UPDATE students SET name='$name', email='$email', phone='$phone', department='$department' WHERE roll='$roll'";

    if ($conn->query($sql) === TRUE) {
        echo "Student record updated successfully!";
    } else {
        echo "Error updating record: " . $conn->error;
    }

    $conn->close();
}
?>
