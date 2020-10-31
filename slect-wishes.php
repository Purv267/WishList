
<?php
//select-wishs.php

//retreives data froom a database

//connect
$dsn = "mysql:host=localhost;dbname=patpurvr_Wish;charset=utf8mb4";
$dbusername="wasim";
$dbpassword="+U*cxi;txxT!";

$pdo = new PDO($dsn, $dbusername, $dbpassword);

//prepare and execute SQL statements
$stmt = $pdo->prepare("SELECT * FROM `wishtable`");
$stmt->execute();

//display that data in a friendly HTML format
?><a href="insert-wish-form.php">Add a new wish</a><?php
while($row = $stmt->fetch()) {     
	?><div>
	<p><?=$row["wishId"];?> 
	<?=$row["myname"];?>
<?=$row["frdname"];?>
<?=$row["myemail"];?>
<?=$row["frdemail"];?>
<?=$row["wish"];?>
<?=$row["imgurl"]?>
	<br/>
	<a href="edit-wish-form.php?wishId=<?=$row["wishId"];?>">EDIT edit-wish-form.php?wishId=<?=$row["wishId"];?></a><br>
	<a href="delete-wish-form.php?wishId=<?=$row["wishId"];?>">DELETE delete-wish-form.php?wishId=<?=$row["wishId"];?></a><br>
	</p>
	</div>
<?php } ?>

