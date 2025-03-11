<?php
include "../config.php";

$sql = "CREATE TABLE IF NOT EXISTS teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    photo VARCHAR(255) DEFAULT 'default.jpg'
)";

if ($conn->query($sql) === TRUE) {
    echo "Table `teachers` initialized successfully!";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>
