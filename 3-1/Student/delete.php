<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['roll'])) {
    $roll = $_POST['roll'];

    $sql = "DELETE FROM students WHERE roll = '$roll'";

    if ($conn->query($sql) === TRUE) {
        echo "Student record deleted successfully!";
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    $conn->close();
}
?>
