<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM voters WHERE id = $id";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		if($password == $row['password']){
			$password = $row['password'];
		}
		else{
			$password = password_hash($password, PASSWORD_DEFAULT);
		}

		$sql = "UPDATE voters SET firstname = '$firstname', lastname = '$lastname', password = '$password' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
		date_default_timezone_set('Asia/Manila');
		$date = date("Y-m-d H:i:s");
		$description = 'Edited voter "'.$firstname. '\"' ;
		$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
		if($conn->query($sql)){
			
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location: voters.php');

?>