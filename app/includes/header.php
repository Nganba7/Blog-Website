<header>
		<a href="<?php echo BASE_URL . "/index.php" ?>" class="logo">
			<h1 class="logo-text">wor<span>ding.</span></h1>
		</a>
		<i class="fas fa-bars menu-toggle"></i>
		<ul class="nav">
			<li><a href="<?php echo BASE_URL . "/index.php" ?>">Home</a></li>
		
		
			<?php if (isset($_SESSION['id'])): ?>
				<li>
					<a href="#">
						<i class="fas fa-user-circle"></i>
						<?php echo $_SESSION['username']; ?>
					</a>
					<ul>
						<?php if($_SESSION['admin']): ?>
							<li><a href="<?php echo BASE_URL . "/admin/posts/index.php" ?>">Dashboard</a></li>
						<?php endif;?>
						<?php if($_SESSION['reg']): ?>
							<li><a href="<?php echo BASE_URL . "/reg/posts/index.php" ?>">Dashboard</a></li>
						<?php endif;?>
						<li><a href="<?php echo BASE_URL . "/logout.php" ?>" class="logout">Log out</a></li>
					</ul>
				</li>

			<?php else: ?>
				<li><a href="<?php echo BASE_URL . "/register.php" ?>">Sign up</a></li>
				<li><a href="<?php echo BASE_URL . "/login.php" ?>">Log in</a></li>
			<?php endif; ?>
			
		</ul>
	</header>