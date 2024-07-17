<?php
$servarname = "localhost";
$username = "root";
$password = "";
$dbname = "practicedb";

// create_connection 
// $connectn = new mysqli($servarname,$username,$password,$dbname);
// if($connectn->connect_error){
//     die("Connection Failed:".$connectn->connect_error);
// }

$conn = @mysqli_connect($servarname,$username,$password,$dbname);
if($conn){
    echo "Connection Successful";
}else{
    echo "Failed to connect to database ,error:".mysqli_connect_error();
}
?>