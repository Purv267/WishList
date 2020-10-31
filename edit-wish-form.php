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
<form action="process-edit-wish-form.php" method="POST">
	Your Name: <input type="text" value="<?=$row["myname"];?>" name="myname"><br>
	Your Friend's Name: <input type="text" value="<?=$row["frdname"];?>" name="frdname"><br>
	Your Email: <input type="text" value="<?=$row["myemail"];?>" name="myemail"><br>
    Your Friend's Email: <input type="text" value="<?=$row["frdemail"];?>" name="frdemail"><br>
	Wish: <input type="text" name = "wish" value="<?=$row["wish"];?>" rows = "5" cols = "50"> </textarea><br>
	Image url: <input type="text" value="<?=$row["imgurl"];?>" name="imgurl"><br>
	<input value="<?=$row["wishId"];?>" name="wishId" type="hidden">
	<input type="submit"><br>
</form>