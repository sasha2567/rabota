<?php

/**
*  
*/
class Result {
	
	public function __construct()
	{
		# code...
	}

	public function view(){
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../models/model_test.php";
		$result = get_result(-1, $_SESSION['user_id']);
		include_once "/../pages/result.php";	
	}

	public function classname()
	{
		return "Result";
	}
}
