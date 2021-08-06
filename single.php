<?php include("path.php") ?>
<?php include(ROOT_PATH . '/app/controllers/posts.php'); 

if (isset($_GET['id'])) {
	$post = selectOne('posts', ['id' => $_GET['id']]);

$topics = selectAll('topics');
$posts = selectAll('posts', ['published' => 1]);
}


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
	

	<title><?php echo $post['title']; ?> | Wording</title>
	
</head>

<body>

	<!-- NAVBAR -->
	<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
	<!-- //NAVBAR -->

	<!--PAGE WRAPPER-->
	<div class="page-wrapper">

		<!-- CONTENT -->
		<div class="content clearfix">

			<!-- MAIN CONTENT -->
			<div class="main-content single">
				<h1 class="post-title"><?php echo $post['title']; ?></h1>

				<!-- IMAGE -->

				<img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" class="post-image" width="100%" >

				<div class="like-dislike">
				<!-- likes -->

					<form action="likes.php" method="POST">
						<input type="hidden" name="id" value="<?php echo $_GET['id']?>">
						<?php
							$sql= "SELECT * FROM likes WHERE post_id = '$id'";
							$query = mysqli_query($conn, $sql) or die ('error');
							$cnt_likes = mysqli_num_rows($query);
						?>
						<input type="submit" name="like" value="Like" class="likes" style="background: none; color: blue; border: none; cursor: pointer; display: inline;"><?php echo $cnt_likes;?>
						
					</form>

					<!-- dislikes -->
					<form action="dislikes.php" method="POST">
						<input type="hidden" name="id" value="<?php echo $_GET['id']?>">
						<?php
							$sql= "SELECT * FROM dislikes WHERE post_id = '$id'";
							$query = mysqli_query($conn, $sql) or die ('error');
							$cnt_likes = mysqli_num_rows($query);
						?>
						<input type="submit" name="dislike" value="Dislike" class="dislikes" style="background: none; color: red; border: none; cursor: pointer;"><?php echo $cnt_likes;?>
						
					</form>
				</div>



			   	<!-- Content of the post -->

				<div class="post-content">
					<?php echo html_entity_decode($post['body']); ?>

				</div>


				<!-- Comment section -->
				<div class="row">
					<div class="col-lg-4">	</div>
					<div class="col-lg-6">
						<form class="form-horizontal" action="comments.php" method="POST">
							<input type="hidden" name="id" value=<?php echo $id;?>>
							<div class="form-group">
								<label class="col-lg-3 control-label"><b>Add Comment</b></label>
								<div class="col-lg-9" style="padding-top: 10px; padding-bottom: 10px;">
									<textarea class="form-control" rows="5%" cols="70%" name="comment" placeholder="Comment"></textarea>
								</div>
							</div>
							<input type="submit" name="postcomment" value="Comment" class="btn btn-primary">

						</form>
					</div>
				</div>


				<!-- Display Comments-->
				<div class="row" style="padding-top: 20px;">
					<div class="col-lg-4"></div>
					<div class="col-lg-6">
						<h1>All Comments</h1>
						<?php 
							$com_query = "SELECT * FROM comments WHERE post_id = '$id' ";
							$coms_result = mysqli_query($conn, $com_query) or die("error");
							if(mysqli_num_rows($coms_result)>0){
								while ($com = mysqli_fetch_assoc($coms_result)) {
									$username = $com['username'];
									$comment = $com['comment'];
									?>
									<p style="border-top: 0.5px solid grey; padding-top: 10px;"><?php echo $comment;?><br> Posted by:<b> <?php echo $username;?></b></p>
									<?php
								}
							}

							?>
							<p style="border-bottom: 0.5px solid grey;"></p>
					</div>
				</div>


			</div>
			<!-- //MAIN CONTENT -->

			<!--SIDEBAR -->
			<div  class="sidebar single">

				<div class="section popular">

					<h2 class="section-title"> Popular</h2>

					<?php foreach($posts as $p): ?>
						<div class="posts clearfix">
							<img src="<?php echo BASE_URL . '/assets/images/' . $p['image']; ?>">
							<a href="single.php?id=<?php echo $post['id']; ?>" class="title"><?php echo $p['title']; ?></a>
						</div>
					<?php endforeach; ?>
					

				</div>

				<div class="section topics">
					<h2 class="section-title">Topics</h2>
					<ul>
						<?php foreach($topics as $topic): ?>
							<li><a href="<?php echo BASE_URL . '/index.php?t_id=' . $topic['id'] . '&name=' . $topic['name'] ?>"><?php echo $topic['name']; ?></a></li>
						<?php endforeach; ?>
					</ul>
				</div>

			</div>
			<!-- //SIDEBAR-->

		</div>
		<!--// CONTENT-->

	</div>
	<!--//PAGE WRAPPER-->

	<!--FOOTER-->
	<?php include(ROOT_PATH . "/app/includes/footer.php"); ?>
	<!--//FOOTER-->

	<!--jQUERY-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!--SLICK CAROUSEL-->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!--CUSTOM SCRIPT-->
	<script src="assets/js/scripts.js"></script>

</body>
</html>