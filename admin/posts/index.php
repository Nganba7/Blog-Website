<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/posts.php"); 
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


	<title>Admin - Manage Posts</title>
	
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
				<a href="create.php" class="btn btn-big">Add Post</a>
				<a href="index.php" class="btn btn-big" >Manage Post</a>
			</div>

			<div class="content">
				<h2 class="page-title">Manage Posts</h2>


				<?php include(ROOT_PATH . "/app/includes/messages.php"); ?>
				<div>
					<table>

						<thead>
							<th>Title</th>
							<th>Author</th>
							<th colspan="3">Action</th>
						</thead>
						<tbody>

							<?php foreach ($posts as $key => $post): ?>
								<tr>
									<td><?php echo $post['title']; ?></td>
									

									<td><?php echo $post['username']; ?></td>
									<td><a href="edit.php?id=<?php echo $post['id']; ?>" class="edit"> Edit</a></td>
									<td><a href="edit.php?delete_id=<?php echo $post['id']; ?>" class="delete"> Delete</a></td>
									<?php if($post['published']): ?>
										<td><a href="edit.php?published=0&p_id=<?php echo $post['id'] ?>" class="unpublish"> unpublish</a></td>
									<?php else: ?>
										<td><a href="edit.php?published=1&p_id=<?php echo $post['id'] ?>" class="publish"> publish</a></td>
									<?php endif; ?>

									
								</tr>
							<?php endforeach; ?>

							
							
							
						</tbody>
					</table>
				</div>
			</div>
			
			
		</div>
		<!--//ADMIN CONTENT-->

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