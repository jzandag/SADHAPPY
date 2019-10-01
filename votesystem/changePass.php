<?php
  	session_start();
    if(isset($_SESSION['admin'])){
      header('location: admin/home.php');
    }
  	if(isset($_SESSION['isChangePass'])){
      if($_SESSION['isChangePass'] == 1){
        header('location: home.php');
      }
  	}
    else{
      header('location: index.php');
    }
?>
<?php include 'includes/header.php'; ?>
<style>
  body{
    margin: 0 !important;
    padding: 0 !important ;
    background: url(images/main.jpg) !important;
    background-size: cover !important;
    background-position: center !important;
    font-family: sans-serif;
  }
</style>
<body class="hold-transition login-page">
<div class="login-box">
  	<div class="login-logo">
  		<b>CPE Voting System</b>
  	</div>

  	<div class="login-box-body">
    	<p class="login-box-msg">Change your password </p>

    	<form action="changePass1.php" method="POST">
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			  <div class="col-xs-8">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="changePass"><i class="fa fa-sign-in"></i> Change Password</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p>
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>

<?php include 'includes/scripts.php' ?>
</body>

<!-- <footer>
<p><center><b>NOTE:</b> Use the Admin panem to Create New Voter's ID and Password. The System Automatically Generates VotersID </p></center> -->
</div>
</html>
