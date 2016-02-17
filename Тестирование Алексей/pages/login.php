<?php
if(isset($_SESSION['login']))
	header('Location: '.$_SESSION['base_url'].'/home');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Авторизация пользователя</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-language" content="en" />
	<link rel="stylesheet" href="<?php echo $_SESSION['page_url'];?>/style.css"/>
</head>
<body>
	<div id="container">
		<h1 id="headerform">Это страница входа. Для регистрации нажмите<a href="<?php echo $_SESSION['base_url'];?>/registration">сюда</a></h1>
		<div id="body">
			<form action="<?php echo $_SESSION['base_url'];?>/login/login" method="POST">
				<h4>Логин</h4>
				<input type="text" name="login" MAXLENGTH="50" />

				<h4>Пароль</h4>
				<input type="password" name="password" MAXLENGTH="50" />
				<div id="submit">
					<input type="submit" name="logined" value="Отправить"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>