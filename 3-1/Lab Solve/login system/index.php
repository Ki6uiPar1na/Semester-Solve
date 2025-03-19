<?php
session_start();
if (!isset($_SESSION["user_id"])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="text-center p-5">
    <h1>Welcome, <?php echo $_SESSION["user_name"]; ?>!</h1>
    <p>You are now logged in.</p>
    <a href="logout.php" class="btn btn-danger">Logout</a>
</body>
</html>
