<header>
	<a class="logo" a href="<?php echo BASE_URL . "/index.php" ?>">
		<h1 class="logo-text">wor<span>ding.</span></h1>
	</a>
	<i class="fas fa-bars menu-toggle"></i>
	<ul class="nav">
		<?php if(isset($_SESSION['username'])): ?>
			<li>
				<a href="#">
					<i class="fas fa-user-circle"></i>
					<?php echo $_SESSION['username']; ?>
				</a>
				<ul>
					<li><a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout">Log out</a></li>
				</ul>			
			</li>
		<?php endif; ?>
	</ul>
</header>