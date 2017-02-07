  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <span class="warning"></span></div>
  <div class="row">
    <div id="content" class="col-sm-12">
	<h1><?php echo $title_heading; ?></h1>
        <fieldset>
          <div class="form-group required">
            <label class="col-sm-3 control-label text-right" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-9">
              <input type="text" name="name_design" value="" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
            </div>
          </div>
        </fieldset>
        <div class="buttons clearfix">
          <div class="pull-right">
            <input type="submit" id="formlogin" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
      </div>
   </div>
<script type="text/javascript"><!--
	$('.alert-danger').css('display','none');
	$('#formlogin').click(function() {
		if($('input[name=\'name_design\']').val() == ''){
			$('.alert-danger .warning').html('Product design name is not null!');
			$('.alert-danger').css('display','block');
		} else {
			$.ajax({
				url: 'index.php?route=product/fnt_category_product_design/saveCustomDesignIdea',
				type: 'post',
				data: 'name_design='+$('input[name=\'name_design\']').val(),
				dataType: 'json',
				success: function (json) {
					$('.close').click();
				}
			});	
		}
	});
//--></script> 