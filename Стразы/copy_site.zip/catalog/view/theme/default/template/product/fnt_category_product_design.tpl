<?php echo $header; ?>

<style>
	.fpd-navigation .fpd-nav-item{
		color:<?php echo $config_designs_color_icon;?>;
                width:50%;
	}
	.fpd-menu-bar{
		color:<?php echo $config_designs_color_icon;?>
	}
	.fpd-primary-bg-color{
		background-color:<?php echo $config_designs_color_sidebar;?>
	}
	.fpd-navigation .active{
		color:<?php echo $config_designs_color_sidebar;?>;
	}
	<?php if(isset($image_background)){ ?>
		.fpd-product-container > .fpd-product-stage{
			background-image:url(<?php echo $image_background;?>);
		}
	<?php }?>
	<?php if(isset($color_background)){ ?>
		.fpd-product-stage{
			background-color:<?php echo $color_background;?>;
		}
	<?php }?>
	<?php if($config_designs_responsive){?>
		.fpd-sidebar{position:static !important;}
		.fpd-container .fpd-product-container{position:static !important;}
	<?php }?>
	<?php if($theme == 'icon-sb-left'){?>
		.fpd-product-container{left:<?php echo $config_designs_sidebar_content_width + 10;?>px}
	<?php } elseif($theme == 'icon-sb-right'){?>
		.fpd-container{position:relative}
		.fpd-product-container{position:absolute;left:0;}
		.fpd-icon-sb-right .fpd-sidebar > div{float:none;}
		.fpd-icon-sb-right .fpd-product-container{margin:0;}
		.fpd-sidebar{position:absolute;right:-<?php echo $config_designs_sidebar_content_width + 10;?>px}
	<?php }elseif($theme == 'icon-sb-top' || $theme == 'icon-sb-bottom'){?>
		.fpd-sidebar{position:static;margin-bottom:10px !important;}
		.fpd-navigation{margin-bottom:4px !important;}
		.fpd-product-container{position:static;}
		.fpd-sidebar > .fpd-navigation > .fpd-nav-item{width:25% !important;padding:0 !important}
		.fpd-nav-item{line-height:25px !important;}
		.fpd-navigation-product a, .fpd-navigation-upload .fpd-nav-item{padding: 0 !important;width: 50% !important;}
		.fpd-navigation-product{height:27px !important}
		div .fpd-navigation-product, div .fpd-navigation-upload{margin-top:0;}
		div .fpd-navigation-product, div .fpd-navigation-upload{height:26px;}
		.fpd-products .fpd-items-wrapper, .fpd-user-photos .fpd-items-wrapper{float: left;height: 22px;position: relative;width:100%;}
	<?php } elseif($theme == 'semantic'){?>			
		.fpd-sidebar, .fpd-product-container{position:static;}
		.fpd-sidebar .fpd-content{margin-top:10px;}
		#clothing-designer{margin:0 auto;}
	<?php }?>
