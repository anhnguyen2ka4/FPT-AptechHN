<?php
function funcReference(&$number) {
    $number = $number * $number;
    return $number;
}
$myNum = 6;
echo $myNum;
funcReference($myNum);
echo $myNum;
?>