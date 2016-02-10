<!DOCTYPE html>
<html>
<head>
	<title>Система тестирования - Добавление вопроса</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-language" content="en" />
	<link rel="stylesheet" href="<?=$_SESSION['page_url'];?>/style.css"/>
	<script src="<?=$_SESSION['page_url'];?>/jquery-2.0.3.min.js"></script>
	<script type="text/javascript">
	var count = 0;
	function answer_add() {
		count++;
		$('#answers').append('<h4>Ответ:</h4>');
		$('#answers').append('<input id="answer_title" name="answer_title[' + count + ']">');
	}
	</script>
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
					<a href="<?=$_SESSION['base_url'];?>/home" class="current">Главная</a>
				</li>
				<li>
					<a href="<?=$_SESSION['base_url'];?>/test">Пройти тест</a>
				</li>
				<?php
				if(isset($_SESSION['administration']) && $_SESSION['administration'] == true):?>
				<li>
					<a href="<?=$_SESSION['base_url'];?>/add_test">Добавить тест</a>
				</li>
				<?php 
				endif;
				?>
				<li>
					<a href="<?=$_SESSION['base_url'];?>/logout">Выход</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="right">
		<p>
			<h1>Основной текст страницы</h1>
			<span>Выберите тему теста</span><br />
			<span>Чтобы добавить вопрос нажмите "Добавить вопрос"<br />
			<form action="<?=$_SESSION['base_url'];?>/add_test/question/add" method="POST">
				<h4>Тема:</h4>
				<select id="test_id" name="theme">
				<?php
				foreach ($tests as $value) {?>
					<option value="<?=$value['id'];?>">
						<?=$value['title'];?>
					</option>
				<?php
				}
				?>
				</select>
				<br />
				<h4>Вопрос:</h4>
				<input id="question_title" name="question_title">
				<br />
				<div id="answers">
					<h4>Ответ:</h4>
					<input id="answer_title" name="answer_title[0]">
				</div>
				<input type="button" name="add_answer" onclick="answer_add()" value="Добавть ответ" />
				<br />
				<h4>Номер правильного ответа:</h4>
				<input id="corect_answer" name="corect_num">
				<br />
				<input type="submit" name="add_question" value="Добавить вопрос"/>
			</form>
		</p>
	</div>
</body>
</html>