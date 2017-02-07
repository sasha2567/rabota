<?php 

class ModelPaymentIPS extends Model {

    public function getMethod($address, $total) { 
        $this->load->language('payment/ips');
        
        $query = $this->db->query('SELECT * FROM ' . DB_PREFIX . 'zone_to_geo_zone WHERE geo_zone_id = "' . (int)$this->config->get('ips_geo_zone_id') . '" AND country_id = "' . (int)$address['country_id'] . '" AND (zone_id = "' . (int)$address['zone_id'] . '" OR zone_id = "0")');
        
        if (!$this->config->get('ips_geo_zone_id')) {
            $status = true;
        } elseif ($query->num_rows) {
            $status = true;
        } else {
            $status = false;
        }    
        
        $method_data = array();
    
        if ($status) {  
            $method_data = array( 
                'code' => 'ips',
                'title' => $this->language->get('text_title'),
                'terms' => '',
                'sort_order' => $this->config->get('ips_sort_order')
            );
        }

        return $method_data;
    }


    public function newSoap($shopUrl, $shopLogin, $shopPassword) {
        return new orderv2(
            null,
            array(
                'location' => $shopUrl,
                'uri' => 'http://www.sirena-travel.ru',
                'login' => $shopLogin,
                'password' => $shopPassword,
                'trace' => 1,
                'features' => SOAP_SINGLE_ELEMENT_ARRAYS,
                'connection_timeout' => 12
            )
        );
    }


    public function prepareOrder($shopId, $orderId, $orderSum, $userId, $userName, $userEmail, $userPhone, $okUrl, $faultUrl) {
        $request = new register_online();
        $order = new OrderID(); 
        $order->shop_id = $shopId;
        $order->number = $orderId;
        $cost = new Amount();
        $cost->amount = $orderSum;
        $cost->currency = 'RUB';
        $customer = new CustomerInfo();
        if ($userId != 0) {
            $customer->id = $userId;
        }
        $customer->name = $userName;
        $customer->email = $userEmail;
        $customer->phone = $userPhone;
        $description = new OrderInfo();
        $description->paytype = 'card';
        $language = new PostEntry();
        $language->name = 'Language';
        $language->value = 'ru';
        $returnUrlOk = new PostEntry();
        $returnUrlOk->name = 'ReturnURLOk';
        $returnUrlOk->value = $okUrl;
        $returnUrlFault = new PostEntry();
        $returnUrlFault->name = 'ReturnURLFault';
        $returnUrlFault->value = $faultUrl;
        $cardtype = new PostEntry();
        $cardtype->name = 'ChoosenCardType';
        $cardtype->value = 'VI';
        $request->order = $order;
        $request->cost = $cost;
        $request->customer = $customer;
        $request->description = $description;

        $postdata = new SoapVar(
            array(
                new SoapVar($language, SOAP_ENC_OBJECT, null, null, 'PostEntry'),
                new SoapVar($cardtype, SOAP_ENC_OBJECT, null, null, 'PostEntry'),
                new SoapVar($returnUrlOk, SOAP_ENC_OBJECT, null, null, 'PostEntry'),
                new SoapVar($returnUrlFault, SOAP_ENC_OBJECT, null, null, 'PostEntry'),
            ),
            SOAP_ENC_OBJECT
        );

        $request->postdata = $postdata;

        return $request;
    }

    // подготавливаем структуру для запроса статуса заказа
    public function getOrderStatus($shopId, $orderId) {
        $status = new get_status();
        $order = new OrderID();
        $order->shop_id = $shopId;
        $order->number = $orderId;
        $status->order = $order;
        return $status;
    }


    public function updateOrdersStatuses() { 
        $this->load->model('checkout/order');

        $result = $this->db->query('SELECT order_id FROM ' . DB_PREFIX . 'order WHERE payment_code = "ips" AND order_status_id not in (' . $this->config->get('ips_order_status_success_id') . ', ' . $this->config->get('ips_order_status_fail_id') . ', 0)');

        $soapClient = $this->newSoap($this->config->get('ips_shop_url'), $this->config->get('ips_shop_login'), $this->config->get('ips_shop_password'));

        if ($result->num_rows > 0) {
            foreach ($result->rows as $o) {

                $objStatus = $this->model_payment_ips->getOrderStatus($this->config->get('ips_shop_id'), $o['order_id']);
                try {
                    $info = $soapClient->get_status($objStatus);

                    switch ($info->status) {
                        case 'acknowledged':
                        case 'not_acknowledged':
                        case 'authorized':
                            $this->model_checkout_order->addOrderHistory($o['order_id'], $this->config->get('ips_order_status_success_id'), 'IPS status: ' . $info->status, false);
                        break;

                        case 'canceled':
                        case 'not_authorized':
                            $this->model_checkout_order->addOrderHistory($o['order_id'], $this->config->get('ips_order_status_fail_id'), 'IPS status: ' . $info->status, false);
                        break;

                    }
                    echo 'Статус заказа № ', $o['order_id'], ': ', $info->status, '\r\n';

                } catch (SoapFault $fault) {
                    echo 'Ошибка при проверке статуса заказа № ', $o['order_id'], ': ', $fault->faultcode , '-' , $fault->faultstring, '\r\n';
                    if ($fault->faultstring === 'INVALID_ORDER') {
                        $this->model_checkout_order->addOrderHistory($o['order_id'], $this->config->get('ips_order_status_fail_id'), 'IPS status: ' . $fault->faultstring, false);
                    }
                }
            
            }
        }
    }

}


