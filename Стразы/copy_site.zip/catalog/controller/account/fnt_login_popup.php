<?php 
class ControllerAccountFntLoginPopup extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->model('account/customer');		$this->load->language('account/save_ideas');
		// Login override for admin users
		if (!empty($this->request->get['token'])) {
			$this->customer->logout();
			
			$customer_info = $this->model_account_customer->getCustomerByToken($this->request->get['token']);
			
		 	if ($customer_info && $this->customer->login($customer_info['email'], '', true)) {
				// Default Addresses
				$this->load->model('account/address');
					
				$address_info = $this->model_account_address->getAddress($this->customer->getAddressId());
										
				if ($address_info) {
					if ($this->config->get('config_tax_customer') == 'shipping') {
						$this->session->data['shipping_country_id'] = $address_info['country_id'];
						$this->session->data['shipping_zone_id'] = $address_info['zone_id'];
						$this->session->data['shipping_postcode'] = $address_info['postcode'];	
					}
					
					if ($this->config->get('config_tax_customer') == 'payment') {
						$this->session->data['payment_country_id'] = $address_info['country_id'];
						$this->session->data['payment_zone_id'] = $address_info['zone_id'];
					}
				} else {
					unset($this->session->data['shipping_country_id']);	
					unset($this->session->data['shipping_zone_id']);	
					unset($this->session->data['shipping_postcode']);
					unset($this->session->data['payment_country_id']);	
					unset($this->session->data['payment_zone_id']);	
				}
			}
		}		
    	$this->load->language('account/login');

    	$this->document->setTitle($this->language->get('heading_title'));
								
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			unset($this->session->data['guest']);
			
			// Default Shipping Address
			$this->load->model('account/address');
				
			$address_info = $this->model_account_address->getAddress($this->customer->getAddressId());
									
			if ($address_info) {
				if ($this->config->get('config_tax_customer') == 'shipping') {
					$this->session->data['shipping_country_id'] = $address_info['country_id'];
					$this->session->data['shipping_zone_id'] = $address_info['zone_id'];
					$this->session->data['shipping_postcode'] = $address_info['postcode'];	
				}
				
				if ($this->config->get('config_tax_customer') == 'payment') {
					$this->session->data['payment_country_id'] = $address_info['country_id'];
					$this->session->data['payment_zone_id'] = $address_info['zone_id'];
				}
			} else {
				unset($this->session->data['shipping_country_id']);	
				unset($this->session->data['shipping_zone_id']);	
				unset($this->session->data['shipping_postcode']);
				unset($this->session->data['payment_country_id']);	
				unset($this->session->data['payment_zone_id']);	
			}
    	}  			if($this->customer->getId()){			$data['title_heading'] = $this->language->get('title_heading'); 'Enter product design name';			$data['entry_name'] = $this->language->get('entry_name'); 'Product design name:';			$data['button_continue'] = $this->language->get('button_continue'); 'Submit';			$data['error'] = $this->language->get('error'); 'Name product design';			$data['footer'] = $this->load->controller('common/footer');			$data['header'] = $this->load->controller('common/header');			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fnt_save_design_popup.tpl')) {				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/fnt_save_design_popup.tpl', $data));			} else {				$this->response->setOutput($this->load->view('default/template/module/fnt_save_design_popup.tpl', $data));			}		} else {
    	$data['heading_title'] = $this->language->get('heading_title');

    	$data['text_new_customer'] = $this->language->get('text_new_customer');
    	$data['text_register'] = $this->language->get('text_register');
    	$data['text_register_account'] = $this->language->get('text_register_account');
		$data['text_returning_customer'] = $this->language->get('text_returning_customer');
		$data['text_i_am_returning_customer'] = $this->language->get('text_i_am_returning_customer');
    	$data['text_forgotten'] = $this->language->get('text_forgotten');

    	$data['entry_email'] = $this->language->get('entry_email');
    	$data['entry_password'] = $this->language->get('entry_password');

    	$data['button_continue'] = $this->language->get('button_continue');
		$data['button_login'] = $this->language->get('button_login');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		$data['action'] = $this->url->link('account/fnt_login_popup', '', 'SSL');
		$data['register'] = $this->url->link('account/fnt_register_popup', '', 'SSL');
		$data['forgotten'] = $this->url->link('account/fnt_forgotten_popup', '', 'SSL');

		if (isset($this->session->data['success'])) {
    		$data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = '';
		}

		if (isset($this->request->post['password'])) {
			$data['password'] = $this->request->post['password'];
		} else {
			$data['password'] = '';
		}		$data['footer'] = $this->load->controller('common/footer');		$data['header'] = $this->load->controller('common/header');		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/fnt_login_popup.tpl')) {			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/fnt_login_popup.tpl', $data));		} else {			$this->response->setOutput($this->load->view('default/template/account/fnt_login_popup.tpl', $data));		}
  	}}
  
  	private function validate() {
    	if (!$this->customer->login($this->request->post['email'], $this->request->post['password'])) {
      		$this->error['warning'] = $this->language->get('error_login');
    	}
	
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
		
    	if ($customer_info && !$customer_info['approved']) {
      		$this->error['warning'] = $this->language->get('error_approved');
    	}		
		
    	if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}  	
  	}
}
?>