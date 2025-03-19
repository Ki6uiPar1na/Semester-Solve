<?php
include 'config.php';

$sql = "SELECT * FROM images ORDER BY uploaded_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .gallery { display: flex; flex-wrap: wrap; justify-content: center; }
        .gallery img { width: 200px; height: 150px; margin: 10px; border-radius: 8px; }
        .card { margin: 10px; padding: 10px; border: 1px solid #ddd; border-radius: 8px; }
    </style>
</head>
<body>
    <h2>Image Gallery</h2>
    <a href="upload.php">Upload a New Image</a>
    <div class="gallery">
        <?php while ($row = $result->fetch_assoc()) { ?>
            <div class="card">
                
                <img src="<?php echo $row['image_path']; ?>" alt="<?php echo htmlspecialchars($row['title']); ?>">
                <h3><?php echo htmlspecialchars($row['title']); ?></h3>
            </div>
        <?php } ?>
    </div>
</body>
</html>
