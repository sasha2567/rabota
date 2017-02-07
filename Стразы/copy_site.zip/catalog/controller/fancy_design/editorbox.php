<?php  
class ControllerFancyDesignEditorbox extends Controller {
	public function index() {
		$this->load->language('fancy_desing/editorbox');
		//labels
		$data['headline'] = $this->language->get('headline');
		$data['element_label'] = $this->language->get('element_label');
		$data['position_label'] = $this->language->get('position_label');
		$data['scale_label'] = $this->language->get('scale_label');
		$data['angle_label'] = $this->language->get('angle_label');
		$data['dimensions_label'] = $this->language->get('dimensions_label');
		$data['colors_label'] = $this->language->get('colors_label');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/fancy_design/editorbox.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/fancy_design/editorbox.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/fancy_design/editorbox.tpl', $data));
		}
	}
}
?>
