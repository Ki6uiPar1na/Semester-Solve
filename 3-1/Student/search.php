<?php
include 'config.php';

if (isset($_GET['search_roll'])) {
    $search_roll = $_GET['search_roll'];

    $sql = "SELECT * FROM students WHERE roll = '$search_roll'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<h2>Student Information</h2>";
        while ($row = $result->fetch_assoc()) {
            echo "Roll Number: " . $row["roll"] . "<br>";
            echo "Name: " . $row["name"] . "<br>";
            echo "Email: " . $row["email"] . "<br>";
            echo "Phone: " . $row["phone"] . "<br>";
            echo "Department: " . $row["department"] . "<br>";

            // Delete and Update buttons
            echo "<form action='delete.php' method='post'>
                    <input type='hidden' name='roll' value='" . $row["roll"] . "'>
                    <input type='submit' value='Delete' onclick='return confirm(\"Are you sure?\")'>
                  </form>";

            echo "<form action='update.php' method='get'>
                    <input type='hidden' name='roll' value='" . $row["roll"] . "'>
                    <input type='submit' value='Update'>
                  </form>";
        }
    } else {
        echo "No student found with Roll Number: $search_roll";
    }

    $conn->close();
}
?>
