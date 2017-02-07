<?php

class ControllerPaymentIPS extends Controller {
    public function index() {
        $this->load->language('payment/ips');
        
        $data['ips_template'] = 'confirm';
        $data['button_confirm'] = $this->language->get('button_confirm');
        
        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/ips.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/payment/ips.tpl', $data);
        } else {
            return $this->load->view('default/template/payment/ips.tpl', $data);
        }
    }


    public function register() {
        if (!empty($this->session->data['order_id'])) {
            $this->load->model('checkout/order');
            $orderInfo = $this->model_checkout_order->getOrder($this->session->data['order_id']);

            $this->model_checkout_order->addOrderHistory($orderInfo['order_id'], $this->config->get('config_order_status_id'));

            $this->load->model('payment/ips');

            $soapClient = $this->model_payment_ips->newSoap($this->config->get('ips_shop_url'), $this->config->get('ips_shop_login'), $this->config->get('ips_shop_password'));
            $request = $this->model_payment_ips->prepareOrder($this->config->get('ips_shop_id'), $orderInfo['order_id'], number_format($orderInfo['total'], 2, '.', ''), $orderInfo['customer_id'], $orderInfo['payment_lastname'] . ' ' . $orderInfo['payment_firstname'], $orderInfo['email'], $orderInfo['telephone'], $this->url->link('payment/ips/status_ok'), $this->url->link('payment/ips/status_fault'));
            try {
                $info = $soapClient->register_online($request);
                $this->response->redirect($info->redirect_url . '?session=' . $info->session);
            } catch (SoapFault $fault) {
                $this->load->language('payment/ips');

                $data['ips_template'] = 'try_again';
                $data['button_try_again'] = $this->language->get('button_try_again');
                $data['error_register_fault'] = $this->language->get('error_register_fault');
                $data['error_register_fault_code'] = $fault->faultstring;

                return $this->_render($data);
            }
        } else {
            $this->response->redirect('/');
        }
    }


    public function status_ok() {
        if (!empty($this->session->data['order_id'])) {
            $this->load->language('payment/ips');
            $data = array();

            $this->load->model('checkout/order');
            $orderInfo = $this->model_checkout_order->getOrder($this->session->data['order_id']);

            $this->load->model('payment/ips');
            $soapClient = $this->model_payment_ips->newSoap($this->config->get('ips_shop_url'), $this->config->get('ips_shop_login'), $this->config->get('ips_shop_password'));
            $objStatus = $this->model_payment_ips->getOrderStatus($this->config->get('ips_shop_id'), $orderInfo['order_id']);
            try {
                $info = $soapClient->get_status($objStatus);

                switch ($info->status) {
                    case 'acknowledged':
                    case 'not_acknowledged':
                    case 'authorized':
                        $this->model_checkout_order->addOrderHistory($orderInfo['order_id'], $this->config->get('ips_order_status_success_id'), 'IPS status: ' . $info->status, false);
                        $this->response->redirect($this->url->link('checkout/success'));
                    break;

                    case 'canceled':
                    case 'not_authorized':
                        $this->model_checkout_order->addOrderHistory($orderInfo['order_id'], $this->config->get('ips_order_status_fail_id'), 'IPS status: ' . $info->status, false);
                        $data['ips_template'] = 'canceled';
                        $data['error_canceled'] = $this->language->get('error_canceled');
                    break;

                    default:
                        $data['ips_template'] = 'process';
                        $data['error_process'] = $this->language->get('error_process');
                        $data['button_finish'] = $this->language->get('button_finish');
                        $data['button_finish_url'] = $this->url->link('checkout/success');
                    break;
                }

            } catch (SoapFault $fault) {
                if ($fault->faultstring === 'INVALID_ORDER') {
                    $this->model_checkout_order->addOrderHistory($orderInfo['order_id'], $this->config->get('ips_order_status_fail_id'), 'IPS status: ' . $info->status, false);
                    $data['ips_template'] = 'invalid_order';
                    $data['error_invalid_order'] = $this->language->get('error_invalid_order');
                }
            }

            return $this->_render($data);
        }
    }


    public function status_fault() {
        $this->load->language('payment/ips');

        $data['ips_template'] = 'status_fault';
        $data['button_try_again'] = $this->language->get('button_try_again');
        $data['error_status_fault'] = $this->language->get('error_status_fault');

        $this->load->model('checkout/order');
        $orderInfo = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        $this->model_checkout_order->addOrderHistory($orderInfo['order_id'], $this->config->get('ips_order_status_fail_id'), 'IPS status: Canceled', false);

        return $this->_render($data);
    }


    function _render($data) {
        $data['heading_title'] = $this->language->get('heading_title');
        $data['heading_payment'] = $this->language->get('heading_payment');
        $data['text_back'] = $this->language->get('text_back');
        $data['text_continue'] = $this->language->get('text_continue');
        $data['error_payment_method'] = $this->language->get('error_payment_method');

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/ips.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/payment/ips.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/payment/ips.tpl', $data));
        }
    }


    public function cron() {
        $this->load->model('payment/ips');
        $this->model_payment_ips->updateOrdersStatuses();
    }

}
?>