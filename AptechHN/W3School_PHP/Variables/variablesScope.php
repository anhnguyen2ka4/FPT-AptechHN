<?php
$x = 10;
function myStatement() {
    echo "My age is $x.";
    echo"<br>";
    echo "(Inside FUNCTION)";
}
myStatement();
echo "<br>";
echo "My age is $x.";
echo "<br>";
echo "(Outside FUNCTION)";
?>
<br>
<?php
function myHeight(){
    $y = 1.65;
    echo "My height is $y. (inside funtion)";
}
myHeight();
echo "My height is $y. (Outside funtion)";
?>
<h3>The Global Keyword</h3>
<?php
$x = 10;
$y = 1;

function myValues() {
    global $x, $y;
    $y = $x + $y;
}
myValues();
echo $y;
?>
<br>
<h3>The Static Keyword</h3>
<?php
function myValue() {
    static $x = 0;
    echo $x;
    $x++;
}
myValue();
echo "<br>";
myValue();
echo "<br>";
myValue();
?>