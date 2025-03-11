<?php
include "../config.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $department = $_POST["department"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $photo = "default.jpg";

    if (!empty($_FILES["photo"]["name"])) {
        $photo = time() . "_" . basename($_FILES["photo"]["name"]);
        move_uploaded_file($_FILES["photo"]["tmp_name"], "uploads/" . $photo);
    }

    $stmt = $conn->prepare("INSERT INTO teachers (name, department, email, phone, photo) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $name, $department, $email, $phone, $photo);

    if ($stmt->execute()) {
        echo "Teacher added successfully!";
        header("Location: index.php");
    } else {
        echo "Error: " . $stmt->error;
    }
    $stmt->close();
}
$conn->close();
?>

<form action="add_teacher.php" method="POST" enctype="multipart/form-data">
    Name: <input type="text" name="name" required><br>
    Department: <input type="text" name="department" required><br>
    Email: <input type="email" name="email" required><br>
    Phone: <input type="text" name="phone"><br>
    Photo: <input type="file" name="photo"><br>
    <button type="submit">Add Teacher</button>
</form>