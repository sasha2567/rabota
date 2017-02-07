<section class="fpd-sidebar">

	<!-- Navigation -->
	<div class="fpd-navigation ui pointing menu">
		<a class="fpd-nav-item item" data-target=".fpd-products"><i class="fa fa-book icon"></i><?php echo $products_menu; ?></a>
		<a class="fpd-nav-item item" data-target=".fpd-designs"><i class="fa fa-folder-open icon"></i><?php echo $designs_menu; ?></a>
		<a class="fpd-nav-item item" data-target=".fpd-edit-elements"><i class="fa fa-edit icon"></i><?php echo $edit_elements_menu; ?></a>
		<a class="fpd-nav-item item" data-target=".fpd-fb-user-photos"><i class="fa fa-facebook icon"></i><?php echo $fb_photos_menu; ?></a>
		<a class="fpd-nav-item item" data-target=".fpd-instagram-photos"><i class="fa fa-instagram icon"></i><?php echo $insta_photos_menu; ?></a>
	</div>

	<!-- Content -->
	<div class="fpd-content ui segment">
		<!-- Products -->
		<div class="fpd-products">
			<div class="fpd-items-wrapper fpd-clearfix"></div>
		</div>
		<!-- Designs -->
		<div class="fpd-designs">
			<div class="ui section divider"></div>
			<div class="fpd-items-wrapper fpd-clearfix"></div>
		</div>
		<!-- Edit elements -->
		<div class="fpd-edit-elements">
			<div class="fpd-elements-dropdown-wrapper">
				<select class="fpd-elements-dropdown">
					<option value="none"><?php echo $edit_elements_dropdown_none; ?></option>
				</select>
			</div>
			<div class="ui section divider"></div>
			<!-- Toolbar -->
			<div class="fpd-toolbar fpd-clearfix">
				<div class="fpd-filling-wrapper">
					<h5><?php echo $section_filling; ?></h5>
					<div class="fpd-color-picker ui button">
						<input type="text" value="">
					</div>
					<div class="fpd-patterns-wrapper ui segment">
						<div class="fpd-pattern-items fpd-clearfix"></div>
					</div>
				</div>
				<div class="fpd-text-format-section">
					<h5><?php echo $section_fonts_styles; ?></h5>
					<div class="fpd-fonts-dropdown-wrapper">
						<select class="fpd-fonts-dropdown"></select>
					</div>
					<div class="fpd-text-styles">
						<button title="<?php echo $customize_text_align_left; ?>" class="fpd-align-left ui icon button fpd-tooltip"><i class="fa fa-align-left icon"></i></button>
						<button title="<?php echo $customize_text_align_center; ?>" class="fpd-align-center ui icon button fpd-tooltip"><span class="fa fa-align-center icon"></i></button>
						<button title="<?php echo $customize_text_align_right; ?>" class="fpd-align-right ui icon button fpd-tooltip"><i class="fa fa-align-right icon"></i></button>
						<button title="<?php echo $customize_text_bold; ?>" class="fpd-bold ui icon button fpd-tooltip"><i class="fa fa-bold icon"></i></button>
						<button title="<?php echo $customize_text_italic; ?>" class="fpd-italic ui icon button fpd-tooltip"><i class="fa fa-italic icon"></i></button>
					</div>
				</div>
				<div class="fpd-curved-text-wrapper">
					<h5><?php echo $section_curved_text; ?> <i class="fa fa-question-circle fpd-tooltip fpd-help-icon" title="<?php echo $curved_text_info; ?>"></i></h5>
					<div>
						<button title="<?php echo $curved_text_toggle; ?>" class="fpd-curve-toggle ui icon button fpd-button-submit fpd-tooltip"><i class="fa fa-check icon"></i></button>
						<button title="<?php echo $curved_text_reverse; ?>" class="fpd-curve-reverse fpd-curve-toggle-item ui icon button fpd-tooltip"><i class="fa fa-text-width icon"></i></button>
					</div>
					<div class="fpd-curve-toggle-item">
						<div class="fpd-clearfix fpd-input-group">
							<label><?php echo $curved_text_radius; ?></label>
							<input type="range" min="0" max="200" value="100" class="fpd-curved-text-radius" />
						</div>
						<div class="fpd-clearfix fpd-input-group">
							<label><?php echo $curved_text_spacing; ?></label>
							<input type="range" min="0" max="100" value="50" class="fpd-curved-text-spacing" />
						</div>
					</div>
				</div>
				<div class="fpd-helper-buttons-wrapper">
					<h5><?php echo $section_helpers; ?></h5>
					<button title="<?php echo $customize_center_h; ?>" class="fpd-center-horizontal ui icon button  fpd-tooltip"><i class="fa fa-arrows-h icon"></i></button>
					<button title="<?php echo $customize_center_c; ?>" class="fpd-center-vertical ui icon button  fpd-tooltip"><i class="fa fa-arrows-v icon"></i></button>
					<button title="<?php echo $customize_center_move_down; ?>" class="fpd-move-down ui icon button  fpd-tooltip"><i class="fa fa-arrow-down icon"></i></button>
					<button title="<?php echo $customize_center_move_up; ?>" class="fpd-move-up ui icon button  fpd-tooltip"><i class="fa fa-arrow-up icon"></i></button>
					<button title="<?php echo $customize_reset; ?>" class="fpd-reset ui icon button  fpd-tooltip"><i class="fa fa-refresh icon"></i></button>
				</div>
			</div>
		</div>
		<!-- Facebook User Photos -->
		<div class="fpd-fb-user-photos">
			<div class="fpd-clearfix">
				<div class="fpd-fb-loader fpd-clearfix">
					<fb:login-button data-max-rows="1" data-show-faces="false" data-scope="user_photos" autologoutlink="true"></fb:login-button>
					<span class="fpd-loading-gif"></span>
				</div>
				<select class="fpd-fb-friends-select">
					<option selected="selected" disabled="disabled"><?php echo $fb_select_friend; ?></option>
				</select>
				<select class="fpd-fb-user-albums">
					<option selected="selected" disabled="disabled"><?php echo $fb_select_album; ?></option>
				</select>
			</div>
			<div class="ui section divider"></div>
			<div class="fpd-items-wrapper fpd-clearfix"></div>
		</div>
		<!-- Facebook User Photos -->
		<div class="fpd-instagram-photos">
			<div>
				<button class="fpd-insta-feed ui green button"><?php echo $insta_feed_button; ?></button>
				<button class="fpd-insta-recent-images ui green button"><?php echo $insta_recent_images_button; ?></button>
				<button class="fpd-insta-load-next ui blue button disabled"><?php echo $insta_load_next; ?></button>
			</div>
			<div class="ui section divider"></div>
			<div class="fpd-items-wrapper fpd-clearfix"></div>
		</div>
	</div>

</section>