<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['title'];
    $target_dir = "uploads/";

    if (!file_exists($target_dir)) {
        mkdir($target_dir, 0777, true);
    }

    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Allowed file types
    $allowed_types = ["jpg", "jpeg", "png", "gif"];

    if (in_array($imageFileType, $allowed_types)) {
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
            $sql = "INSERT INTO images (title, image_path) VALUES ('$title', '$target_file')";
            if ($conn->query($sql) === TRUE) {
                echo "Image uploaded successfully!";
            } else {
                echo "Database error: " . $conn->error;
            }
        } else {
            echo "Error uploading the image.";
        }
    } else {
        echo "Only JPG, JPEG, PNG, & GIF files are allowed.";
    }
    echo "<a href='index.php'>Go To Gallery</a>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Image</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css" integrity="sha512-EZLkOqwILORob+p0BXZc+Vm3RgJBOe1Iq/0fiI7r/wJgzOFZMlsqTa29UEl6v6U6gsV4uIpsNZoV32YZqrCRCQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="container">
        <h2>Upload an Image</h2>
        <form action="upload.php" method="post" enctype="multipart/form-data">
            <label>Title:</label>
            <input type="text" name="title" required>
            <br><br>
            <label>Image:</label>
            <input type="file" name="image" required>
            <br><br>
            <input type="submit" value="Upload">
        </form>
    </div>
</body>
</html>
