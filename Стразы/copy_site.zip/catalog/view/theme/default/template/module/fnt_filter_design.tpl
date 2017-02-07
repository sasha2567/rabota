<?php 
/*function showChild($category, &$count){
	if ($category['children']) {
		for ($i = 0; $i < count($category['children']);) {
			$j = $i + ceil(count($category['children']) / $category['column']);
			for (; $i < $j; $i++) {
				if (isset($category['children'][$i])) {
					$count ++;
					echo '<option value="'.$category['children'][$i]['category_id'].'">'.$category['children'][$i]['name'].'</option>';
					showChild($category['children'][$i], $count);
					$count --;
				}
			}
		}
	}
}*/
?>
<div class="box box-filter">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
  <div class="hover-popup">
  </div>
  <div class="box-content" style="width: 572px !important;">
	
	<div class="filter">
	<form name="form-filter" id="form-filter">
	<input style="margin-right: 20px;"type="text" name="filter_name" placeholder="Search"/>
		<?php if($categories){?>
				<select  style="margin-right: 20px;" name="filter_category">
				<option value="">Select Category</option>	
			<?php foreach($categories as $category){?>
			
					<option value="<?php echo $category['category_id'];?>"><?php echo $category['name'];?></option>
					<?php if($category['children']){ ?>
						<?php foreach($category['children'] as $children){?>
							<option class="category_children" value="<?php echo $children['category_id'];?>"><span>-<?php echo $children['name'];?></span></option>
					<?php }}?>
			<?php }?>
			</select>
		<?php }?>
		<?php if($manufacturers){?>
				<select name="filter_manufacturer">
				<option value="">Select Manufacturer</option>	
			<?php foreach($manufacturers as $manufacturer){?>
				<option value="<?php echo $manufacturer['manufacturer_id'];?>"><?php echo $manufacturer['name'];?></option>
			<?php }?>
			</select>
		<?php }?>
		</form>
		<img src="catalog/view/theme/motorblade/image/remove.png" alt="Close" title="Close" id="close-list"/>
	</div>
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
		<div class="show-popup">
		  <?php if ($product['image_popup']) { ?>
        <div class="image"><img src="<?php echo $product['image_popup']; ?>" alt="<?php echo $product['name']; ?>" /></div>
        <?php } ?>
      <div class="name"><?php echo $product['name']; ?></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/motorblade/image/stars-<?php echo $product['rating']; ?>.png" /></div>
        <?php } ?>
       </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>

<script type="text/javascript">
    var flagLoadingFinish = true;
    var counter_lazy_load = 1;
	function lastPostFunc() { 
	    counter_lazy_load += 1;
	    flagLoadingFinish = false; 
		var filter_name = $('.box-filter #form-filter input[name=\'filter_name\']').attr('value');
		var filter_category = $('.box-filter #form-filter select[name=\'filter_category\']').attr('value');
		var filter_manufacturer = $('.box-filter #form-filter select[name=\'filter_manufacturer\']').attr('value');
		$('.box-filter .hover-popup').html('');
		$('.box-filter .hover-popup').slideUp();
		$.ajax({
			url: 'index.php?route=product/fnt_product_design/filter_product',
			type: 'post',
			data: 'filter_name=' + filter_name + '&filter_category=' + filter_category + '&filter_manufacturer=' + filter_manufacturer+'&page='+counter_lazy_load,
			dataType: 'html',
			success: function(html) {
				if(html.length > 100){	
					$('.box-filter .box-product').append(html);
					flagLoadingFinish = true; 
				}
			}
		});
	};  
</script>
