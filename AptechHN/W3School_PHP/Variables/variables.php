<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    $x = 10;
    $y ="Nguyen Duc Anh";
    echo "Your favourite number is " . $x;
    echo "<br>";
    echo "Your name is $y";
    ?>
    <?php
    $a = 10;
    $b = 1;
    $c = $a + $b;
    echo "<h3>Math: </h3>";
    echo "10 + 1 = $c";
    ?>
    <h3>The var_dump() function returns the data type and the value:</h3>
    <?php 
    $vari = 10;
    echo "vari = 10: ";
    echo "<br>";
    var_dump($vari);
    echo "<br>";
    echo "<br>";
    echo "y = Nguyen Duc Anh:";
    echo "<br>";
    var_dump($y);
    echo "<br>";
    var_dump(NULL);
    echo "<br>";
    var_dump(false);
    echo "<br>";
    var_dump([3.15, 10, 1/20]);
    ?>
    <h3>Assign Multip Value:</h3>
    <?php
    $e = $f = $h = "Code Bug Fix Code Bug Fix Code";
    echo $e, $f, $h;
    ?>
</body>
</html>