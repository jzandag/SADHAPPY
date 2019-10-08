<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$voter = $_POST['voter'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM voters WHERE voters_id = '$voter'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Cannot find voter with the ID';
		}
		else{
			$row = $query->fetch_assoc();
			if(password_verify($password, $row['password'])){
				$_SESSION['voter'] = $row['id'];
				$_SESSION['firstname'] = $row['firstname'];
				$_SESSION['lastname'] = $row['lastname'];
				$_SESSION['photo'] = $row['photo'];

				date_default_timezone_set('Asia/Manila');
				$date = date("Y-m-d H:i:s");
				$description = 'User '. $row['voters_id']. ' logged in.' ;
				$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
				if($conn->query($sql)){
					
				}
				else{
					$_SESSION['error'] = $conn->error;
				}
			}
			else{
				$_SESSION['error'] = 'Incorrect password';
			}
			$_SESSION['isChangePass'] = $row['isChangePass'];
		}
		
	}
	else{
		$_SESSION['error'] = 'Input voter credentials first';
	}

	header('location: changePass.php');

?>