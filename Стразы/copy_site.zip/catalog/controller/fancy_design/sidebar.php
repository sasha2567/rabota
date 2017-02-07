<?php  
class ControllerFancyDesignSidebar extends Controller {
	public function index() { 
		$this->load->language('fancy_design/sidebar');
		$data['products_menu'] = $this->language->get('products_menu');
		$data['choose_products_menu'] = $this->language->get('choose_products_menu');
		$data['designs_menu'] = $this->language->get('designs_menu');
		$data['choose_designs_menu'] = $this->language->get('choose_designs_menu');
		$data['elements_menu'] = $this->language->get('elements_menu');
		$data['edit_elements_menu'] = $this->language->get('edit_elements_menu');
		$data['photos_menu'] = $this->language->get('photos_menu');
		$data['user_photos_menu'] = $this->language->get('user_photos_menu');	
		$data['fb_photos_menu'] = $this->language->get('fb_photos_menu');
		$data['insta_photos_menu'] = $this->language->get('insta_photos_menu');
		$data['products_ideas'] = $this->language->get('products_ideas');
		$data['fb_photos'] = $this->language->get('fb_photos');
		$data['insta_photos'] = $this->language->get('insta_photos');
		$data['edit_elements_headline'] = $this->language->get('edit_elements_headline');
		$data['edit_elements_dropdown_none'] = $this->language->get('edit_elements_dropdown_none');
		$data['section_filling'] = $this->language->get('section_filling');
		$data['section_fonts_styles'] = $this->language->get('section_fonts_styles');
		$data['section_curved_text'] = $this->language->get('section_curved_text');
		$data['section_helpers'] = $this->language->get('section_helpers');
		$data['customize_text_align_left'] = $this->language->get('customize_text_align_left');
		$data['customize_text_align_center'] = $this->language->get('customize_text_align_center');
		$data['customize_text_align_right'] = $this->language->get('customize_text_align_right');
		$data['customize_text_bold'] = $this->language->get('customize_text_bold');
		$data['customize_text_italic'] = $this->language->get('customize_text_italic');
		$data['curved_text_info'] = $this->language->get('curved_text_info');
		$data['curved_text_spacing'] = $this->language->get('curved_text_spacing');
		$data['curved_text_radius'] = $this->language->get('curved_text_radius');
		$data['curved_text_reverse'] = $this->language->get('curved_text_reverse');
		$data['curved_text_toggle'] = $this->language->get('curved_text_toggle');
		$data['customize_center_h'] = $this->language->get('customize_center_h');
		$data['customize_center_c'] = $this->language->get('customize_center_c');
		$data['customize_center_move_down'] = $this->language->get('customize_center_move_down');
		$data['customize_center_move_up'] = $this->language->get('customize_center_move_up');
		
		$data['customize_reset'] = $this->language->get('customize_reset');
		$data['customize_center_trash'] = $this->language->get('customize_center_trash');
		$data['fb_photos_headline'] = $this->language->get('fb_photos_headline');
		$data['fb_select_friend'] = $this->language->get('fb_select_friend');
		$data['fb_select_album'] = $this->language->get('fb_select_album');
		$data['insta_photos_headline'] = $this->language->get('insta_photos_headline');
		$data['insta_feed_button'] = $this->language->get('insta_feed_button');
		$data['insta_recent_images_button'] = $this->language->get('insta_recent_images_button');
		$data['insta_load_next'] = $this->language->get('insta_load_next');
		$data['text_select_product'] = $this->language->get('text_select_product');
		
                //массив категорий футболок
                $this->load->model('catalog/fnt_product_design');
                $aFPCategories = $this->model_catalog_fnt_product_design->getDesignCategories();
                $data['design_categories']=$aFPCategories;
        
                
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/fancy_design/sidebar.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/fancy_design/sidebar.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/fancy_design/sidebar.tpl', $data));
		}
	}
}
?>