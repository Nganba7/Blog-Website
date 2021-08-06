<?php include("path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php"); 
guestsOnly();
?>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<!--Font Awesome-->
	<script src="https://kit.fontawesome.com/4ff264fb23.js" crossorigin="anonymous"></script>

	<!-- Google Fonts-->
	<link href="https://fonts.googleapis.com/css2?family=PT+Serif&family=Pacifico&family=Trispace:wght@600&display=swap" rel="stylesheet"> 

	<!--css link-->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">	

	<title>Register</title>
	
</head>

<body>

	<!-- NAVBAR -->
	<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
	<!-- //NAVBAR -->

	<!--REGISTER FORM-->
	<div class="auth-content">
		
		<form action="register.php" method="post">
			<h2 class="form-title">Register</h2>

			<?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>
			

			<div>
				<label>Username</label>
				<input type="text" name="username" value="<?php echo $username; ?>" class="text-input">
			</div>
			<div>
				<label>Email</label>
				<input type="email" name="email" value="<?php echo $email; ?>" class="text-input">
			</div>
			<div>
				<label>Password</label>
				<input type="password" name="password"  class="text-input">
			</div>
			<div>
				<label>Password Confirmation</label>
				<input type="password" name="passwordConf"  class="text-input">
			</div>
			<div>
				<button type="submit" name="register-btn" class="btn btn-big">Register</button>
			</div>
			<p>Or <a href="<?php echo BASE_URL . "/login.php" ?>">Sign in</a> </p>

		</form>

	</div>
	<!--//REGISTER FORM-->

	 


	<!--jQUERY-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!--CUSTOM SCRIPT-->
	<script src="assets/js/scripts.js"></script>

</body>
</html>