if (!class_exists('PaymentArray')) {
    class PaymentArray {
        public $Payment;
    }
}

if (!class_exists('get_finished')) {
    class get_finished {
        public $shop_id;
        public $start;
        public $stop;
    }
}

if (!class_exists('OrderItem')) {
    class OrderItem {
        public $descr;
        public $clearing;
        public $amount;
        public $number;
        public $typename;
        public $host;
    }
}

if (!class_exists('stringArray')) {
    class stringArray {
        public $string;
    }
}

if (!class_exists('cancelResponse')) {
    class cancelResponse {
        public $retval;
    }
}

if (!class_exists('AttemptArray')) {
    class AttemptArray {
        public $Attempt;
    }
}

if (!class_exists('rejectResponse')) {
    class rejectResponse {
        public $retval;
    }
}

if (!class_exists('Attempt')) {
    class Attempt {
        public $ip;
        public $amount;
        public $error;
        public $date;
        public $type;
        public $id;
    }
}

if (!class_exists('get_status')) {
    class get_status {
        public $order;
    }
}

if (!class_exists('OnlineResult')) {
    class OnlineResult {
        public $session;
        public $redirect_url;
    }
}

if (!class_exists('cancel')) {
    class cancel {
        public $order;
    }
}

if (!class_exists('confirmResponse')) {
    class confirmResponse {
        public $retval;
    }
}

if (!class_exists('OrderStatus')) {
    class OrderStatus {
        public $status;
        public $attempts;
        public $details;
        public $shopref;
        public $order;
        public $payments;
    }
}

if (!class_exists('Amount')) {
    class Amount {
        public $currency;
        public $amount;
    }
}

if (!class_exists('Document')) {
    class Document {
        public $code;
        public $holder;
        public $number;
    }
}

if (!class_exists('confirm')) {
    class confirm {
        public $order;
        public $payment_id;
    }
}

if (!class_exists('register_depositResponse')) {
    class register_depositResponse {
        public $retval;
    }
}

if (!class_exists('PostEntryArray')) {
    class PostEntryArray {
        public $PostEntry;
    }
}

if (!class_exists('Error')) {
    class Error {
        public $category;
        public $code;
    }
}

if (!class_exists('OrderItemArray')) {
    class OrderItemArray {
        public $OrderItem;
    }
}

if (!class_exists('PaymentClass')) {
    class PaymentClass {
        public $authorg;
        public $authcode;
        public $salepoint;
        public $clearing;
        public $amount;
        public $doc;
        public $date;
        public $type;
        public $id;
    }
}

if (!class_exists('register_deposit')) {
    class register_deposit {
        public $order;
        public $cost;
        public $customer;
        public $description;
        public $account;
        public $postdata;
    }
}

if (!class_exists('OrderInfo')) {
    class OrderInfo {
        public $items;
        public $shopref;
        public $paytype;
        public $descr;
        public $timelimit;
    }
}

if (!class_exists('get_finishedResponse')) {
    class get_finishedResponse {
        public $retval;
    }
}

if (!class_exists('CardInfo')) {
    class CardInfo {
        public $product;
        public $code;
        public $secure;
        public $country;
        public $number;
        public $holder;
        public $id;
        public $bank;
    }
}

if (!class_exists('reject')) {
    class reject {
        public $order;
        public $payment_id;
    }
}

if (!class_exists('OrderStatusArray')) {
    class OrderStatusArray {
        public $OrderStatus;
    }
}

if (!class_exists('CardInfoArray')) {
    class CardInfoArray {
        public $CardInfo;
    }
}

if (!class_exists('DepositInfo')) {
    class DepositInfo {
        public $salepoint;
        public $user;
        public $agreement;
    }
}

if (!class_exists('refund')) {
    class refund {
        public $order;
        public $payment_id;
        public $cost;
        public $refund_id;
    }
}

if (!class_exists('OrderID')) {
    class OrderID {
        public $shop_id;
        public $number;
    }
}

if (!class_exists('register_offline')) {
    class register_offline {
        public $order;
        public $cost;
        public $customer;
        public $description;
    }
}

