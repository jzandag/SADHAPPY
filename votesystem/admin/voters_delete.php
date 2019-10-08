<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM voters WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter deleted successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

		date_default_timezone_set('Asia/Manila');
		$date = date("Y-m-d H:i:s");
		$description = 'Deleted voter#'.$id. '.' ;
		$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
		if($conn->query($sql)){
			
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Select item to delete first';
	}

	header('location: voters.php');
	
?>