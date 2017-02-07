<?php
class ControllerPaymentRobokassa extends Controller {
	public function index() {
		$data['button_confirm'] = $this->language->get('button_confirm');
		$data['button_back'] = $this->language->get('button_back');

		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		if($this->config->get('robokassa_test')) {
			$data['action'] = 'http://test.robokassa.ru/Index.aspx';
		} else {
			$data['action'] = 'http://merchant.roboxchange.com/Index.aspx';
		}

		$data['mrh_login'] = $this->config->get('robokassa_login');
	    $data['mrh_pass1']= $this->config->get('robokassa_password1');

		$data['inv_id'] = $this->session->data['order_id'];

		$data['inv_desc'] = $this->config->get('config_store') . ' ' . $order_info['payment_firstname'] . ' ' . $order_info['payment_address_1'] . ' ' . $order_info['payment_address_2'] . ' ' . $order_info['payment_city'] . ' ' . $order_info['email'];

		$rur_code = 'RUB';
		$rur_order_total = $this->currency->convert($order_info['total'], $order_info['currency_code'], $rur_code);
		$data['out_summ'] = $this->currency->format($rur_order_total, $rur_code, $order_info['currency_value'], FALSE);

		$data['crc']= md5($data['mrh_login']. ":" .$data['out_summ']. ":" .$data['inv_id']. ":" .$data['mrh_pass1']);

		$data['merchant_url'] = $data['action'] .
				'?MrchLogin=' 		. $data['mrh_login'] .
				'&OutSum='			. $data['out_summ'] .
				'&InvId='			. $data['inv_id']	.
				'&Desc='			. $data['inv_desc']	.
				'&SignatureValue='	. $data['crc'];

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/robokassa.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/robokassa.tpl', $data);
		} else {
			return $this->load->view('default/template/payment/robokassa.tpl', $data);
		}
	}

	private function result() {
		echo 1;
	}

	public function success() {
		$mrh_pass1 = $this->config->get('robokassa_password1');
		$out_summ = $this->request->post['OutSum'];
		$order_id = $this->request->post["InvId"];
		$crc = $this->request->post["SignatureValue"];

		$crc = strtoupper($crc);

		$my_crc = strtoupper(md5($out_summ. ":" .$order_id. ":" .$mrh_pass1));

		if (strtoupper($my_crc) == strtoupper($crc)) {
			$this->load->model('checkout/order');

			$order_info = $this->model_checkout_order->getOrder($order_id);

			if( $order_info['order_status_id'] == 0) {
				$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('config_order_status_id') );
			}

			$this->response->redirect($this->url->link('checkout/success', '', 'SSL'));
		}

		return TRUE;
	}

	public function fail() {
	
		$this->response->redirect($this->url->link('checkout/checkout', '', 'SSL'));
		
		return TRUE;
	}

	public function callback() {
		$mrh_pass2 = $this->config->get('robokassa_password2');

		$out_summ = $this->request->post['OutSum'];
		$order_id = $this->request->post["InvId"];
		$crc = $this->request->post["SignatureValue"];

		$crc = strtoupper($crc);

		$my_crc = strtoupper(md5($out_summ. ":" .$order_id. ":" .$mrh_pass2));

		if (strtoupper($my_crc) == strtoupper($crc)) {
			$this->load->model('checkout/order');

			$order_info = $this->model_checkout_order->getOrder($order_id);
			$new_order_status_id = $this->config->get('robokassa_order_status_id');

			if ( $order_info['order_status_id'] == 0) {
				$this->model_checkout_order->addOrderHistory($order_id, $new_order_status_id, 'ROBOKASSA');
				return TRUE;
			}

			if ( $order_info['order_status_id'] != $new_order_status_id) {
				$this->model_checkout_order->addOrderHistory($order_id, $new_order_status_id,'ROBOKASSA',TRUE);
			}

			return TRUE;
		}

	}
}