<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Система тестирования - Тесты</title>
	<link rel="stylesheet" href="style.css">
	<script src="<?php echo $_SESSION['page_url'];?>/jquery-2.0.3.min.js"></script>
	<script>
		var current_question = 1;

		function question (id) {
			for(i = 1; i <= <?php echo count($tests)?>; i++){
				$('div #test_data' + i).hide();	
			}
			$('div #test_data' + id).show();
			current_question = id;
			var str = '';
			<?php for ($i = 1; $i <= count($tests); $i++) : ?> 
			str +='<span ';
			if(<?php echo $i;?> == current_question)
				str += 'id="nav-active"';
			str += 'class="pagnation test_id<?php echo $i;?>" onclick="question(<?php echo $i;?>)"><?php echo $i;?></span>'; 
			<?php endfor; ?>

			$('#pagination').html(str);
		}
	</script>
</head>
<body>

<div class="wrap">
	
	<?php if( $tests ): ?>
	<div class="content">
		
		<p>Всего вопросов: <?php echo count($tests)?></p>

		<div id="pagination">

		<?php for ($i = 1; $i <= count($tests); $i++) : ?>

			<span <?php if($i == 1) : ?> id="nav-active" <?php endif; ?> class="pagnation test_id<?php echo $i;?>" onclick="question(<?php echo $i;?>)"><?php echo $i;?></span>

		<?php endfor; ?>

		</div>

		<div id="questions">

			<form action="<?php echo $_SESSION['base_url'];?>/test/test_end" method="POST">
				
				<?php $i = 1; foreach($tests as $row): // получаем каждый конкретный вопрос + ответы ?>

				<div class="test-data" id="test_data<?php echo $i;?>">
					
					<div class="question" data-id="<?php echo $row['question']['id'];?>" id="question-<?php echo $i;?>">
						
						<p class="q"><?php echo $row['question']['title'];?></p>

						<?php foreach($row['answers'] as $answer): // проходимся по массиву ответы ?>
							
						<p class="a">
							<input type="radio" id="answer-<?php echo $answer['id'];?>" name="question[<?php echo $row['question']['id'];?>]" value="<?php echo $answer['id'];?>">
							<label for="answer-<?php echo $answer['id'];?>"><?php echo $answer['text'];?></label>
						</p>

						<?php endforeach; // $item ?>

					</div> <!-- .question -->

				</div> <!-- .test-data -->

				<?php $i++; endforeach; // $tests ?>	

				<input type="submit" name="test_end" id="btn" value="Закончить тест"/>

			</form>

		</div>

	</div> <!-- .content -->

<?php else: // $tests ?>
	<h3>Нет тестов</h3>
<?php endif; // $tests ?>

</div> <!-- .wrap -->

</body>
</html>