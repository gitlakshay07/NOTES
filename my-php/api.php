<?php
// echo "<pre>";
// print_r($_GET);

echo $_POST["username"]."<br>";
echo $_POST["password"]."<br>";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="api.php" method="post">
        <div>
            <label>Username:</label>
            <input type="text" name="username">
        </div>
        <br>
        <div>
            <label >Password:</label>
            <input type="password" name="password">
        </div>
        <br>
        <div>
            <button type="submit">Log In</button>
        </div>
    </form>

    <br><br><br>

    <a href="./api.php">Home</a>
</body>
</html>