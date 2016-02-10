<?php

/**
*  
*/
class Home{
	
	public function __construct()
	{
		# code...
	}

	public function view(){
		include_once "/../pages/index.php";		
	}

	public function classname()
	{
		return "Home";
	}
}
