<?php
//PRINT --- Basics of PHP

echo "HELLO WORLDD";

$name = "Lakshayy";
$age = 30;
$marks = 81.33;
$isMarried = false;
echo "<br>";

// variables 
echo "<br>my name is ".$name;
echo "<br>my age is ".$age;
echo "<br> my marks is ".$marks;
echo "<br> is Married".$isMarried;

echo "<br>";
echo "<br>";

// to check data-type
var_dump($isMarried);
echo "<br>";
var_dump($name);

echo "<br>";
echo "<br>";

//Arthematic Operator
$a = 20;
$b = 10;
 $c = $a + $b;
// $c = $a - $b;
// $c = $a * $b;
// $c = $a ** $b;
// $c = $a / $b;
// $c = $a % $b;
echo $c."<br>";
//Arthematic Operator

// increment / decrement 
$numadd = 10;
$numadd++;
// ++$numadd; 
echo $numadd."<Br>";
// increment / decrement
echo "<br>"; 

// Pre Defined Functions
// string 
$name = "abdul";
echo strlen($name)."<br>";
echo str_ireplace("ob","ong",$name)."<br>";
echo ucwords($name)."<br>";
echo strtoupper($name)."<br>";

// number
$numb = 20;
var_dump(is_int($numb));
var_dump(is_float($numb));
var_dump(is_numeric($numb));

echo "<br>";
//Mathh
echo pi()."<br>";
echo abs(-99)."<br>";
echo sqrt(44)."<br>";
echo round(31.20)."<br>";
echo rand(1,10)."<br>";
// Pre Defined Functions
?>