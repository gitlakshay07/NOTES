<?php
// for Loops in php

for($i = 1; $i <= 11; $i++)
   if($i % 2 == 0){
        echo "number is $i"."<br>";
   }else if($i >= 10){
    echo "all number printed";
};
echo "<br>";
echo "<br>";

// while loop in php 
$i = 0;
while($i <= 10){
    echo $i;
    $i++;
};
?>