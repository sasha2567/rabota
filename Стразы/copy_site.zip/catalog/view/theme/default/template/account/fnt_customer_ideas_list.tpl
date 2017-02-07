<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
  <?php if($customer_ideas){?>
	  <?php foreach ($customer_ideas as $customer_idea) { ?>
		  <div class="table-responsive">
			<table class="table table-bordered table-hover">
			  <tr>
				<td>
					<a href="<?php echo $customer_idea['href'];?>" title="<?php echo $customer_idea['name'];?>"><?php echo $customer_idea['name'];?></a>
					<p><b><?php echo $text_date_added;?>: </b><?php echo $customer_idea['date_added'];?></p>
				</td>
				<td style="text-align: right;"><a href="<?php echo $customer_idea['href'];?>" class="btn btn-primary"><i class="fa fa-edit"></i> <?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $customer_idea['delete']; ?>" class="btn btn-info"><i class="fa fa-trash-o"></i> <?php echo $button_delete; ?></a></td>
			  </tr>
			</table>
		  </div>
	  <?php } ?>
	   <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>