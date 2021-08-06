<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/reg_posts.php"); 
regOnly();
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


	<title>Registered User - Add Post</title>
	
</head>

<body>

	<!-- NAVBAR -->
	<?php include(ROOT_PATH . "/app/includes/regHeader.php"); ?>
	<!-- //NAVBAR -->

	<!-- ADMIN PAGE WRAPPER-->
	<div class="admin-wrapper">

		<!-- LEFT SIDEBAR-->
		<?php include(ROOT_PATH . "/app/includes/regSidebar.php"); ?>

		<!--ADMIN CONTENT-->
		<div class="admin-content">

			<div class="button-grp">
				<a href="create.php" class="btn btn-big">Add Post</a>
				<a href="index.php" class="btn btn-big" >Manage Post</a>
			</div>


			<div class="content">
				<h2 class="page-title">Add Posts</h2>

				<?php include(ROOT_PATH . '/app/helpers/formErrors.php'); ?>


				<form action="create.php" method="post" enctype="multipart/form-data">
					<div>
						<label>Title</label>

						<input type="text" name="title" value="<?php echo $title ?>" class="text-input">
					</div>
					<div>
						<label>Body</label>
						<textarea name="body" id="body"><?php echo $body ?></textarea>
					</div>
					<div>
						<label>Image</label>
						<input type="file" name="image" class="text-input">
					</div>
					<div>
						<label>Topic</label>
						<select name="topic_id" class="text-input">
							<option value=""></option>
							<?php foreach($topics as $key => $topic): ?>
								<?php if(!empty($topic_id) && $topic_id == $topic['id']): ?>
									<option selected value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
								<?php else: ?>
									<option value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
								<?php endif; ?>

							<?php endforeach; ?>
							
						</select>
					</div>
					
					<div>
						<button type="submit" name="add-post" class="btn btn-big" > Add Post</button>
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