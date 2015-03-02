<?php
	require('./../config.php');
	
	$username = $_POST['username'];
	$password = $_POST['password'];

	$con = @mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die(mysql_error());
	$db = @mysql_select_db(DB_NAME,$con) or die(mysql_error());

	$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";

	$result = mysql_query($sql);

	$count = mysql_num_rows($result);

	if($count == 1){
		$_SESSION['username'] = $username;
		
		header("location:login_success.php");
	} else {
		echo "Wrong Username or Password";
	}
	
	ob_end_flush();
?>
