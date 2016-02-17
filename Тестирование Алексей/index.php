<?php
if (version_compare(phpversion(), '5.1.0', '<') == true) { 
	die ('PHP5.1 or upper Only'); 
}

include_once "config.php";

session_start();
$_SESSION['base_url'] = 'http://testing/index.php';
$_SESSION['page_url'] = 'http://testing/pages';

/**
* класс для определения целевой страницы
*/
class Dispatcher {

	public function __construct()
	{
		# code...
	}

	public function redirect() {
		if(isset($_SERVER['PATH_INFO']))
			$uri = $_SERVER['PATH_INFO'];
		else
			$uri = "";
		if(isset($_SESSION["autorised"])) {
			$controller = null;
			switch ($uri) {
		        case "/home" :
		        	include_once "/core/index.php";
		        		$controller = new Home();
		        	$controller->view();
		            break;

		        case "/test"; case "/test/start"; case "/test/testing"; case "/test/test_end" :
		        	include_once "/core/test.php";
		            	$controller = new Test();
		            if($uri == "/test"){
		               	$controller->view();
		            }
		            if($uri == "/test/start"){
		            	$controller->start();
		            }
		            if($uri == "/test/testing"){
		            	$controller->testing();
		            }
		            if($uri == "/test/test_end"){
		            	$controller->test_end();
		            }
		            break;

		        case "/result" :
		        	include_once "/core/result.php";
		        		$controller = new Result();
		        	$controller->view();
		            break;

		        case "/add_test"; case "/add_test/test"; case "/add_test/question"; case "/add_test/test/add"; case "/add_test/question/add" :
		        	include_once "/core/add_test.php";
		        		$controller = new Add_Test();
		        	if($uri == "/add_test"){
		            	$controller->view();
		            }
		            if($uri == "/add_test/test"){
		            	$controller->new_test();
		            }
		            if($uri == "/add_test/question"){
		            	$controller->new_question();
		            }
		            if($uri == "/add_test/test/add"){
		            	$controller->add_new_test();
		            }
		            if($uri == "/add_test/question/add"){
		            	$controller->add_new_question();
		            }
		            break;

		        case "/logout" :
		        	include_once "/core/logout.php";
		        		$controller = new Logout();
		        	$controller->logout();
		            break;

		        case "/registration"; case "/registration/registration" :
		        	include_once "/core/registration.php";
		        		$controller = new Registration();
		        	if($uri == "/registration")
		        		$controller->view();
		        	if($uri == "/registration/registration")
		        		$controller->registration();
		            break;

		        case "/login"; case "/login/login" :
		        	include_once "/core/login.php";
		        		$controller = new Login();
		        	if($uri == "/login"){
		               	$controller->view();
		            }
		            else{
		            	$controller->login();
		            }
		            break;

		        default:
		        	include_once "/core/index.php";
		        		$controller = new Home();
		        	$controller->view();
		            break;
		    }
		}
		else{
			switch ($uri) {
				case "/registration"; case "/registration/registration" :
		        	include_once "/core/registration.php";
		        		$controller = new Registration();
		        	if($uri == "/registration")
		        		$controller->view();
		        	if($uri == "/registration/registration")
		        		$controller->registration();
		            break;

		        case "/login"; case "/login/login" :
		        	include_once "/core/login.php";
		        		$controller = new Login();
		        	if($uri == "/login"){
		               	$controller->view();
		            }
		            else{
		            	$controller->login();
		            }
		            break;

				case "/logout" :
		        	include_once "/core/logout.php";
		        		$controller = new Logout();
		        	$controller->logout();
		            break;

				default:
		        	include_once "/core/index.php";
		        		$controller = new Home();
		        	$controller->view();
		            break;
			}
		}
	}
}

if(!isset($dispatcher))
	$dispatcher = new Dispatcher();
$dispatcher->redirect();

