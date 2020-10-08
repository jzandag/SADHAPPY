<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location: admin/home.php');
  	}

    if(isset($_SESSION['voter'])){
      header('location: home.php');
    }
?>
<?php include 'includes/header.php'; ?>
<body >
    <div id="fullscreen_bg" class="fullscreen_bg"/>

    <div class="container">
        <form class="form-signin" action="login.php" method="POST">
            <h1 class="form-signin-heading text-muted">CPE Voting System</h1>
            <input type="text" class="form-control" 
            name="voter" placeholder="Voter's ID" required autofocus="">
            <input type="password" class="form-control" placeholder="Password" required=""
            name="password">
            <button class="btn btn-lg btn-primary btn-block" id="login-btn" type="submit">
                Sign In
            </button>
        </form>
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
