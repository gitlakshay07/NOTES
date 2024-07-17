<?php
// Functions in PHP

function wlcmfn($name){
    echo "Welcome to the world of coding $name";
}
wlcmfn("lakshay");

echo "<br>";
// Pre Defined Function 

// isset() => Return true , if a variable is declared and not null
$surname = "malikk";
if(isset($surname)){
    echo "Name is set";
}else {
    echo "Name is not set";
};
?>