<?php

$username = "root";
$password = "";
try {
$conn = new PDO("mysql:host=localhost;dbname=p200147_shoaib", $username, $password);
// set the PDO error mode to exception
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
echo "Connected successfully";
echo 'HI';
echo '<pre>';
print_r($_GET);
//var_dump($_POST);
// die();
} 

catch(PDOException $e) {
echo "Connection failed: " . $e->getMessage();
}




$park_code      = $_GET['park_code'];
$park_name      = $_GET['park_name'];
$park_city      = $_GET['park_city'];
$park_country   = $_GET['park_country'];


    // $conn->query("insert into THEMEPARK 
    // (park_code,park_name,park_city,park_country) values 
    // ('$park_code','$park_name','$park_city','$park_country')" )  ;

try{

     $query_1 = $conn->prepare("insert into THEMEPARK values (?,?,?,?)");
 $query_1->execute([$park_code, $park_name, $park_city,$park_country]);

}
catch(Exception $e){
    echo $e->getMessage();
}











echo '<br>';
echo 'Your form has been submitted successfully';
echo '<a href="./form.php">Click here to go back to main page</a>';

?>
