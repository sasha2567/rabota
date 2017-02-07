<section class="fpd-sidebar fpd-border-color fpd-secondary-bg-color fpd-clearfix">
	
	<!-- Navigation -->
	<div class="fpd-navigation fpd-primary-bg-color">
		<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-designs" title="<?php echo $choose_designs_menu; ?>"><i class="fa fa-folder-open icon"></i><span><?php echo $designs_menu; ?></span></a>
            <a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-products" title="<?php echo $choose_products_menu; ?>"><i class="fa fa-book icon"></i><span><?php echo $products_menu; ?></span></a>
	
		<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-user-photos" title="<?php echo $user_photos_menu; ?>"><i class="fa fa-photo icon"></i><span><?php echo $photos_menu; ?></span></a>
	<!--	<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-instagram-photos" title="<?php echo $insta_photos_menu; ?>"><i class="fa fa-instagram icon"></i><span>Instagram</span></a>-->
	</div>
	<!-- Content -->
        
	<div class="fpd-content fpd-primary-text-color">
		<!-- Products -->
		<div class="fpd-products">
			 <div class="fpd-navigation-product fpd-primary-bg-color">
				<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".element-product-design" title="<?php echo $products_menu; ?>"><i class="fa fa-book icon"></i> <span> <?php echo $products_menu; ?></span></a>
				<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".element-product-ideas" title="Product Design Ideas"><i class="fa fa-eye icon"></i> <span> <?php echo $products_ideas; ?></span></a>
			</div>
                    
                    <select id="design_category_select">
                        <option value="all">Все</option>
                        <?php foreach($data['design_categories'] as $v){ ?>
                        <option value="<?=$v['category_design_id']?>"><?=$v['name']?></option>
                        <?php }?>
                    </select>
                    
                    <div class="fpd-items-wrapper fpd-border-color fpd-clearfix"></div>
		</div>
		<!-- Designs -->	
		<div class="fpd-designs">
			<div class="fpd-items-wrapper fpd-border-color fpd-clearfix"></div>
		</div>

		<!-- Products Ideas-->
		<div class="fpd-products-ideas">
			 <h3><?php echo $text_select_product; ?></h3>
			<div class="fpd-items-wrapper fpd-border-color fpd-clearfix"></div>
		</div>
		<div class="fpd-user-photos">
			<div class="fpd-navigation-upload fpd-primary-bg-color">
				<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-fb-user-photos" title="<?php echo $fb_photos_menu; ?>"><i class="fa fa-facebook icon"></i><span> <?php echo $fb_photos; ?></span></a>
				<a class="fpd-nav-item fpd-secondary-text-color fpd-tooltip" data-target=".fpd-instagram-photos" title="<?php echo $insta_photos_menu; ?>"><i class="fa fa-instagram icon"></i><span> <?php echo $insta_photos; ?></span></a>
			</div>
			<div class="fpd-items-wrapper fpd-border-color fpd-clearfix">
				<!-- Facebook User Photos -->
				<div class="fpd-fb-user-photos">
					<div class="fpd-fb-head fpd-clearfix">
						<h3><?php echo $fb_photos_headline; ?></h3>
						<div class="fpd-clearfix">
							<div class="fpd-fb-loader fpd-clearfix">
								<fb:login-button data-max-rows="1" data-show-faces="false" data-scope="user_photos" autologoutlink="true"></fb:login-button>
								<span class="fpd-loading-gif"></span>
							</div>
							<select class="fpd-fb-user-albums">
								<option selected="selected" disabled="disabled"><?php echo $fb_select_album; ?></option>
							</select>
						</div>
					</div>
					<div class="fpd-items-wrapper fpd-border-color fpd-clearfix"></div>
				</div>
				<!-- Facebook User Photos -->
				<div class="fpd-instagram-photos">
					<div class="fpd-insta-head">
						<h3><?php echo $insta_photos_headline; ?></h3>
						<div>
							<button class="fpd-insta-feed fpd-button-submit fpd-button fpd-submit"><?php echo $insta_feed_button; ?></button>
							<button class="fpd-insta-recent-images fpd-button-submit fpd-button fpd-submit"><?php echo $insta_recent_images_button; ?></button>
							<p class="fpd-insta-load-next disabled"><?php echo $insta_load_next; ?></p>
						</div>
					</div>
					<div class="fpd-items-wrapper fpd-border-color fpd-clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</section>
