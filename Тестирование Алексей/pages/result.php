<!DOCTYPE html>
<html>
<head>
	<title>Система тестирования - Главная</title>
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
			<span>Результаты последнего теста.</span>
			<br />
			<?php if( $result ) : ?>
			<table id="result">
				<th>
					<td>
						Вопрос
					</td>
					<td>
						Ответ
					</td>
				</th>
			<?php foreach ($result as $row) : ?>
				<tr>
					<td>
						<?php echo $row['question'];?>
					</td>
					<td <?php if ($row['answer_id'] != $row['correct_answer_id']) { ?> 
							bgcolor="#FF0000" 
						<?php } else { ?> 
							bgcolor="#00FF00" 
						<?php } ?>>
						<?php echo $row['answer'];?>
					</td>
				</tr>
			<?php endforeach; ?>
			</table>
			<?php else: // $tests ?>
				<span>Предыдущий тест не найден</span>
			<?php endif; // $tests ?>
		</p>
	</div>
</body>
</html>