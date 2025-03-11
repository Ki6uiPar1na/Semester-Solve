<?php
include "../config.php";

// Fetch all teachers from the database
$sql = "SELECT * FROM teachers";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Profiles</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .profile-img { 
            width: 100px; height: 100px; border-radius: 50%; object-fit: cover; 
        }
        .container { 
            padding-top: 30px; 
        }
    </style>
</head>
<body>

    <div class="container">
        <h1 class="text-center mb-4">Teacher Profiles</h1>
        <div class="row justify-content-center">
            <?php while ($row = $result->fetch_assoc()): ?>
                <div class="col-md-4 mb-4">
                    <div class="card text-center shadow-lg p-3">
                        <img src="uploads/<?php echo ($row['photo']); ?>" alt="Profile Picture" class="profile-img mx-auto">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo ($row['name']); ?></h5>
                            <p class="card-text"><strong>Department:</strong> <?php echo ($row['department']); ?></p>
                            <p class="card-text"><strong>Email:</strong> <?php echo ($row['email']); ?></p>
                            <p class="card-text"><strong>Phone:</strong> <?php echo ($row['phone']); ?></p>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>

        <div class="text-center mt-4">
            <a href="add_teacher.php" class="btn btn-primary">Add New Teacher</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

<?php $conn->close(); ?>
