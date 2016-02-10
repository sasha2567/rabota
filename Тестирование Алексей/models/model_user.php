<?php
/**
* получение данных о конкретном пользователе
**/
function get_user($login = null){
	if( !$login ) 
		return false;
	global $db;
	$query = "SELECT * FROM user WHERE login = '$login'";
	$res = mysqli_query($db, $query);
	if(!$res) 
		return false;
	$data = mysqli_fetch_assoc($res);
	return $data;
}

/**
* получение списка пользователей
**/
function get_users(){
	global $db;
	$query = "SELECT * FROM user";
	$res = mysqli_query($db, $query);
	if(!$res) 
		return false;
	$data = array();
	while($row = mysqli_fetch_assoc($res)){
		$data[] = $row;
	}
	return $data;
}

/**
* сохранение пользователя
**/
function save_user($login = '', $pass = '', $email = '', $name = ''){
	if( !$login || !$pass || !$email || !$name) 
		return false;
	global $db;
	$query = "INSERT INTO user (`login`, `password`, `email`, `name`) VALUES ('$login', '$pass', '$email', '$name')";
	echo $query;
	$res = mysqli_query($db, $query);
	return true;
}