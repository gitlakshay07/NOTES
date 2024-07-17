<?php
// Index Arrays 
$fruits = array("apple","orange","banana","mango");

$fruits[] = "coconut";

// array_push($fruits,"papaya");
// array_pop($fruits);
// array_shift($fruits);
// array_reverse($fruits);


foreach($fruits as $fruit){
    echo $fruit."<br>";
}
?>

<?php
// Associative array => array with key value pair 
$employee = array(
    "wamika" => "software Engineer",
    "bhoomi" => "web Designer",
    "parul" => "web developer",
    "mahima" => "app developer"
);
?>
<?php
foreach($employee as $key => $value){
    ?>
    <p><b><?php echo $key.":" ?></b> <?php echo $value ?></p>
<?php }
?>

<?php
// Multi Dimensional Array
$students = array(
    array("name" => "Wasim", "class" => "BCA"),
    array("name" => "Ishan", "class" => "BCA"),
    array("name" => "Nishant", "class" => "MCA"),
    array("name" => "Prateek", "class" => "B.tech"),
);
// echo "<pre>";
// print_r($students);

foreach($students as $key => $value){
    echo "<br>";
    foreach($value as $k => $v){
        echo $k.":". $v.",";
    }
};
?>