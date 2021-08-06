<?php 
include("path.php");
include(ROOT_PATH . "/app/controllers/topics.php");

$posts = array();
$postsTitle = 'Recent Posts';

if (isset($_GET['t_id'])) {
	$posts = getPostsByTopicId($_GET['t_id']);
	$postsTitle = "You searched for posts under '" . $_GET['name'] . "'";
} else if (isset($_POST['search-term'])) {
	$postsTitle = "You searched for '" . $_POST['search-term'] . "'";
	$posts = searchPosts($_POST['search-term']);
} else {
	$posts = getPublishedPosts();
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

	<title>wording.</title>
	
</head>

<body>

	<!-- NAVBAR -->
	<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
	<?php include(ROOT_PATH . "/app/includes/messages.php"); ?>
	<!-- //NAVBAR -->


		

	<!--PAGE WRAPPER-->
	<div class="page-wrapper">

		<!--CAROUSAL-->
		<div class="post-slider">
			<h1 class ="slider-title">Trending Posts</h1>
			<i class="fas fa-angle-left prev"></i>
			<i class="fas fa-angle-right next"></i>

			<!-- POST WRAPPER -->
			<div class="post-wrapper">

			<?php foreach($posts as $post): ?>
				<div class="post">
					<img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>"  alt ="" class="slider-image">
					<div class="post-info">
						<h3><a href="single1.php?id=<?php echo $post['id']; ?>"><?php echo $post['title']; ?></a></h3>
						<i class="fas fa-user-circle">&nbsp;<?php echo $post['username']; ?></i>
						&nbsp;
						<i class="fas fa-calendar-alt">&nbsp;<?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
					</div>
				</div>
			<?php endforeach; ?>
				
			</div>
			<!-- //POST WRAPPER -->

		</div>
		<!--//CAROUSEL-->

		<!-- CONTENT -->
		<div class="content clearfix">

			<!-- MAIN CONTENT WRAPPER -->
			<div class="main-wrapper">

				<!-- MAIN CONTENT-->
				<div class="main-content">

					<h1 class="recent-post-title"><?php echo $postsTitle ?></h1>

					<?php foreach ($posts as $post): ?>

						<div class="post clearfix">
							<img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" class="post-image">
							<div class="post-preview">
								<h1><a href="single1.php?id=<?php echo $post['id']; ?>"> <?php echo $post['title']; ?></a></h1>
								<i class="fas fa-user-circle">&nbsp;<?php echo $post['username']; ?></i>
								&nbsp;
								<i class="fas fa-calendar-alt">&nbsp;<?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
								<p class="preview-text">
									<?php echo html_entity_decode(substr($post['body'], 0, 150) . '...'); ?>
								</p>
								<a href="single1.php?id=<?php echo $post['id']; ?>" class="btn read-more">Read more</a>
							</div>
						</div>
					<?php endforeach; ?>

				</div>
				<!--MAIN CONTENT-->

			</div>
			<!-- //MAIN CONTENT WRAPPER -->

			<!--SIDEBAR -->
			<div  class="sidebar">

				<div class="section search">
					<h2 class="section-title"><i class="fas fa-search"></i> Search</h2>
					<form action="index.php" method="post">
						<input type="text" name="search-term" class="text-input" placeholder="Search topics,keywords etc" >
					</form>
				</div>

				<div class="section topics">
					<h2 class="section-title">Topics</h2>
					<ul>

						<?php foreach($topics as $key => $topic): ?>
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