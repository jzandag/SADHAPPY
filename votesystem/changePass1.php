<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['changePass'])){
		$voter = $_SESSION['voter'];
		$password = $_POST['password'];
		$password = password_hash($password, PASSWORD_DEFAULT);

		$sql = "UPDATE voters SET isChangePass=1,password = '$password' WHERE id = '$voter'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
		
		date_default_timezone_set('Asia/Manila');
		$date = date("Y-m-d H:i:s");
		$description = 'Updated voter '.$voter.'\'s password forthe first time' ;
		$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
		if($conn->query($sql)){
			
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'Input voter credentials first';
	}

	header('location: home.php');

?>