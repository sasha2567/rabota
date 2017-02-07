<?php  
class ControllerFancyDesignProductstageSemantic extends Controller {
	public function index() {
		$this->load->language('fancy_design/productstage');
		$data['add_image_tooltip'] = $this->language->get('add_image_tooltip');
		$data['add_text_tooltip'] = $this->language->get('add_text_tooltip');
		$data['zoom_in_tooltip'] = $this->language->get('zoom_in_tooltip');
		$data['zoom_out_tooltip'] = $this->language->get('zoom_out_tooltip');
		$data['zoom_reset_tooltip'] = $this->language->get('zoom_reset_tooltip');
		$data['pdf_tooltip'] = $this->language->get('pdf_tooltip');
		$data['download_image_tooltip'] = $this->language->get('download_image_tooltip');
		$data['print_tooltip'] = $this->language->get('print_tooltip');
		$data['save_product_tooltip'] = $this->language->get('save_product_tooltip');
		$data['saved_products_tooltip'] = $this->language->get('saved_products_tooltip');
		$data['reset_tooltip'] = $this->language->get('reset_tooltip');
	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/fancy_design/productstage-semantic.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/fancy_design/productstage-semantic.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/fancy_design/productstage-semantic.tpl', $data));
		}	
	}
}
?>
