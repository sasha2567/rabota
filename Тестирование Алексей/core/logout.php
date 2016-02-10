<?php

/**
* класс для выхода и закрытия сессии
*/
class Logout
{
	
	public function __construct()
	{
		# code...
	}

	public function logout()
	{
		unset($_SESSION["autorised"]);
		unset($_SESSION["login"]);
		unset($_SESSION["user_id"]);
		unset($_SESSION['administration']);
		header('Location: '.$_SESSION['base_url'].'/login');
	}

	public function classname()
	{
		return "Logout";
	}
}
