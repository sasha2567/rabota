<?php
/**
* получение списка тестов
**/
function get_tests(){
	global $db;
	$query = "SELECT * FROM test";
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
* получение данных теста
**/
function get_question($test_id = 0){
	if( !$test_id ) {
		
		return;
	}
	global $db;
	$data = array();
	$query = "SELECT title, id FROM question WHERE id_test = $test_id";
	$res = mysqli_query($db, $query);
	while($row = mysqli_fetch_assoc($res)){
		$id = $row['id'];
		$query_a = "SELECT answer.text, answer.id FROM answer WHERE id_question = $id";
		$res_a = mysqli_query($db, $query_a);
		$data_a = array();
		while ($row_a = mysqli_fetch_assoc($res_a)) {
			$data_a[] = $row_a;
		}
		$data[] = array('question' => $row, 'answers' => $data_a);
	}
	return $data;
}

/**
* получение id вопрос/ответ
**/
function get_correct_answers($test){
	if( !$test ) return false;
	global $db;
	$query = "SELECT q.id AS question_id, a.id AS answer_id
		FROM questions q
		LEFT JOIN answers a
			ON q.id = a.parent_question
		LEFT JOIN test
			ON test.id = q.parent_test
				WHERE q.parent_test = $test AND a.correct_answer = '1' AND test.enable = '1'";
	$res = mysqli_query($db, $query);
	$data = null;
	while($row = mysqli_fetch_assoc($res)){
		$data[$row['question_id']] = $row['answer_id'];
	}
	return $data;
}

/**
* сохранение ответов пользователя
**/
function set_test_data($user_id = 0, $test_id = 0, $data = null, $test_time = 0, $test_date = 0){
	if( !$user_id || !$test_id || !$data || !$test_time || !$test_date ) return false;
	global $db;
	$id_result = 1;
	$query = "SELECT * FROM result";
	$res = mysqli_query($db, $query);
	$count = 0;
	if($res) {
		while($row = mysqli_fetch_assoc($res)){ $count++; }
		$id_result = $count + 1;
	}
		
		
	$query = "INSERT INTO result VALUES ($id_result, $user_id, $test_id, $test_time, '$test_date')";
	$res = mysqli_query($db, $query);
	foreach ($data as $row) {
		$id_question = $row['id_question'];
		$id_answer = $row['id_answer'];
		$query = "INSERT INTO user_answer VALUES ($id_result, $id_question, $id_answer)";
		$res = mysqli_query($db, $query);
	}
	return $id_result;
}

/**
* получение результата последнего теста
**/
function get_result($result_id = 0, $user_id = 0){
	if( !$result_id || !$user_id ) return false;
	global $db;
	if( $result_id == -1){
		$query = "SELECT * FROM result WHERE id_user = $user_id ORDER BY id DESC";
		$res = mysqli_query($db, $query);
		if(!$res) 
			return null;
		$row = mysqli_fetch_assoc($res);
		$result_id = $row['id'];
		$test_id = $row['id_test'];
	}
	$query = "SELECT question.id as id1, answer.id as id2, question.title, answer.text FROM question JOIN answer ON question.id = answer.id_question 
		JOIN user_answer ON user_answer.id_question = question.id JOIN result ON result.id = user_answer.id_result
		WHERE result.id = $result_id AND user_answer.id_answer = answer.id";
	$res = mysqli_query($db, $query);
	$data = null;
	if(!$res)
		return null;
	while($row = mysqli_fetch_assoc($res)){
		$question_id = $row['id1'];
		$query_cur = "SELECT * FROM correct_answer WHERE id_question = $question_id";
		$res_cur = mysqli_query($db, $query_cur);
		$row_cur = mysqli_fetch_assoc($res_cur);
		$data[] = array('question' => $row['title'], 'answer' => $row['text'], 'question_id' => $row['id1'], 'answer_id' => $row['id2'], 'correct_answer_id' => $row_cur['id_answer']);
	}
	return $data;
}

function save_test($test_title = '')
{
	if(!$test_title)
		return;
	global $db;
	$title_id = 0;
	$query = "SELECT * FROM test";
	$res = mysqli_query($db, $query);
	$count = 0;
	if($res) {
		while($row = mysqli_fetch_assoc($res)){ $count++; }
	}
	$count++;
	$query = "INSERT INTO test VALUES ($count, '$test_title')";
	$res = mysqli_query($db, $query);
	return true;
}

function save_question($test_id = 0, $question_title = '', $answer = null, $correct_answer = 0)
{
	global $db;
	$title_id = 0;
	$query = "SELECT * FROM question";
	$res = mysqli_query($db, $query);
	$count = 0;
	if($res) {
		while($row = mysqli_fetch_assoc($res)){ $count++; }
	}
	$count++;
	
	$query = "INSERT INTO question VALUES ($count, $test_id, '$question_title')";
	$res = mysqli_query($db, $query);

	$query = "SELECT * FROM answer";
	$res = mysqli_query($db, $query);
	$count_answer = 0;
	if($res) {
		while($row = mysqli_fetch_assoc($res)){ $count_answer++; }
	}

	for ($i=0; ; $i++) {
		if(isset($answer[$i])){
			$count_answer++;
			if($i == $correct_answer - 1)
				$correct_answer_id = $count_answer + $i;
			$answer_text = $answer[$i];
	
			$query = "INSERT INTO answer VALUES ($count_answer, $count, '$answer_text')";
			$res = mysqli_query($db, $query);
		}
		else
			break;
	}
	$query = "INSERT INTO correct_answer VALUES ($count, $correct_answer_id)";
	$res = mysqli_query($db, $query);
}