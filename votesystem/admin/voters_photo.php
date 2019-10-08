<?php
	include 'includes/session.php';

	if(isset($_POST['upload'])){
		$id = $_POST['id'];
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}
		
		$sql = "UPDATE voters SET photo = '$filename' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Photo updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

		date_default_timezone_set('Asia/Manila');
		$date = date("Y-m-d H:i:s");
		$description = 'Updated voter#'.$id. '\s picture.' ;
		$sql = "INSERT INTO log ( description, date) VALUES ('$description','$date')";
		if($conn->query($sql)){
			
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Select voter to update photo first';
	}

	header('location: voters.php');
?>