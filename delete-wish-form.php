<?php

$wishId = $_GET["wishId"];


$dsn = "mysql:host=localhost;dbname=patpurvr_Wish;charset=utf8mb4";
$dbusername="wasim";
$dbpassword="+U*cxi;txxT!";

$pdo = new PDO($dsn, $dbusername, $dbpassword);

$stmt = $pdo->prepare("SELECT * FROM `wishtable`
WHERE `wishId` = $wishId");
$stmt->execute();

$row = $stmt->fetch();
?>
would you like to delete wish# <?=$row["wishId"];?> ?
<?=$row["myname"];?>
<?=$row["frdemail"];?>
<?=$row["myemail"];?>
<?=$row["frdemail"];?>
<?=$row["wish"];?>
<?=$row["imgurl"];?>
<form action="process-delete-wish-form.php" method="POST">
	<input value="<?=$row["wishId"];?>" name="wishId" type="hidden">
	<input type="submit" value="confirm delete"><br>
</form>