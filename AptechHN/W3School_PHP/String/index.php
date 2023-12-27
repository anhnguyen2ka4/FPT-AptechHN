<h3>Double quoted</h3>
<?php
$x = "Anh";
echo "Welcome to KPMG, $x";
?>
<br>
<h3>Single quoted</h3>
<?php
$x = "Anh";
echo 'He is $x.';
?>
<br>
<h3><strong>Note:</strong></h3>
<?php
echo 'Double quoted and single quoted are different.';
?>
<br>
<h3>String Length</h3>
<br>
<?php
echo strlen("Welcome to Finland!");
?>
<br>
<h3>Word Count</h3>
<?php
echo str_word_count("Hello T2307M");
?>
<br>
<h3>Search for Text Within a String</h3>
<?php
echo strpos("Hello T2307M", "T");
?>