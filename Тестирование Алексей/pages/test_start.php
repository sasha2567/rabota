<!DOCTYPE html>
<html>
<head>
	<title>Система тестирования - Выбор теста</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-language" content="en" />
	<link rel="stylesheet" href="<?php echo $_SESSION['page_url'];?>/style.css"/>
</head>
<body>
	<div id="container">
		<div id="text">
			<p>
				Страница теста
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
			<span>Выберите тему теста</span><br />
			<span>Чтобы пройти тест нажмите "Начать тест"<br />
			<form action="<?php echo $_SESSION['base_url'];?>/test/testing" method="POST">
				<h4>Тема:</h4>
				<select id="test_theme" name="theme">
				<?php
				foreach ($tests as $value) {?>
					<option value="<?php echo $value['id'];?>">
						<?php echo $value['title'];?>
					</option>
				<?php
				}
				?>
				</select>
				<br />
				<input type="submit" name="test_start" value="Начать тест"/>
			</form>
		</p>
	</div>
</body>
</html>