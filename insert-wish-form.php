<?php
//insert-contact-form.php
?>


<form action="process-insert-wish-form.php" method="POST">
	Your Name: <input type="text" name="myname"><br>
	Your Friend's Name: <input type="text" name="frdname"><br>
	Your Email: <input type="text" name="myemail"><br>
    Your Friend's Email: <input type="text" name="frdemail"><br>
	Wish: <input type="text" name = "wish" rows = "5" cols = "50"> </textarea><br>
	Image url: <input type="text" name="imgurl"><br>
	<input type="submit"><br>
</form>
<a href="select-wishes.php">Dashboard</a>