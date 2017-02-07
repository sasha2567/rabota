<?php
class ModelCatalogFntCategoryClipart extends Model {
	public function getCategoryClipartDescriptions($category_clipart_id) {
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_category_clipart_description WHERE category_clipart_id = '" . (int)$category_clipart_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}
	public function getCategoriesClipart($filter_data = array()) {
		$clipart_category_data = array();
		$sql = "SELECT DISTINCT fcc.category_clipart_id, fcc.parameter FROM " . DB_PREFIX . "fnt_category_clipart fcc";
		
		if(isset($data['list_product'])){
			$sql .= " LEFT JOIN " . DB_PREFIX . "fnt_product_design_to_category_clipart fptcd ON (fcc.category_clipart_id = fptcd.category_clipart_id)";
		}
		$sql .=' WHERE fcc.status = 1';
		if(isset($data['list_product'])){
			$sql .= ' AND fptcd.product_design_id IN(' . $data['list_product'] . ')';
		}
		$sql .=' ORDER BY fcc.sort_order ASC';
		$query = $this->db->query($sql);
		foreach ($query->rows as $result) {
            $clipart_category_data[$result['category_clipart_id']] = $result['parameter'];
        }

        return $clipart_category_data;
	}
}