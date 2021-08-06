
<?php session_start();?>
<?php if(!isset($_SESSION['username'])):?>
	<?php header("Location:login.php");?>

<?php else:?>
	<?php
		include("path.php");
		include(ROOT_PATH . "/app/database/db.php");
		$user_id = $_SESSION['id'];
		if(isset($_POST['dislike'])) {
			$post_id = $_POST['id'];
			$sql = "INSERT INTO dislikes (user_id, post_id) VALUES('$user_id','$post_id')";
			if($conn->query($sql)){
				header("Location:single.php?id=" . $post_id);
			}
			else{
				header("Location:single.php?id=" . $post_id);
			}
		}
	?> 
<?php endif;?>