<?php
class ModelCatalogFntCustomerDesign extends Model
{
	public function getAllProductCustomerDesign(){
		$sql="select pcidea.*,p.price,p.tax_class_id,p.product_id from ".DB_PREFIX."fnt_product_customer_idea_accept pcidea left join ".DB_PREFIX."fnt_product_design pd on pcidea.product_design_id=pd.product_design_id left join ".DB_PREFIX. "product p on pd.product_id=p.product_id where pcidea.status='1'";
		
		$query=$this->db->query($sql);
		return $query->rows;
	}
	public function getTotalProduct(){
		$query = $this->db->query("
			SELECT COUNT(*) AS total FROM " . DB_PREFIX ."fnt_product_customer_idea_accept			
			WHERE status = '1'");
		return $query->row['total'];
	}
	public function getProductSpecial($product_id){
		$sql ="select ps.price from ".DB_PREFIX. "product_special ps where product_id= ".(int)$product_id. " AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end > NOW()))";
		$query=$this->db->query($sql);
		return $query->row;
	}
    public function getProductDesignIdeaAccept($product_design_idea_acept_id){
		$sql="select pcidea.*,p.price,p.tax_class_id,p.product_id from ".DB_PREFIX."fnt_product_customer_idea_accept pcidea left join ".DB_PREFIX."fnt_product_design pd on pcidea.product_design_id=pd.product_design_id left join ".DB_PREFIX. "product p on pd.product_id=p.product_id where pcidea.status='1' AND pcidea.product_customer_idea_accept_id=".(int)$product_design_idea_acept_id;
		$query = $this->db->query($sql);
		return $query->row;
	}
}