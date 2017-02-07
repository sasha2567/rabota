<?php  
class ControllerFancyDesignProductstage extends Controller {
	public function index() {
		$this->load->language('fancy_design/productstage');
		//labels
		$data['add_image_tooltip'] = $this->language->get('add_image_tooltip');
		$data['add_text_tooltip'] = $this->language->get('add_text_tooltip');
		$data['zoom_in_tooltip'] = $this->language->get('zoom_in_tooltip');
		$data['zoom_out_tooltip'] = $this->language->get('zoom_out_tooltip');
		$data['zoom_reset_tooltip'] = $this->language->get('zoom_reset_tooltip');
		$data['download_image_tooltip'] = $this->language->get('download_image_tooltip');
		$data['print_tooltip'] = $this->language->get('print_tooltip');
		$data['pdf_tooltip'] = $this->language->get('pdf_tooltip');
		$data['save_product_tooltip'] = $this->language->get('save_product_tooltip');
		$data['saved_products_tooltip'] = $this->language->get('saved_products_tooltip');
		$data['reset_tooltip'] = $this->language->get('reset_tooltip');
		
		$data['text_add_image'] = $this->language->get('text_add_image');
		$data['text_add_text'] = $this->language->get('text_add_text');
		$data['text_zoom_in'] = $this->language->get('text_zoom_in');
		$data['text_zoom_out'] = $this->language->get('text_zoom_out');
		$data['text_zoom_reset'] = $this->language->get('text_zoom_reset');
		$data['text_download_image'] = $this->language->get('text_download_image');
		$data['text_print'] = $this->language->get('text_print');
		$data['text_pdf'] = $this->language->get('text_pdf');
		$data['text_save_product'] = $this->language->get('text_save_product');
		$data['text_saved_products'] = $this->language->get('text_saved_products');
		$data['text_reset'] = $this->language->get('text_reset');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/fancy_design/productstage.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/fancy_design/productstage.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/fancy_design/productstage.tpl', $data));
		}
	}
}
?>
