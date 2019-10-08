<?php
	session_start();
	include 'includes/conn.php';

	date_default_timezone_set('Asia/Manila');
	$date = date("Y-m-d H:i:s");
	$description = 'Admin logged out.' ;
	$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
	if($conn->query($sql)){
		
	}
	else{
		$_SESSION['error'] = $conn->error;
	}

	session_destroy();

	header('location: index.php');
?>