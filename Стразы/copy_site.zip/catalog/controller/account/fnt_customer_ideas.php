<?php 
class ControllerAccountFntCustomerIdeas extends Controller {
	private $error = array();
		
	public function index() {
    	if (!$this->customer->isLogged()) {
      		$this->session->data['redirect'] = $this->url->link('account/order', '', 'SSL');

	  		$this->response->redirect($this->url->link('account/login', '', 'SSL'));
    	}
		
		$this->load->language('account/fnt_customer_ideas');
		
		$this->load->model('account/fnt_customer_ideas');
    	$this->document->setTitle($this->language->get('heading_title'));

      	$data['breadcrumbs'] = array();

      	$data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	); 

      	$data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),        	
        	'separator' => $this->language->get('text_separator')
      	);
		
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
				
      	$data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('account/fnt_customer_ideas', $url, 'SSL'),        	
        	'separator' => $this->language->get('text_separator')
      	);

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_status'] = $this->language->get('text_status');
		$data['text_date_added'] = $this->language->get('text_date_added');
		$data['text_empty'] = $this->language->get('text_empty');

		$data['button_view'] = $this->language->get('button_view');
		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$data['customer_ideas'] = array();
		
		$customer_idea_total = $this->model_account_fnt_customer_ideas->getTotalCustomerIdea();
		
		$results = $this->model_account_fnt_customer_ideas->getCustomerIdeas(($page - 1) * 10, 10);
		
		foreach ($results as $result) {
			
			$data['customer_ideas'][] = array(
				'product_customer_idea_id'   => $result['product_customer_idea_id'],
				'name'       => $result['name'],
				'status'     => $result['status'],
				'delete'     => $this->url->link('account/fnt_customer_ideas/delete', 'product_customer_idea_id=' . $result['product_customer_idea_id']),
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'href'       => $this->url->link('product/fnt_category_product_design', 'product_customer_idea_id=' . $result['product_customer_idea_id'])
			);
		}

		$pagination = new Pagination();
		$pagination->total = $customer_idea_total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('account/fnt_customer_ideas', 'page={page}', 'SSL');
		
		$data['pagination'] = $pagination->render();

		$data['continue'] = $this->url->link('account/account', '', 'SSL');		$data['column_left'] = $this->load->controller('common/column_left');		$data['column_right'] = $this->load->controller('common/column_right');		$data['content_top'] = $this->load->controller('common/content_top');		$data['content_bottom'] = $this->load->controller('common/content_bottom');		$data['footer'] = $this->load->controller('common/footer');		$data['header'] = $this->load->controller('common/header');		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/fnt_customer_ideas_list.tpl')) {			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/fnt_customer_ideas_list.tpl', $data));		} else {			$this->response->setOutput($this->load->view('default/template/account/fnt_customer_ideas_list.tpl', $data));		}				
	}
	public function delete(){
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/fnt_customer_ideas', '', 'SSL');

	  		$this->response->redirect($this->url->link('account/login', '', 'SSL')); 
    	} 
		$this->load->model('account/fnt_customer_ideas');
		if($this->request->get['product_customer_idea_id']){
			$this->model_account_fnt_customer_ideas->deleteCustomerIdea($this->request->get['product_customer_idea_id']);
		}
	$this->response->redirect($this->url->link('account/fnt_customer_ideas', '', 'SSL'));
	}
}
?>