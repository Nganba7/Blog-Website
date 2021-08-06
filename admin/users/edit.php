<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php"); 
adminOnly();
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
	<link rel="stylesheet" type="text/css" href="../../assets/css/style.css">	

	<!--Admin styling -->
	<link rel="stylesheet" type="text/css" href="../../assets/css/admin.css">


	<title>Admin - Edit User</title>
	
</head>

<body>

	<!-- NAVBAR -->
	<?php include(ROOT_PATH . "/app/includes/adminHeader.php"); ?>
	<!-- //NAVBAR -->

	<!-- ADMIN PAGE WRAPPER-->
	<div class="admin-wrapper">

		<!-- LEFT SIDEBAR-->
		<?php include(ROOT_PATH . "/app/includes/adminSidebar.php"); ?>

		<!--ADMIN CONTENT-->
		<div class="admin-content">

			<div class="button-grp">
				<a href="edit.php" class="btn btn-big">Edit User</a>
				<a href="index.php" class="btn btn-big" >Manage User</a>
			</div>

			<div class="content">
				<h2 class="page-title">Edit User</h2>
				<?php include(ROOT_PATH . "/app/helpers/formErrors.php") ?>

				<form action="edit.php" method="post">
					<input type="hidden" name="id" value="<?php echo $id; ?>">

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
						<input type="password" name="password" value="<?php echo $password; ?>" class="text-input">
					</div>
					<div>
						<label>Password Confirmation</label>
						<input type="password" name="passwordConf" value="<?php echo $passwordConf; ?>" class="text-input">
					</div>
					<div>
						<?php if(isset($admin) && $admin == 1): ?>
							<label>
								<input type="checkbox" name="admin" checked>
								Admin
							</label>
						<?php else: ?>
							<label>
								<input type="checkbox" name="admin">
								Admin
							</label>
						<?php endif; ?>
					</div>
					<div>
						<button type="submit" name="update-user" class="btn btn-big" >Update User</button>
					</div>
					
				</form>
				
			</div>
			
		</div>

	</div>
	<!--// ADMIN PAGE WRAPPER-->

	<!--jQUERY-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- CK EDITOR -->
	<script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>

	<!--CUSTOM SCRIPT-->
	<script src="../../assets/js/scripts.js"></script>

</body>
</html>