if (!class_exists('CustomerInfo')) {
    class CustomerInfo {
        public $id;
        public $phone;
        public $name;
        public $email;
    }
}

if (!class_exists('PostEntry')) {
    class PostEntry {
        public $name;
        public $value;
    }
}

if (!class_exists('register_online')) {
    class register_online {
        public $order;
        public $cost;
        public $customer;
        public $description;
        public $postdata;
    }
}

if (!class_exists('get_statusResponse')) {
    class get_statusResponse {
        public $retval;
    }
}

if (!class_exists('register_onlineResponse')) {
    class register_onlineResponse {
        public $retval;
    }
}

if (!class_exists('refundResponse')) {
    class refundResponse {
        public $retval;
    }
}

if (!class_exists('register_offlineResponse')) {
    class register_offlineResponse {
        public $retval;
    }
}

if (!class_exists('orderv2')) {
    class orderv2 extends SoapClient {
    
        private static $classmap = array(
            'PaymentArray' => 'PaymentArray',
            'get_finished' => 'get_finished',
            'OrderItem' => 'OrderItem',
            'stringArray' => 'stringArray',
            'cancelResponse' => 'cancelResponse',
            'AttemptArray' => 'AttemptArray',
            'rejectResponse' => 'rejectResponse',
            'Attempt' => 'Attempt',
            'get_status' => 'get_status',
            'OnlineResult' => 'OnlineResult',
            'cancel' => 'cancel',
            'confirmResponse' => 'confirmResponse',
            'OrderStatus' => 'OrderStatus',
            'Amount' => 'Amount',
            'Document' => 'Document',
            'confirm' => 'confirm',
            'PostEntryArray' => 'PostEntryArray',
            'Error' => 'Error',
            'OrderItemArray' => 'OrderItemArray',
            'Payment' => 'PaymentClass',
            'register_deposit' => 'register_deposit',
            'OrderInfo' => 'OrderInfo',
            'get_finishedResponse' => 'get_finishedResponse',
            'CardInfo' => 'CardInfo',
            'reject' => 'reject',
            'OrderStatusArray' => 'OrderStatusArray',
            'CardInfoArray' => 'CardInfoArray',
            'refund' => 'refund',
            'OrderID' => 'OrderID',
            'CustomerInfo' => 'CustomerInfo',
            'PostEntry' => 'PostEntry',
            'register_online' => 'register_online',
            'get_statusResponse' => 'get_statusResponse',
            'register_onlineResponse' => 'register_onlineResponse',
            'refundResponse' => 'refundResponse',
        );

        public function __construct($wsdl=null, $options=array()) {
            foreach (self::$classmap as $wsdlClassName => $phpClassName) {
                if (!isset($options['classmap'][$wsdlClassName])) {
                    $options['classmap'][$wsdlClassName] = $phpClassName;
                }
            }
            parent::__construct($wsdl, $options);
        }

        public function _checkArguments($arguments, $validParameters) {
            $variables = '';
            foreach ($arguments as $arg) {
                $type = gettype($arg);
                if ($type == 'object') {
                    $type = get_class($arg);
                }
                $variables .= '(' . $type . ')';
            }

            if (!in_array($variables, $validParameters)) {
                throw new Exception('Invalid parameter types: '.str_replace(')(', ', ', $variables));
            }
            return true;
        }

        public function cancel($mixed = null) {
            $validParameters = array(
                '(cancel)',
            );
            $args = func_get_args();
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('cancel', $args);
        }

        public function confirm($mixed = null) {
            $validParameters = array(
                '(confirm)',
            );
            $args = func_get_args();
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('confirm', $args);
        }

        public function get_finished($mixed = null) {
            $validParameters = array(
                '(get_finished)',
            );
            $args = func_get_args();
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('get_finished', $args);
        }

        public function get_status($mixed = null) {
            $validParameters = array(
                '(get_status)',
            );
            $args = func_get_args();
            $sargs = array();
            foreach ($mixed as $key => $val) { 
                array_push($sargs, new SoapParam($val, $key)); 
            }
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('get_status', $sargs);
        }

        public function refund($mixed = null) {
            $validParameters = array(
                '(refund)',
            );
            $args = func_get_args();
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('refund', $args);
        }

        public function register_online($mixed = null) {
            $validParameters = array(
                '(register_online)',
            );
            $args = func_get_args();
            $sargs = array();
            foreach ($mixed as $key => $val) { 
                array_push($sargs, new SoapParam($val, $key)); 
            }
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('register_online', $sargs);
        }

        public function reject($mixed = null) {
            $validParameters = array(
                '(reject)',
            );
            $args = func_get_args();
            $this->_checkArguments($args, $validParameters);
            return $this->__soapCall('reject', $args);
        }

    }

}

?>
