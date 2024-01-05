<pre>
<?php
$a = 5;       // Integer
$b = 5.34;    // Float
$c = "hello"; // String
$d = true;    // Boolean
$e = NULL;    // NULL

$a = (string) $a;
$b = (string) $b;
$c = (string) $c;
$d = (string) $d;
$e = (string) $e;

//To verify the type of any object in PHP, use the var_dump() function:
var_dump($a);
var_dump($b);
var_dump($c);
var_dump($d);
var_dump($e);
?> 
</pre>

<pre>
<?php
class Fruit {
    public $type;
    public $model;
    public function Selection($type, $model) {
        $this->type = $type;
        $this->model = $model;
    }
    public function message() {
        return "I buy " .$this->type. " " .$this->model. "!";
    }
}
$myFruit = new Fruit();
$myFruit->Selection("fresh", "Banana");
echo $myFruit->message()."<br>"."<br>"."<br>";

$myFruit = (array) $myFruit;
var_dump($myFruit);
?>
</pre>