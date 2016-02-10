<!DOCTYPE html>
<html>
<head>
	<title>Система тестирования - главная</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-language" content="en" />
	<link rel="stylesheet" href="<?php echo $_SESSION['page_url'];?>/style.css"/>
</head>
<body>
	<div id="container">
		<div id="text">
			<p>
				Главная страница
			</p>
			<span>Здраствуйте, <?php echo $_SESSION['login']?></span>
		</div>
		<div id="menu">
			<ul>
				<li>
					<a href="<?php echo $_SESSION['base_url'];?>/home" class="current">Главная</a>
				</li>
				<li>
					<a href="<?php echo $_SESSION['base_url'];?>/test">Пройти тест</a>
				</li>
				<?php
				if(isset($_SESSION['administration']) && $_SESSION['administration'] == true):?>
				<li>
					<a href="<?php echo $_SESSION['base_url'];?>/add_test">Добавить тест</a>
				</li>
				<?php 
				endif;
				?>
				<li>
					<a href="<?php echo $_SESSION['base_url'];?>/logout">Выход</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="right">
		<p>
			<h1>Основной текст страницы</h1>
			<span>Здесь можно разместить основной текст на странице. Это главная страница.</span>
		</p>
	</div>
</body>
</html>