<?php

$myname = $_POST["myname"];
$frdname = $_POST["frdname"];
$myemail = $_POST["myemail"];
$frdemail = $_POST["frdemail"];
$wish = $_POST["wish"];
$imgurl = $_POST["imgurl"];
$wishId = $_POST["wishId"];

//sends that data to the database to UPDATE a record
//connect
$dsn = "mysql:host=localhost;dbname=patpurvr_Wish;charset=utf8mb4";
$dbusername="wasim";
$dbpassword="+U*cxi;txxT!";

$pdo = new PDO($dsn, $dbusername, $dbpassword);

//prepare and execute SQL statements
$stmt = $pdo->prepare("UPDATE `wishtable` 
SET `myname` = '$myname',
 `frdname` = '$frdname', 
 `myemail` = '$myemail',
  `frdemail` = '$frdemail',
   `wish` = '$wish',
    `imgurl` = '$imgurl' 
	WHERE `wishtable`.`wishId` = $wishId;");
$stmt->execute();

echo("Successfully updated your record.");

?>
<!-- <a href="select-wishes.php">Dashboard</a> -->