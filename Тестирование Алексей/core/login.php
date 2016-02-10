<?php 

class Login {

	public function __construct()
	{
		# code...
	}
	
	public function login(){
		if(isset($_POST['logined'])){
			$log = $_POST['login'];
			$pass = $_POST['password'];
			include_once "/../models/model_user.php";
			$user = get_user($log);
			if($user['password'] == $pass){
				$_SESSION['login'] = $log;
				$_SESSION["autorised"] = true;
				$_SESSION['user_id'] = $user['id'];
				if($log == 'admin')
					$_SESSION['administration'] = true;
				else
					$_SESSION['administration'] = false;
				header('Location: '.$_SESSION['base_url'].'/home');
			}
			else{
				header('Location: '.$_SESSION['base_url'].'/login');
			}
		}	
	}
	
	public function view(){
		if(isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../pages/login.php";		
	}

	public function classname()
	{
		return "Login";
	}
}