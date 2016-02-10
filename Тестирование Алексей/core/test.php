<?php 

class Test {

	private $test_id;
	private $test_time;

	public function __construct()
	{
		# code...
	}
	
	public function test_end(){		
		if(isset($_POST['test_end'])){
			$data = array();
			for ($i = 1; $i <= 1000; $i++) {
				if(isset($_POST['question'][$i]))
					$data[] = array('id_question' => $i, 'id_answer' => $_POST['question'][$i]);	
			}
			if($data == null)
				return;
			include_once "/../models/model_test.php";
			$_SESSION['test_time'] = time() - $_SESSION['test_time'];
			$_SESSION['result_id'] = set_test_data($_SESSION['user_id'], $_SESSION['test_id'], $data, $_SESSION['test_time'], date('Y-m-d'));
			header('Location: '.$_SESSION['base_url'].'/test');
		}	
	}

	public function start()
	{
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../models/model_test.php";
		$tests = get_tests();
		include_once "/../pages/test_start.php";	
	}
	
	public function view(){
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		include_once "/../pages/test.php";		
	}

	public function testing()
	{
		if(!isset($_SESSION["autorised"]))
			header('Location: '.$_SESSION['base_url'].'/home');
		$test_id = $_POST['theme'];
		$_SESSION['test_id'] = $test_id;
		include_once "/../models/model_test.php";
		$tests = get_question($test_id);
		$_SESSION['test_time'] = time();
		include_once "/../pages/testing.php";
	}

	public function classname()
	{
		return "Test";
	}
}