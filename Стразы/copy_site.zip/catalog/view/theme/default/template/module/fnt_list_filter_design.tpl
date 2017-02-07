<?php if($products){?>
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
      <?php } } else { ?>
		<p>There are no products to list filter.</p>
	  <?php }?>