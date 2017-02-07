<section class="fpd-product-container fpd-border-color">

	<div class="fpd-menu-bar fpd-clearfix fpd-primary-bg-color fpd-secondary-text-color">
		<!-- Menu -->
		<div class="fpd-clearfix">
                    <span class="fpd-reset-product fpd-tooltip" id="product_title_in_menu" style="font-size: 1em; margin: 2px 0 -2px 10px; height: 50px; color:#fff ;" ></span>
<!--<span class="fpd-reset-product fpd-tooltip" title="<?php echo $reset_tooltip; ?>"><img src="../reset.png" alt="очистить"></span>-->
<!--<span class="fpd-reset-product fpd-tooltip" href="#" onclick="history.back(-2);"><img src="../cvet.png" alt="выбрать цвет"></span>-->
<!--<span class="fpd-reset-product fpd-tooltip" href="http://ceostore.ru/kak_sozdat_tovar.html"><img src="../help.png" alt="помощь"></span>-->
<!--<span class="fpd-reset-product fpd-tooltip" style="margin-left: 10px;" href="http://ceostore.ru/kak_sozdat_tovar.html"><img src="../help.png" alt="помощь"></span>-->
			<span class="fpd-add-image fpd-tooltip" title="<?php echo $add_image_tooltip; ?>"><i class="fa fa-image"><span><?php echo $text_add_image; ?></span></i></span>

			<span class="fpd-add-text fpd-tooltip" title="<?php echo $add_text_tooltip; ?>"><i class="fa fa-font"><span><?php echo $text_add_text; ?></span></i></span>
			<form class="fpd-upload-form" style="display: none;">
				<input type="file" class="fpd-input-image" name="uploaded_file"  />
			</form>
			</div>
                <div class="fpd-clearfix" style="float: left; margin-left: 30px;">
	
<!--			<span class="fpd-download-image fpd-tooltip" title="<?php echo $download_image_tooltip; ?>"><i class="fa fa-cloud-download"><span><?php echo $text_download_image; ?></span></i></span>
			<span class="fpd-save-pdf fpd-tooltip" title="<?php echo $pdf_tooltip; ?>"><i class="fa fa-file-o"><span><?php echo $text_pdf; ?></span></i></span>
			<span class="fpd-print fpd-tooltip" title="<?php echo $print_tooltip; ?>"><i class="fa fa-print"><span><?php echo $text_print; ?></span></i></span>
			<span class="fpd-save-product fpd-tooltip" title="<?php echo $save_product_tooltip; ?>"><i class="fa fa-floppy-o"><span><?php echo $text_save_product; ?></span></i></span>
			<div class="fpd-saved-products fpd-border-color fpd-tooltip" title="<?php echo $saved_products_tooltip; ?>">
				<i class="fa fa-th-list"><span><?php echo $text_saved_products; ?></span></i>
				<div class="menu"></div>
			</div>
			-->
			<span class="fpd-download-image fpd-tooltip" title="<?php echo $download_image_tooltip; ?>"><i class="fa fa-cloud-download"></i></span>
			<span style="margin: 0 15px;" class="fpd-save-pdf fpd-tooltip" title="<?php echo $pdf_tooltip; ?>"><i class="fa fa-file-o"></i></span>
			<span class="fpd-print fpd-tooltip" title="<?php echo $print_tooltip; ?>"><i class="fa fa-print"></i></span>
                        <span style="margin: 0 15px;" class="fpd-save-product fpd-tooltip" title="<?php echo $save_product_tooltip; ?>"><i class="fa fa-floppy-o"></i></span>
			<div class="fpd-saved-products fpd-border-color fpd-tooltip" title="<?php echo $saved_products_tooltip; ?>">
				<i class="fa fa-th-list"></span></i>
				<div class="menu"></div>
			</div>
			
			<a href="" download="" target="_blank" class="fpd-download-anchor" style="display: none;"></a>
		</div>
	</div>
	<!-- Kinetic Stage -->
	<div class="fpd-product-stage fpd-border-color">
		<canvas></canvas>
		<div class="fpd-element-tooltip fpd-border-color fpd-secondary-bg-color fpd-primary-text-color"></div>
	</div>
</section>