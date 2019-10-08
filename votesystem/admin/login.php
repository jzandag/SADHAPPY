<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$username = $_POST['username'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM admin WHERE username = '$username'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Cannot find account with the username';
		}
		else{
			$row = $query->fetch_assoc();
			if(password_verify($password, $row['password'])){
				$_SESSION['admin'] = $row['id'];
			}
			else{
				$_SESSION['error'] = 'Incorrect password';
			}
		}

		date_default_timezone_set('Asia/Manila');
		$date = date("Y-m-d H:i:s");
		$description = 'Admin logged in.' ;
		$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
		if($conn->query($sql)){
			
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
		
	}
	else{
		$_SESSION['error'] = 'Input admin credentials first';
	}

	header('location: index.php');

?>