</style>
<script type="text/javascript">
    jQuery(document).ready(function () {
	  var customImagesParams = jQuery.extend(
   	{
		"x":<?php echo $config_designs_parameter_x;?>,
		"y":<?php echo $config_designs_parameter_y;?>,
		"z":<?php echo $config_designs_parameter_z;?>,
		"price":<?php echo $config_designs_parameter_price;?>,
		"colors":"<?php echo $config_designs_parameter_colors;?>",
		"autoCenter":<?php echo $config_designs_parameter_auto_center;?>,
		"draggable":<?php echo $config_designs_parameter_draggable;?>,
		"rotatable":<?php echo $config_designs_parameter_rotatable;?>,
		"resizable":<?php echo $config_designs_parameter_resizable;?>,
		"zChangeable":<?php echo $config_designs_parameter_zchangeable;?>,
		"replace":'<?php echo $config_designs_parameter_replace;?>',
		"removable":<?php echo $config_designs_parameter_remove;?>,
		"autoSelect":<?php echo $config_designs_parameter_autoselect;?>,
		<?php if($config_designs_parameter_aboundingbox){?>
			"boundingBox":<?php echo $config_designs_parameter_aboundingbox;?>,
		<?php }?>	
		"boundingBoxClipping":<?php echo $config_designs_parameter_clipping;?>
	},
	{
   		minW: <?php echo $config_designs_min_width;?>,
   		minH: <?php echo $config_designs_min_height;?>,
   		maxW: <?php echo $config_designs_max_width;?>,
   		maxH: <?php echo $config_designs_max_height;?>,
   		resizeToW: <?php echo $config_designs_resize_width;?>,
   		resizeToH: <?php echo $config_designs_resize_height;?>							
   	}
   	);
   
   		//call fancy product designer plugin
   		 var yourDesigner = jQuery('#clothing-designer').fancyProductDesigner({
   			uploadDesigns: <?php echo $config_designs_upload_designs;?>,
   			customTexts:  <?php echo $config_designs_upload_text;?>,
			layout: "<?php echo $theme;?>",
			//layout: "icon-sb-bottom",
   			imageDownloadable: <?php echo $config_designs_download_image;?>,
   			saveAsPdf: <?php echo $config_designs_pdf_button;?>,
   			printable: <?php echo $config_designs_print_button;?>,
   			allowProductSaving: <?php echo $config_designs_allow_product_saving;?>,
   			resettable: <?php echo $config_designs_reset_table;?>,
   			fontDropdown: <?php echo $config_designs_font_dropdown;?>,
   			fonts: [<?php echo $fonts;?>],
   			templatesDirectory: "<?php echo $domain;?>index.php?route=fancy_design/",
   			phpDirectory: "<?php echo $domain;?>catalog/controller/product/fancy_design/",
			<?php if($config_designs_facebook_app_id){?>
				facebookAppId: "<?php echo $config_designs_facebook_app_id;?>",
			<?php }?>
			<?php if($config_designs_instagram_client_id){?>
				instagramClientId: "<?php echo $config_designs_instagram_client_id;?>",
			<?php }?>	
			<?php if($config_designs_instagram_redirect_uri){?>
				instagramRedirectUri: "<?php echo $config_designs_instagram_redirect_uri;?>",
			<?php }?>	
   			viewSelectionFloated: <?php echo $config_designs_view_selection_float;?>,
   			zoomFactor: <?php echo $config_designs_zoom;?>,
   			zoomRange: [<?php echo $config_designs_zoom_min;?>, <?php echo $config_designs_zoom_max;?>],
   			defaultText: "<?php echo $config_designs_text_text_default;?>",
   			tooltips: <?php echo $config_designs_view_tooltip;?>,
   			hexNames: {},
   			patterns: ["<?php echo implode('", "', $patterns); ?>"],
   			selectedColor:  "<?php echo $config_designs_selected_color;?>",
   			boundingBoxColor:  "<?php echo $config_designs_bounding_color;?>",
   			outOfBoundaryColor:  "<?php echo $config_designs_out_boundary_color;?>",
   			elementParameters: {
   				originX: "center",
   				originY: "center"
   			},
   			customImagesParameters: customImagesParams,
   			customTextParameters: 
			{
				"x":<?php echo $config_designs_text_x_position;?>,
				"y":<?php echo $config_designs_text_y_position;?>,
				"z":<?php echo $config_designs_text_z_position;?>,
				"colors":"<?php echo $config_designs_text_design_color;?>",
				"price":<?php echo $config_designs_text_design_price;?>,
				"autoCenter":<?php echo $config_designs_text_auto_center;?>,
				"draggable":<?php echo $config_designs_text_draggable;?>,
				"rotatable":<?php echo $config_designs_text_rotatable;?>,
				"patternable":<?php echo $patternable;?>,
				"resizable":<?php echo $config_designs_text_resizeable;?>,
				"zChangeable":<?php echo $config_designs_text_zchangeable;?>,
				"autoSelect":<?php echo $config_designs_text_autoselected;?>,
				"removable":<?php echo $config_designs_text_remove;?>,
				"textSize":<?php echo $config_designs_default_text_size;?>,
				"maxLength":<?php echo $config_designs_text_text_characters;?>,
				"curvable":<?php echo $config_designs_text_curved;?>,
				<?php if($config_designs_text_aboundingbox){?>
					"boundingBox":<?php echo $config_designs_text_aboundingbox;?>,
				<?php }?>	
				"boundingBoxClipping":<?php echo $config_designs_text_clipping;?>
			},
   			dimensions: {
				<?php if($theme == 'icon-sb-left' || $theme == 'icon-sb-right'){?>
					sidebarNavSize: <?php echo $config_designs_sidebar_content_width;?>,
					sidebarSize: <?php echo $config_designs_sidebar_height;?>,
				<?php } else {?>
					sidebarSize:<?php echo $config_designs_stage_width;?>,
				<?php }?>
				sidebarContentWidth: <?php echo $config_designs_sidebar_content_width;?>,
   				productStageWidth: <?php echo $config_designs_stage_width;?>,
   				productStageHeight: <?php echo $config_designs_stage_height;?>
			},
   			labels: { //different labels used for the UI
   				outOfContainmentAlert: "<?php echo $text_out_of_containment;?>",
   				confirmProductDelete: "<?php echo $text_confirm_product_delete;?>",
   				colorpicker : {
   					cancel: "<?php echo $text_cancel;?>",
   					change: "<?php echo $text_change;?>"
   				},
   				uploadedDesignSizeAlert: "<?php echo $text_error_upload_size;?>",
   				initText: "<?php echo $text_init_text;?>",
   				myUploadedImgCat: "<?php echo $text_my_upload_image;?>"
   			},
   			sidebarLabels: { //all labels in the sidebar
   				designsMenu: "<?php echo $text_design_menu;?>",
   				editElementsMenu: "<?php echo $text_edit_element_menu;?>",
   				fbPhotosMenu: "<?php echo $text_fb_photo_menu;?>",

   				instaPhotosMenu: "<?php echo $text_insta_photo_menu;?>",
   				editElementsHeadline: "<?php echo $text_edit_element_headline;?>",
   				editElementsDropdownNone: "<?php echo $text_edit_element_dropdown_none;?>",
   				sectionFilling: "<?php echo $text_section_filling;?>",
   				sectionFontsStyles: "<?php echo $text_section_font_style;?>",
   				sectionCurvedText: "<?php echo $text_section_curved_text;?>",
   				sectionHelpers: "<?php echo $text_section_helpers;?>",
   				textAlignLeft: "<?php echo $text_align_left;?>",
   				textAlignCenter: "<?php echo $text_align_center;?>",
   				textAlignRight: "<?php echo $text_align_right;?>",
   				textBold: "<?php echo $text_bold;?>",
   				textItalic: "<?php echo $text_italic;?>",
   				curvedTextInfo: "<?php echo $text_curved_text_info;?>",
   				curvedTextSpacing: "<?php echo $text_curved_text_spacing;?>",
   				curvedTextRadius: "<?php echo $text_curved_text_radius;?>",
   				curvedTextReverse: "<?php echo $text_curved_text_reverse;?>",
   				curvedTextToggle: "<?php echo $text_text_toggle;?>",
   				centerH: "<?php echo $text_center_h;?>",
   				centerV: "<?php echo $text_center_v;?>",
   				moveDown: "<?php echo $text_move_down;?>",
   				moveUp: "<?php echo $text_move_up;?>",
   				reset: "<?php echo $text_reset;?>",
   				fbPhotosHeadline: "<?php echo $text_reset;?>",
   				fbSelectFriend: "<?php echo $text_fb_select_friend;?>",
   				fbSelectAlbum: "<?php echo $text_fb_select_album;?>",
   				instaPhotosHeadline: "<?php echo $text_insta_photo_headline;?>",
   				instaFeedButton: "<?php echo $text_insta_feed_button;?>",
   				instaRecentImagesButton: "<?php echo $text_insta_recent_image_button;?>",
   				instaLoadNext: "<?php echo $text_insta_load_next;?>"
   			},
   			productStageLabels: { //all labels in the product stage
   				addImageTooltip: "<?php echo $text_add_image_tooltip;?>",
   				addTextTooltip: "<?php echo $text_add_text_tooltip;?>",
   				zoomInTooltip: "<?php echo $text_zoom_in_tooltip;?>",
   				zoomOutTooltip: "<?php echo $text_zoom_out_tooltip;?>",
   				zoomResetTooltip: "<?php echo $text_zoom_reset_tooltip;?>",
   				downloadImageTooltip: "<?php echo $text_download_image_tooltip;?>",
   				printTooltip: "<?php echo $text_print_tooltip;?>",
   				pdfTooltip: "<?php echo $text_pdf_tooltip;?>",
   				saveProductTooltip: "<?php echo $text_save_product_tooltip;?>",
   				savedProductsTooltip: "<?php echo $text_save_products_tooltip;?>",
   				resetTooltip: "<?php echo $text_reset_tooltip;?>"
   			}
   		}).data('fancy-product-designer');
    var wcPrice = <?php echo $price;?>, currencyPrice = <?php echo $currency_value;?>,fntPrice = 0;
    //event handler when the price is changing
    $('#clothing-designer').bind('priceChange', function (evt, price, currentPrice) {
		fntPrice = currentPrice;
		_setTotalPrice();
    });
	var product_design_active = 0;
	$('#clothing-designer').on('productCreate', function() {
		productCreated = true;
                //zdv не вызываем обработку цены при первом заходе в конструктор
		//_setTotalPrice();
		<?php if($theme == 'icon-sb-left' || $theme == 'icon-sb-right'){?>
			$('.fpd-sidebar').height($('.fpd-product-container').height());
		<?php }?>
                                    
	});
	//Get options and price for product 
		$(document).on('click', '.fpd-products picture', function() {
			if($(this).index() != product_design_active){
				var product_design_id = $(this).attr('class');
				$('.breadcrumb h1').html($(this).find('img').attr('title'));
				
				$.ajax({
					url: 'index.php?route=product/fnt_category_product_design/loadProductDetail&product_design_id=' + product_design_id,
					type: 'post',
					dataType: 'json',
					success: function (json) {
						$('#product .options').html(json['option']);
						$('.date').datetimepicker({
							pickTime: false
						});
						$('.datetime').datetimepicker({
							pickDate: true,
							pickTime: true
						});
						$('.time').datetimepicker({
							pickDate: false
						});
						$('input[name="product_design_id"]').val(json['product_design_id']);
						$('input[name="product_id"]').val(json['product_id']);
						$('input[name="quantity"]').val(json['minimum']);
						wcPrice = parseFloat(json['price_product']);
						_setTotalPrice();
					}
				});	
				product_design_active = $(this).index();
				product_design_id_active = $(this).attr('class');
			}
		});
	//Get product info and options for product saved
		$(document).on('click', '.fpd-saved-products .menu .item > img', function() {
			var info_save = $(this).attr('data-parameter');
			if(info_save){
				info_save = info_save.split(":");
			}
			$('.breadcrumb h1').html($(this).attr('title'));
			$.ajax({
				url: 'index.php?route=product/fnt_category_product_design/loadProductDetail&product_design_id=' + info_save[0],
                type: 'post',
                dataType: 'json',
                success: function (json) {
					$('#product .options').html(json['option']);
					$('.date').datetimepicker({
							pickTime: false
						});
						$('.datetime').datetimepicker({
							pickDate: true,
							pickTime: true
						});
						$('.time').datetimepicker({
							pickDate: false
						});
					$('input[name="product_design_id"]').val(json['product_design_id']);
					$('input[name="product_id"]').val(json['product_id']);
					$('input[name="quantity"]').val(json['minimum']);
					product_design_active = -1;
					product_design_id_active = info_save[0];
					$('#thsirt-price').text((parseFloat(info_save[1])*parseFloat(currencyPrice)).toFixed(<?php echo $decimal_place;?>));
					$('input[name="product_price"]').val(info_save[1]);
					wcPrice = parseFloat(json['price_product']);
                }
            });	
		});
	function _setTotalPrice() {

//        alert(wcPrice)
            //zdv показываем кнопку с ценой    
            if(wcPrice != (fntPrice)+parseFloat(wcPrice)){
                $('#thsirt-price').parents('li').css('visibility','visible');
            }else{
                $('#thsirt-price').parents('li').css('visibility','hidden');
            }
            
            $('#thsirt-price').text((parseFloat(fntPrice*currencyPrice)+parseFloat(wcPrice*currencyPrice)).toFixed(<?php echo $decimal_place;?>));
            $('input[name="product_price"]').val((fntPrice)+parseFloat(wcPrice));
	}
	 $('#clothing-designer').on('ready', function() {
	   <?php if(isset($design)){?>
		   views = <?php echo $design;?>;
		//   yourDesigner.addProduct(views);
		   yourDesigner.clear();
		   yourDesigner.loadProduct(views);
	   <?php }?>
	 });
    //send image via mail
    $('#send-image-mail-php').click(function () {
        $.post("php/send_image_via_mail.php", { base64_image: yourDesigner.getProductDataURL()});
    });
	 $('#button-cart').on('click', function () { 
		if(!productCreated) { return false; }
            var product = yourDesigner.getProduct();
            if (product != false) {
                $('input[name="fpd_product"]').val(encodeURIComponent(JSON.stringify(product)));
				_setTotalPrice();
				//Add thumbnail for product design when add to cart
				thumbnail = yourDesigner.getViewsDataURL('png', 'transparent', 0.2)[0];
                $('input[name="fpd_thumbnail"]').val(thumbnail);
				$.ajax({
					url: 'index.php?route=checkout/fnt_cart/addDesign',
					type: 'post',
					data: $('#product input[type=\'text\'], #product input[type=\'date\'], #product input[type=\'datetime-local\'], #product input[type=\'time\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
					dataType: 'json',
					beforeSend: function() {
						$('#button-cart').button('loading');
					},
					complete: function() {
						$('#button-cart').button('reset');
					},
					success: function (json) {
						$('.alert, .text-danger').remove();
						$('.form-group').removeClass('has-error');
						if (json['error']) {
							if (json['error']['option']) {
								for (i in json['error']['option']) {
									var element = $('#input-option' + i.replace('_', '-'));
									
									if (element.parent().hasClass('input-group')) {
										element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
									} else {
										element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
									}
								}
							}
							
							if (json['error']['recurring']) {
								$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
							}
							
							// Highlight any found errors
							$('.text-danger').parent().addClass('has-error');
						}
						if (json['success']) {
							$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
							$('#cart-total').html(json['total']);
							
							$('html, body').animate({ scrollTop: 0 }, 'slow');
							
							$('#cart > ul').load('index.php?route=common/cart/info ul li');
						}
					}
				});	
            }
        });
		
		//Save product design ideas by admin
		<?php if(isset($user_id)){?>
			$('#button-save-admin').on('click', function () { 
				if(!productCreated) { return false; }
			   base64_image = yourDesigner.getProduct();
			   if(base64_image != false){
				   $.post("index.php?route=product/fnt_category_product_design/editDesignCustomerAprroved&product_customer_idea_accept_id=<?php echo $product_customer_idea_accept_id;?>", { base64_image: encodeURIComponent(JSON.stringify(base64_image))},function(data){
					if(data){
						$('.success').remove();
						$('#button-save-admin').after('<p class="success">' + data['success'] + '</p>');
					}
				   },'json');
				} 
			});
		<?php }?>
		var product_design_id_active = <?php echo $product_design_id;?>;
		//save link design 
	   $('#button-share-design').on('click', function(){
		   if(!productCreated) { return false; }
		   base64_image = yourDesigner.getProduct();
		   if(base64_image != false){
			   $.post("index.php?route=product/fnt_category_product_design/saveDesignCustomer&product_design_id=" + product_design_id_active, { base64_image: encodeURIComponent(JSON.stringify(base64_image))},function(data){
				if(data){
					$('.link-share').remove();
							$('.product-design-info > div:first').append('<textarea style="width:97%;height:65px" selected="selected" class="link-share">' + data['success'] + '</textarea>');
							$('.link-share').focus();
							$('.link-share').select();
				}
			   },'json');
			} 
		   });	
		   //save design to account customer
		  $('#login_popup').on('click',function () {
			if(!productCreated) { return false; }
			base64_image = yourDesigner.getProduct();
			if(base64_image != false){
				$.post("index.php?route=product/fnt_category_product_design/saveProductDesignSession&product_design_id=" + product_design_id_active, { base64_image: encodeURIComponent(JSON.stringify(base64_image))});
			}
		 });
		   
		   //share facebook image
		$('#button-share-fb').click(function(){
		   $.post( "index.php?route=product/fnt_category_product_design/creatImageShare", { base64_image: yourDesigner.getProductDataURL()},function(data){
			if(data){
				window.open('https://www.facebook.com/share.php?u=' + data['url']+'&title=<?php echo $heading_title;?>');
			}
		   },'json');
		   return false;
		});
		
		$('.popup-content').perfectScrollbar();
		$('#show-popup').click(function(){
		if(!productCreated) { return false; }
            var product = yourDesigner.getProduct();
            if (product != false) {
				var base64_image = yourDesigner.getProductDataURL();
				$.ajax({
					url: 'index.php?route=product/fnt_category_product_design/validateOption',
					type: 'post',
					data: $('#product input[type=\'text\'], #product input[type=\'date\'], #product input[type=\'datetime-local\'], #product input[type=\'time\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
					dataType: 'json',
					beforeSend: function() {
						$('#show-popup').button('loading');
					},
					complete: function() {
						$('#show-popup').button('reset');
					},
					success: function (json) {
						$('.alert, .text-danger').remove();
						$('.form-group').removeClass('has-error');
						if (json['error']) {
							if (json['error']['option']) {
								for (i in json['error']['option']) {
									var element = $('#input-option' + i.replace('_', '-'));
									
									if (element.parent().hasClass('input-group')) {
										element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
									} else {
										element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
									}
								}
							}
							
							if (json['error']['recurring']) {
								$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
							}
							// Highlight any found errors
							$('.text-danger').parent().addClass('has-error');
						} else {
							$('#modal-popup').remove();
							html  = '<div id="modal-popup" class="modal">';
							html += '  <div class="modal-dialog">';
							html += '    <div class="modal-content">';
							html += '      <div class="modal-header text-center">';
							html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
//							html += '        <h4 class="modal-title"><input type="checkbox" name="accept_design" /> <?php echo $text_confirm_design;?>.</h4>';
//							html += '        <div class="row button-accept"><button disabled="disabled" class="btn btn-primary" id="add-to-cart-popup">Добавить в корзину</button><button class="btn btn-primary" id="close-popup">Вернуться в конструктор дизайна</button></div>';
							html += '        <div class="row button-accept"><button class="btn btn-primary" id="add-to-cart-popup">Подтвердить заказ</button><button class="btn btn-primary btn-success" id="close-popup">Вернуться в конструктор</button></div>';
							html += '      </div>';
							html += '      <div class="modal-body"><img style="max-width:100%;" src="' + base64_image + '" /></div>';
							html += '    </div';
							html += '  </div>';
							html += '</div>';
							
							$('body').append(html);

							$('#modal-popup').modal('show');
						}
					}
				});
			}	
		});
		$(document).on('change', 'input[name=\'accept_design\']', function(){
			if($(this).is(':checked')){
				$('#add-to-cart-popup').removeAttr('disabled', 'disabled'); 
			} else {
				$('#add-to-cart-popup').attr('disabled','disabled');
			}
		});
		
		$(document).on('click', '#close-popup', function(){
			$('.close').click();
		});
		$(document).on('click', '#add-to-cart-popup', function(){
			$('#button-cart').click();
			$('.close').click();
		});               
});	
</script>
<div class="container">
<div align="center">
 <nav id="menusu" class="navbar">
<div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
<!--<li><a href="#" onclick="history.back(-2);" > ДРУГОЙ ЦВЕТ ФУТБОЛКИ</a></li>-->
<!--<li><a href="http://ceostore.ru/kak_sozdat_tovar.html" target="_blank" >НУЖНА ПОМОЩЬ?</a></li>-->
<li><a href="/index.php?route=information/information&information_id=7" target="_blank" >НУЖНА ПОМОЩЬ?</a></li>
<li style="visibility:hidden"><a href="#" >ЦЕНА - <?php echo $curency_code_left;?><span id="thsirt-price"> </span> <?php echo $curency_code_right;?></a></li>
<li><a href="/nanesenie-straz" target="_blank" >ОПИСАНИЕ ТЕХНОЛОГИИ</a></li>
<!--<li><a href="javascript:void(0)" style="box-shadow:none; background:none; cursor:default"></a></li>-->


</ul></div></nav></div>	

    

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
	<?php echo $column_right; ?>
<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>	
   
<div id="clothing-designer" <?php //echo ($config_designs_responsive) ? '' : 'style="max-width:'.$config_designs_stage_max_width.'px"';?> >
    <?php if($products_design){?>
		<?php foreach($products_design as $product_design){?>
			<div class="fpd-product" id="qwe1" data-parameters="<?php echo $product_design['product_design_id'];?>" data-zdv_category_design_id="<?php echo $product_design['category_design_id'];?>" title="<?php echo $product_design['name'];?>" data-thumbnail="<?php echo $product_design['image'];?>">
			<?php if(isset($product_design['first_element']['children']) && $product_design['first_element']['children']){?>
				<?php foreach($product_design['first_element']['children'] as $children){?>
					<?php if($children['type'] == 'image'){?>
						<img src="<?php echo $children['value'];?>" title="<?php echo $children['title'];?>" data-parameters='<?php echo $children['parameters'];?>' />
					<?php } else {?>
						<span title="<?php echo $children['title'];?>" data-parameters='<?php echo $children['parameters'];?>' ><?php echo $children['value'];?></span>
					<?php }?>
				<?php }?>
			<?php }?>
			<?php if($product_design['children']){?>
				<?php foreach($product_design['children'] as $children){?>
					<div class="fpd-product" title="<?php echo $children['name'];?>" data-thumbnail="<?php echo $children['image'];?>">
					<?php if($children['children']){?>
						<?php foreach($children['children'] as $child){?>
							<?php if($child['type'] == 'image'){?>
								<img src="<?php echo $child['value'];?>" title="<?php echo $child['title'];?>" data-parameters='<?php echo $child['parameters'];?>' />
							<?php } else {?>
								<span title="<?php echo $child['title'];?>" data-parameters='<?php echo $child['parameters'];?>' ><?php echo $child['value'];?></span>
							<?php }?>
						<?php }?>
					<?php }?>
					</div>
				<?php }?>
			<?php } ?>
			</div>
		<?php }?>
    <?php }?>
 	 <?php if($product_ideas){?>
		<?php foreach($product_ideas as $product_idea){?>
			<div class="<?php echo $group_class;?>" data-parameters="<?php echo $product_idea['product_design_id'];?>" title="<?php echo $product_idea['name'];?>" data-thumbnail="<?php echo $product_idea['image'];?>">
			<?php if(isset($product_idea['first_element']['children']) && $product_idea['first_element']['children']){?>
				<?php foreach($product_idea['first_element']['children'] as $children){?>
					<?php if($children['type'] == 'image'){?>
						<img src="<?php echo $children['value'];?>" title="<?php echo $children['title'];?>" data-parameters='<?php echo $children['parameters'];?>' />
					<?php } else {?>
						<span title="<?php echo $children['title'];?>" data-parameters='<?php echo $children['parameters'];?>' ><?php echo $children['value'];?></span>
					<?php }?>
				<?php }?>
			<?php }?>
			<?php if($product_idea['children']){?>
				<?php foreach($product_idea['children'] as $children){?>
					<div class="<?php echo $group_class;?>" title="<?php echo $children['name'];?>" data-thumbnail="<?php echo $children['image'];?>">
					<?php if($children['children']){?>
						<?php foreach($children['children'] as $child){?>
							<?php if($child['type'] == 'image'){?>
								<img src="<?php echo $child['value'];?>" title="<?php echo $child['title'];?>" data-parameters='<?php echo $child['parameters'];?>' />
							<?php } else {?>
								<span title="<?php echo $child['title'];?>" data-parameters='<?php echo $child['parameters'];?>' ><?php echo $child['value'];?></span>
							<?php }?>
						<?php }?>
					<?php }?>
					</div>
				<?php }?>
			<?php } ?>
			</div>
		<?php }?>
    <?php }?>
    <?php if($cliparts && !$hide_designs_tab){?>
		<div class="fpd-design">
			<?php foreach($cliparts as $key => $clipart){?>
			<?php if($clipart['children']){?>
			 <div class="fpd-category" title="<?php echo $clipart['name'];?>" id="<?php echo $clipart['category_clipart_id'];?>">
			<?php foreach($clipart['children'] as $child){?>
			<img src="<?php echo $child['image'];?>" title="<?php echo $child['name'];?>" data-parameters='<?php echo $child['parameters'];?>' />
			<?php }?>
			</div>
			<?php }?>
			<?php }?>
		</div>
    <?php }?>
</div>
</div>
<div class="product-design-info row">
 <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
		<div class="<?php echo $class; ?> text-center">
		<?php if(isset($user_id)){?>
			<h3 class="price"><?php echo $curency_code_left;?><span id="thsirt-price"></span> <?php echo $curency_code_right;?></h3>
			<input type="button" value="<?php echo $text_save_design;?>" class="btn btn-primary" id="button-save-admin" />
		<?php } else {?>

		</div>


	<div id="product" class="col-sm-12">
			<div class="cart form-group">
			 <input type="hidden" value="" name="fpd_product"/>
			 <input type="hidden" value="" name="fpd_thumbnail"/>
				<input type="hidden" value="" name="product_price"/>
				<input type="hidden" value="<?php echo $price;?>" name="product_price_base"/>
				<input type="hidden" value="<?php echo $currency;?>" name="currency"/>
				<input type="hidden" id="product_design_id" value="<?php echo $product_design_id;?>" name="product_design_id"/>
			<div>
	
		
			<div class="options"> 
				 <?php if ($options) { ?>
					
					<h3><?php echo $text_option; ?></h3>
					<?php foreach ($options as $option) { ?>
					<?php if ($option['type'] == 'select') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($option['product_option_value'] as $option_value) { ?>
						<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
						</option>
						<?php } ?>
					  </select>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'radio') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label"><?php echo $option['name']; ?></label>
					  <div id="input-option<?php echo $option['product_option_id']; ?>">
						<?php foreach ($option['product_option_value'] as $option_value) { ?>
						<div class="radio">
						  <label>
							<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							<?php echo $option_value['name']; ?>
							<?php if ($option_value['price']) { ?>
							(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							<?php } ?>
						  </label>
						</div>
						<?php } ?>
					  </div>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'checkbox') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label"><?php echo $option['name']; ?></label>
					  <div id="input-option<?php echo $option['product_option_id']; ?>">
						<?php foreach ($option['product_option_value'] as $option_value) { ?>
						<div class="checkbox">
						  <label>
							<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							<?php echo $option_value['name']; ?>
							<?php if ($option_value['price']) { ?>
							(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							<?php } ?>
						  </label>
						</div>
						<?php } ?>
					  </div>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'image') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label"><?php echo $option['name']; ?></label>
					  <div id="input-option<?php echo $option['product_option_id']; ?>">
						<?php foreach ($option['product_option_value'] as $option_value) { ?>
						<div class="radio">
						  <label>
							<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
							<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
							<?php if ($option_value['price']) { ?>
							(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
							<?php } ?>
						  </label>
						</div>
						<?php } ?>
					  </div>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'text') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'textarea') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'file') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label"><?php echo $option['name']; ?></label>
					  <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
					  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'date') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <div class="input-group date">
						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
						</span></div>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'datetime') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <div class="input-group datetime">
						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
					</div>
					<?php } ?>
					<?php if ($option['type'] == 'time') { ?>
					<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
					  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
					  <div class="input-group time">
						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
					</div>
					<?php } ?>
					<?php } ?>
					<?php } ?>
			 </div> 	
				<div class="form-group">                  
					<label class="control-label"><?php echo $entry_qty;?> </label>
					<input id="qty" type="text" class="form-control" name="quantity" size="2" value="<?php echo (isset($minimum)) ? $minimum : 0 ;?>" />        
					<input type="hidden" id="product_id" name="product_id" size="2" value="<?php echo $product_id;?>" />
					<div class="clear"></div><br>
					
					<?php if(!$config_designs_show_popup_view){?>
						<input type="button" value="<?php echo $text_order;?>" class="btn btn-primary btn-lg btn-block" data-loading-text="Loading..." id="button-cart" />
					<?php } else {?>
						<input type="button" style="display:none;" value="<?php echo $text_order;?>" class="button" id="button-cart" />
						<input type="button" value="<?php echo $text_order;?>" class="btn btn-primary btn-lg btn-block" data-loading-text="Loading..." id="show-popup" />
					<?php }?>	
				</div>	
			</div>
			
		  </div>
		</div>
	<?php }?>
