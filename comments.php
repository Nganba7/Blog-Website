<?php session_start();?>
<?php if(!isset($_SESSION['username'])):?>
	<?php header("Location:login.php");?>

<?php else:?>
	<?php
		include("path.php");
		include(ROOT_PATH . "/app/database/db.php");

		$table = 'comments'; 

		$comments = selectAll($table);

		if(isset($_POST['postcomment'])){
			$userid = $_SESSION['id'];
			$username = $_SESSION['username'];
			$postid = $_POST['id'];
			$comment = $_POST['comment'];
			if($comment != "")
			{
				$sql = "INSERT INTO comments (user_id, post_id, username, comment) VALUES ('$userid','$postid','$username','$comment')";
				$query = $conn->query($sql);
				if($query){
					header("Location:single.php?id=" . $postid);
				}
			}
			else
				{
					header("Location:single.php?id=" . $postid);
				}
		}
		
	?> 
<?php endif;?>