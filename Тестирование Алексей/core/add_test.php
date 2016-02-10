<?php 

class Add_Test {

	public function __construct()
	{
		# code...
	}
	
	public function add_new_test(){
		if(isset($_POST['add_test'])){
			include_once "/../models/model_test.php";
			save_test($_POST['test_title']);
			header('Location: '.$_SESSION['base_url'].'/home');
		}
		header('Location: '.$_SESSION['base_url'].'/add_test');
	}

	public function add_new_question()
	{
		if(isset($_POST['add_question'])){
			include_once "/../models/model_test.php";
			save_question( $_POST['theme'], $_POST['question_title'], $_POST['answer_title'], $_POST['corect_num'] );
			header('Location: '.$_SESSION['base_url'].'/home');
		}
		header('Location: '.$_SESSION['base_url'].'/home');
	}
	
	public function view(){
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../pages/add_test.php";	
	}

	public function new_test(){
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../pages/add_test_test.php";	
	}

	public function new_question(){
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../models/model_test.php";
		$tests = get_tests();
		include_once "/../pages/add_test_question.php";	
	}

	public function classname()
	{
		return "Registration";
	}
}

