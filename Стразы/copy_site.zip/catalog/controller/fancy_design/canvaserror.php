
<?php  
class ControllerFancyDesignCanvaserror extends Controller {
	public function index() {
		$this->load->language('fancy_desing/canvaserror');
		$data['text_content'] = $this->language->get('text_content');
	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/fancy_design/canvaserror.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/fancy_design/canvaserror.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/fancy_design/canvaserror.tpl', $data));
		}
	}
}
?>
