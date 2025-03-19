<?php
include 'config.php';

$sql = "SELECT * FROM students";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"/>
</head>
<body>

    <h2>All Students</h2>
    <table>
        <tr>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>

        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>" . $row["roll"] . "</td>
                        <td>" . $row["name"] . "</td>
                        <td>" . $row["email"] . "</td>
                        <td>" . $row["phone"] . "</td>
                        <td>" . $row["department"] . "</td>
                        <td>
                            <form action='delete.php' method='post' style='display:inline;'>
                                <input type='hidden' name='roll' value='" . $row["roll"] . "'>
                                <input type='submit' value='Delete' style='background-color: red; color: white;' onclick='return confirm(\"Are you sure?\")'>
                            </form>
                            <form action='update.php' method='get' style='display:inline;'>
                                <input type='hidden' name='roll' value='" . $row["roll"] . "'>
                                <input type='submit' value='Update' style='background-color: green; color: white;'>
                            </form>
                        </td>
                      </tr>";
            }
        } 
        else {
            echo "<tr><td colspan='6'>No students found</td></tr>";
        }
        $conn->close();
        ?>
    </table>

</body>
</html>
