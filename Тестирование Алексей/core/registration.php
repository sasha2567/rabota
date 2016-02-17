<?php 

class Registration {

	public function __construct()
	{
		# code...
	}
	
	public function registration(){
		if(isset($_POST['registred'])){
			$log = $_POST['login'];
			$pass = $_POST['password'];
			$email = $_POST['email'];
			$name = $_POST['name'];
			include_once "/../config.php";
			include_once "/../models/model_user.php";
			if (!save_user($log, $pass, $email, $name))
				header('Location: '.$_SESSION['base_url'].'/login');
			$_SESSION['login'] = $log;
			$user_id = get_user($log);
			$user_id = $user_id['id'];
			$_SESSION['user_id'] = $user_id;
			$_SESSION["autorised"] = true;
			header('Location: '.$_SESSION['base_url'].'/home');
		}
		header('Location: '.$_SESSION['base_url'].'/login');
	}
	
	public function view(){
		if(isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../pages/registration.php";	
	}

	public function classname()
	{
		return "Registration";
	}
}

