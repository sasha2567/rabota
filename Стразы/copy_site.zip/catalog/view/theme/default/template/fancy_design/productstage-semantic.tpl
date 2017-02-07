<section class="fpd-product-container">
	<!-- Menu -->
	<div class="fpd-menu-bar big ui icon buttons">
		<span class="fpd-add-image ui teal button fpd-tooltip" title="<?php echo $add_image_tooltip; ?>"><i class="fa fa-image icon"></i></span>
		<span class="fpd-add-text ui black button fpd-tooltip" title="<?php echo $add_text_tooltip; ?>"><i class="fa fa-font icon"></i></span>
		<span class="fpd-zoom-in ui button fpd-tooltip" title="<?php echo $zoom_in_tooltip; ?>"><i class="fa fa-search-plus icon"></i></span>
		<span class="fpd-zoom-out ui button fpd-tooltip" title="<?php echo $zoom_out_tooltip; ?>"><i class="fa fa-search-minus icon"></i></span>
		<span class="fpd-zoom-reset ui button fpd-tooltip" title="<?php echo $zoom_reset_tooltip; ?>"><i class="fa fa-search icon"></i></span>
		<span class="fpd-download-image ui button fpd-tooltip" title="<?php echo $download_image_tooltip; ?>"><i class="fa fa-cloud-download icon"></i></span>
		<span class="fpd-save-pdf ui button fpd-tooltip" title="<?php echo $pdf_tooltip; ?>"><i class="fa fa-file-o icon"></i></span>
		<span class="fpd-print ui button fpd-tooltip" title="<?php echo $print_tooltip; ?>"><i class="fa fa-print icon"></i></span>
		<span class="fpd-save-product ui button fpd-tooltip" title="<?php echo $save_product_tooltip; ?>"><i class="fa fa-floppy-o icon"></i>	</span>
		<div class="fpd-saved-products ui button dropdown fpd-tooltip" title="<?php echo $saved_products_tooltip; ?>">
			<i class="fa fa-th-list icon"></i>
			<div class="menu"></div>
		</div>
		<span class="fpd-reset-product ui button fpd-tooltip" title="<?php echo $reset_tooltip; ?>"><i class="fa fa-refresh icon"></i></span>
		<a href="" download="" target="_blank" class="fpd-download-anchor" style="display: none;"></a>
		<form class="fpd-upload-form" style="display: none;">
			<input type="file" class="fpd-input-image" name="uploaded_file"  />
		</form>
	</div>
	<!-- Fabric Stage -->
	<div class="fpd-product-stage ui primary segment">
		<canvas></canvas>
		<div class="fpd-element-tooltip ui popup top left"></div>
	</div>
</section>