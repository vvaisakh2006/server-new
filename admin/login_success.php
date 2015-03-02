<?php
	session_start();
	if(!$_SESSION['username'] ){
		header("location:home.html");
	}
?>

<html>
	<body>
		Login Successful
	</body>
</html>
