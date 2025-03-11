<?php
include 'config.php';

if (isset($_GET['roll'])) {
    $roll = $_GET['roll'];

    $sql = "SELECT * FROM students WHERE roll = '$roll'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
?>
         
        <h2>Update Student Information</h2>
        <form action="update_process.php" method="post">
            <input type="hidden" name="roll" value="<?php echo $row['roll']; ?>">
            
            <label for="name">Name:</label>
            <input type="text" name="name" value="<?php echo $row['name']; ?>" required><br><br>

            <label for="email">Email:</label>
            <input type="email" name="email" value="<?php echo $row['email']; ?>" required><br><br>

            <label for="phone">Phone:</label>
            <input type="text" name="phone" value="<?php echo $row['phone']; ?>" required><br><br>

            <label for="department">Department:</label>
            <input type="text" name="department" value="<?php echo $row['department']; ?>" required><br><br>

            <input type="submit" value="Update">
        </form>
<?php
    } else {
        echo "Student not found.";
    }

    $conn->close();
}
?>
