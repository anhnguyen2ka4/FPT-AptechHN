<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Case Sensitivity

    </title>
</head>
<body>
    <h1>All variable names are case-sensitive!</h1>
    <?php
    $color = "white";
    echo "My car is ". $color ."<br>";
    echo "My house is ". $COLOR . "<br>";
    echo "My motorbike is ".$coLOR . "<br>";
    ?>
</body>
</html>