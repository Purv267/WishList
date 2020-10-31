<?php

$myname = $_POST["myname"];
$frdname = $_POST["frdname"];
$myemail = $_POST["myemail"];
$frdemail = $_POST["frdemail"];
$wish = $_POST["wish"];
$imgurl = $_POST["imgurl"];
?>
<?php
//print_r($_POST);

//save data to a database

//connect
$dsn = "mysql:host=localhost;dbname=patpurvr_Wish;charset=utf8mb4";
$dbusername="wasim";
$dbpassword="+U*cxi;txxT!";

$pdo = new PDO($dsn, $dbusername, $dbpassword);

//prepare and execute SQL statements
$stmt = $pdo->prepare("INSERT INTO `wishtable` 
	(`wishId`, `myname`, `frdname`, `myemail`, `frdemail`, `wish`, `imgurl`) 
	VALUES (NULL, '$myname', '$frdname', '$myemail', '$frdemail', '$wish', '$imgurl');");
$stmt->execute();

echo("You successfully added your wish! Thanks for your wish info. We will be in touch soon!");


?>
<a href="select-wishes.php">Dashboard</a>