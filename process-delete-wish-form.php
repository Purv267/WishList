<?php
//process-delete-contact-form.php

//receive POST data
$wishId = $_POST["wishId"];

//sends that data to the database to UPDATE a record
//connect
$dsn = "mysql:host=localhost;dbname=patpurvr_Wish;charset=utf8mb4";
$dbusername="wasim";
$dbpassword="+U*cxi;txxT!";

$pdo = new PDO($dsn, $dbusername, $dbpassword);

//prepare and execute SQL statements
$stmt = $pdo->prepare("DELETE FROM `wishtable` 
	WHERE `wishtable`.`wishId` = $wishId");
$stmt->execute();

echo("Successfully deleted your record.");

?>
<a href="select-wishes.php">Dashboard</a>