<?php
//Conditional Statement
$age = 18;
if($age > 18) {
    echo "you can vote";
}else if($age = 18){
    echo "congratulations you are now Eligible to vote";
}else{
    echo "you can't vote";
};
echo "<Br>";

// Switch Case 

$num = 80;
$grade = "f";

switch($grade){
    case "A":
        echo "You achieved A";
        break;
    case "B":
        echo "You achieved B";
        break;
    case "C":
        echo "You achieved C";
        break;
    case "D":
        echo "You achieved D";
        break;
    default:
        echo $grade. " is not valid";
        break;
}
?>