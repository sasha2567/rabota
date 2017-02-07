<?php
class ModelAccountFntCustomerIdeas extends Model {
	public function getCustomerIdea($product_customer_idea_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "fnt_product_customer_idea` WHERE product_customer_idea_id = '" . (int)$product_customer_idea_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
		return $query->row;
	}
	 
	public function getCustomerIdeas($start = 0, $limit = 20) {
		if ($start < 0) {
			$start = 0;
		}
		
		if ($limit < 1) {
			$limit = 10;
		}	
		
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "fnt_product_customer_idea` WHERE customer_id = '" . (int)$this->customer->getId() . "' ORDER BY product_customer_idea_id DESC LIMIT " . (int)$start . "," . (int)$limit);	
	
		return $query->rows;
	}

	public function getTotalCustomerIdea() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "fnt_product_customer_idea` WHERE customer_id = '" . (int)$this->customer->getId() . "'");	
		
		return $query->row['total'];
	}
	
	public function deleteCustomerIdea($product_customer_idea_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "fnt_product_customer_idea` WHERE product_customer_idea_id = '" . (int)$product_customer_idea_id . "'");	
	}
}
?>