</div>
<?php echo $content_bottom; ?></div></div>
</div>
<script type="text/javascript"><!--
	$('.date').datetimepicker({
		pickTime: false
	});

	$('.datetime').datetimepicker({
		pickDate: true,
		pickTime: true
	});

	$('.time').datetimepicker({
		pickDate: false
	});
	$(document).on('click','button[id^=\'button-upload\']', function() {
		var node = this;
		
		$('#form-upload').remove();
		
		$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
		
		$('#form-upload input[name=\'file\']').trigger('click');
		
		timer = setInterval(function() {
			if ($('#form-upload input[name=\'file\']').val() != '') {
				clearInterval(timer);
				
				$.ajax({
					url: 'index.php?route=tool/upload',
					type: 'post',
					dataType: 'json',
					data: new FormData($('#form-upload')[0]),
					cache: false,
					contentType: false,
					processData: false,
					beforeSend: function() {
						$(node).button('loading');
					},
					complete: function() {
						$(node).button('reset');
					},
					success: function(json) {
						$('.text-danger').remove();
						
						if (json['error']) {
							$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
						}
						
						if (json['success']) {
							alert(json['success']);
							
							$(node).parent().find('input').attr('value', json['code']);
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}
		}, 500);
	});
//--></script> 
<?php echo $footer; ?>