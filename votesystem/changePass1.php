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
		
	}
	else{
		$_SESSION['error'] = 'Input voter credentials first';
	}

	header('location: home.php');

?>