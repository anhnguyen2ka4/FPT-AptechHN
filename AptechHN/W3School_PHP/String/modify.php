<?php
$a = "Hello T2307M";
echo strtoupper($a);
echo '<br>';
echo strtolower($a);
echo '<br>';
echo str_replace("Hello", "Welcome", $a);
echo '<br>';
echo strrev($a);
echo '<br>';
echo trim($a);
echo '<br>';
$b = explode("T", $a);
print_r($b);
echo '<br>';
?>