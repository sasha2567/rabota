<?php

class ModelCatalogFntProductDesign extends Model {

    public function getProductDesign($product_design_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "fnt_product_design WHERE product_design_id = '" . (int) $product_design_id . "'");

        return $query->row;
    }

    public function getProductDesignByProduct($product_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "fnt_product_design WHERE product_id = '" . (int) $product_id . "' AND status = 1");
        return $query->row;
    }

    public function getProducts($filter_data = array()) {
        if ($this->customer->isLogged()) {
            $customer_group_id = $this->customer->getCustomerGroupId();
        } else {
            $customer_group_id = $this->config->get('config_customer_group_id');
        }

        $sql = "SELECT p.product_id, (SELECT fpd.product_design_id FROM " . DB_PREFIX . "fnt_product_design fpd WHERE fpd.product_id = p.product_id AND fpd.status = '1' GROUP BY fpd.product_id) AS product_design_id, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int) $customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW()) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int) $customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special";

        if (!empty($data['filter_category_id'])) {
            if (!empty($data['filter_sub_category'])) {
                $sql .= " FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (cp.category_id = p2c.category_id)";
            } else {
                $sql .= " FROM " . DB_PREFIX . "product_to_category p2c";
            }
            if (!empty($data['filter_filter'])) {
                $sql .= " LEFT JOIN " . DB_PREFIX . "product_filter pf ON (p2c.product_id = pf.product_id) LEFT JOIN " . DB_PREFIX . "product p ON (pf.product_id = p.product_id)";
            } else {
                $sql .= " LEFT JOIN " . DB_PREFIX . "product p ON (p2c.product_id = p.product_id)";
            }
        } else {
            $sql .= " FROM " . DB_PREFIX . "product p";
        }

        $sql .= " LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pd.language_id = '" . (int) $this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int) $this->config->get('config_store_id') . "'";

        if (!empty($data['filter_category_id'])) {
            if (!empty($data['filter_sub_category'])) {
                $sql .= " AND cp.path_id = '" . (int) $data['filter_category_id'] . "'";
            } else {
                $sql .= " AND p2c.category_id = '" . (int) $data['filter_category_id'] . "'";
            }

            if (!empty($data['filter_filter'])) {
                $implode = array();

                $filters = explode(',', $data['filter_filter']);

                foreach ($filters as $filter_id) {
                    $implode[] = (int) $filter_id;
                }

                $sql .= " AND pf.filter_id IN (" . implode(',', $implode) . ")";
            }
        }

        if (!empty($data['filter_name'])) {
            $sql .= " AND (";

            if (!empty($data['filter_name'])) {
                $implode = array();

                $words = explode(' ', trim(preg_replace('/\s\s+/', ' ', $data['filter_name'])));

                foreach ($words as $word) {
                    $implode[] = "pd.name LIKE '%" . $this->db->escape($word) . "%'";
                }

                if ($implode) {
                    $sql .= " " . implode(" AND ", $implode) . "";
                }

                if (!empty($data['filter_description'])) {
                    $sql .= " OR pd.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
                }
            }
            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.model) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.sku) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.upc) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.ean) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.jan) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.isbn) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            if (!empty($data['filter_name'])) {
                $sql .= " OR LCASE(p.mpn) = '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "'";
            }

            $sql .= ")";
        }

        if (!empty($data['filter_manufacturer_id'])) {
            $sql .= " AND p.manufacturer_id = '" . (int) $data['filter_manufacturer_id'] . "'";
        }
        $sql .= " AND p.product_id IN (SELECT product_id FROM " . DB_PREFIX . "fnt_product_design fpd WHERE status = 1)";
        $sql .= " GROUP BY p.product_id";

        $sort_data = array(
            'pd.name',
            'p.model'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
            if ($data['sort'] == 'pd.name' || $data['sort'] == 'p.model') {
                $sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
            } else {
                $sql .= " ORDER BY " . $data['sort'];
            }
        } else {
            $sql .= " ORDER BY p.sort_order";
        }

        if (isset($data['order']) && ($data['order'] == 'DESC')) {
            $sql .= " DESC, LCASE(pd.name) DESC";
        } else {
            $sql .= " ASC, LCASE(pd.name) ASC";
        }

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }
            $data['limit'] = 35;

            $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
        }
        $product_data = array();

        $query = $this->db->query($sql);
        foreach ($query->rows as $result) {
            $product_data[$result['product_id']] = $this->getProduct($result['product_id']);
        }
        return $product_data;
    }

    public function getProduct($product_id) {
        if ($this->customer->isLogged()) {
            $customer_group_id = $this->customer->getCustomerGroupId();
        } else {
            $customer_group_id = $this->config->get('config_customer_group_id');
        }

        $query = $this->db->query("SELECT DISTINCT *, (SELECT fpd.product_design_id FROM " . DB_PREFIX . "fnt_product_design fpd WHERE fpd.product_id = p.product_id AND fpd.status = '1' GROUP BY fpd.product_id) AS product_design_id, pd.name AS name, p.image, m.name AS manufacturer, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int) $customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW()) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int) $customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special, (SELECT points FROM " . DB_PREFIX . "product_reward pr WHERE pr.product_id = p.product_id AND customer_group_id = '" . (int) $customer_group_id . "') AS reward, (SELECT ss.name FROM " . DB_PREFIX . "stock_status ss WHERE ss.stock_status_id = p.stock_status_id AND ss.language_id = '" . (int) $this->config->get('config_language_id') . "') AS stock_status, (SELECT wcd.unit FROM " . DB_PREFIX . "weight_class_description wcd WHERE p.weight_class_id = wcd.weight_class_id AND wcd.language_id = '" . (int) $this->config->get('config_language_id') . "') AS weight_class, (SELECT lcd.unit FROM " . DB_PREFIX . "length_class_description lcd WHERE p.length_class_id = lcd.length_class_id AND lcd.language_id = '" . (int) $this->config->get('config_language_id') . "') AS length_class, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r2 WHERE r2.product_id = p.product_id AND r2.status = '1' GROUP BY r2.product_id) AS reviews, p.sort_order FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN " . DB_PREFIX . "manufacturer m ON (p.manufacturer_id = m.manufacturer_id) WHERE p.product_id = '" . (int) $product_id . "' AND pd.language_id = '" . (int) $this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int) $this->config->get('config_store_id') . "'");

        if ($query->num_rows) {
            return array(
                'product_id'        => $query->row['product_id'],
                'product_design_id' => $query->row['product_design_id'],
                'name'              => $query->row['name'],
                'description'       => $query->row['description'],
                'model'             => $query->row['model'],
                'image'             => $query->row['image'],
                'manufacturer_id'   => $query->row['manufacturer_id'],
                'manufacturer'      => $query->row['manufacturer'],
                'price'             => ($query->row['discount'] ? $query->row['discount'] : $query->row['price']),
                'special'           => $query->row['special'],
                'tax_class_id'      => $query->row['tax_class_id'],
                'rating'            => round($query->row['rating'])
            );
        } else {
            return false;
        }
    }

    public function getManufacturers($filter_data = array()) {
        if ($filter_data) {
            $sql = "SELECT * FROM " . DB_PREFIX . "manufacturer m LEFT JOIN " . DB_PREFIX . "manufacturer_to_store m2s ON (m.manufacturer_id = m2s.manufacturer_id) WHERE m2s.store_id = '" . (int) $this->config->get('config_store_id') . "'";

            $sort_data = array(
                'name',
                'sort_order'
            );

            if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
                $sql .= " ORDER BY " . $data['sort'];
            } else {
                $sql .= " ORDER BY name";
            }

            if (isset($data['order']) && ($data['order'] == 'DESC')) {
                $sql .= " DESC";
            } else {
                $sql .= " ASC";
            }

            if (isset($data['start']) || isset($data['limit'])) {
                if ($data['start'] < 0) {
                    $data['start'] = 0;
                }

                if ($data['limit'] < 1) {
                    $data['limit'] = 20;
                }

                $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
            }

            $query = $this->db->query($sql);

            return $query->rows;
        } else {
            $manufacturer_data = $this->cache->get('manufacturer.' . (int) $this->config->get('config_store_id'));

            if (!$manufacturer_data) {
                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "manufacturer m LEFT JOIN " . DB_PREFIX . "manufacturer_to_store m2s ON (m.manufacturer_id = m2s.manufacturer_id) WHERE m2s.store_id = '" . (int) $this->config->get('config_store_id') . "' ORDER BY name");

                $manufacturer_data = $query->rows;

                $this->cache->set('manufacturer.' . (int) $this->config->get('config_store_id'), $manufacturer_data);
            }

            return $manufacturer_data;
        }
    }

    public function getProductDesigns($filter_data = array()) {
        $sql = "SELECT * FROM " . DB_PREFIX . "fnt_product_design fpd";
//		if(!empty($data['category_design_id'])){
//			$sql .= " LEFT JOIN fnt_product_to_category_design fptcd ON (fpd.product_design_id = fptcd.product_design_id)";
        $sql .= " LEFT JOIN " . DB_PREFIX . "fnt_product_to_category_design fptcd ON (fpd.product_design_id = fptcd.product_design_id)";
//		}
        $sql .= " LEFT JOIN " . DB_PREFIX . "fnt_category_design fcd ON (fptcd.category_design_id = fcd.category_design_id)";

        $sql .= " WHERE fpd.product_design_id != 0";
        if (!empty($data['filter_name'])) {
            $sql .= " AND fpd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
        }
        if (isset($data['filter_status']) && $data['filter_status'] !== null) {
            $sql .= " AND fpd.status = '" . (int) $data['filter_status'] . "'";
        }
        if (!empty($data['category_design_id'])) {
            $sql .= " AND fptcd.category_design_id = '" . (int) $data['category_design_id'] . "'";
        }
        $sql .= " GROUP BY fpd.product_design_id ";

        $sort_data = array(
            'name',
            'status'
        );

        $sql.=" ORDER BY fcd.sort_order ASC, ";

        if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
//            $sql .= " ORDER BY fpd." . $data['sort'];
            $sql .= " fpd." . $data['sort'];
        } else {
//            $sql .= " ORDER BY fpd.name";
            $sql .= " fpd.name";
        }
        if (isset($data['order']) && ($data['order'] == 'DESC')) {
            $sql .= " DESC";
        } else {
            $sql .= " ASC";
        }
        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }
            $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
        }
//        echo '<pre>';        print_r($sql);        echo '</pre>';        exit;
        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getProductDesignCategories($product_design_id) {
        $clipart_category_data = array();

        $query = $this->db->query("SELECT DISTINCT fpcc.category_clipart_id FROM " . DB_PREFIX . "fnt_product_design_to_category_clipart fpcc JOIN " . DB_PREFIX . " fnt_category_clipart cc ON(fpcc.category_clipart_id = cc.category_clipart_id) WHERE fpcc.product_design_id = '" . (int) $product_design_id . "' ORDER BY cc.sort_order ASC");

        foreach ($query->rows as $result) {
            $clipart_category_data[] = $result['category_clipart_id'];
        }

        return $clipart_category_data;
    }

    public function getProductDesignImages($product_design_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_design_element WHERE product_design_id = '" . (int) $product_design_id . "' ORDER BY sort_order ASC");

        return $query->rows;
    }

    public function getProductDesignImage($product_design_element_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_design_element WHERE product_design_element_id = '" . (int) $product_design_element_id . "'");

        return $query->row;
    }

    public function addProductDesignElement($product_design_element_id, $type, $source, $parameters, $sort_order) {
        $query = $this->db->query("INSERT INTO " . DB_PREFIX . "fnt_product_design_element_detail SET product_design_element_id = '" . (int) $product_design_element_id . "', type = '" . $this->db->escape($type) . "', value = '" . $this->db->escape($source) . "', parameters = '" . $this->db->escape($parameters) . "', sort_order = '" . (int) $sort_order . "'");
    }

    public function getProductDesignElement($product_design_element_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_design_element_detail WHERE product_design_element_id = '" . (int) $product_design_element_id . "'");
        return $query->rows;
    }

    public function getProductIdeaElement($product_ideas_element_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_ideas_element_detail WHERE product_ideas_element_id = '" . (int) $product_ideas_element_id . "'");
        return $query->rows;
    }

    public function getProductIdeaElements($product_ideas_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_ideas_element WHERE product_ideas_id = '" . (int) $product_ideas_id . "'");
        return $query->rows;
    }

    public function getProductIdeas($product_design_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_ideas pi LEFT JOIN " . DB_PREFIX . "fnt_product_ideas_description pid ON (pi.product_ideas_id = pid.product_ideas_id)  WHERE pi.product_design_id = '" . (int) $product_design_id . "' AND pid.language_id = '" . (int) $this->config->get('config_language_id') . "'");
        return $query->rows;
    }

    public function getAllProductIdeas($product_design_id) {
        if ($this->config->get('config_designs_view_all_design')) {
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_ideas pi LEFT JOIN " . DB_PREFIX . "fnt_product_ideas_description pid ON (pi.product_ideas_id = pid.product_ideas_id) LEFT JOIN " . DB_PREFIX . "fnt_product_design fpd ON (fpd.product_design_id = pi.product_design_id) WHERE pid.language_id = '" . (int) $this->config->get('config_language_id') . "' AND fpd.status = 1 AND pi.status = 1");
        } else {
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_ideas pi LEFT JOIN " . DB_PREFIX . "fnt_product_ideas_description pid ON (pi.product_ideas_id = pid.product_ideas_id) LEFT JOIN " . DB_PREFIX . "fnt_product_design fpd ON (fpd.product_design_id = pi.product_design_id) WHERE pi.product_design_id = '" . (int) $product_design_id . "' AND pid.language_id = '" . (int) $this->config->get('config_language_id') . "' AND fpd.status = 1 AND pi.status = 1");
        }
        return $query->rows;
    }

    public function addProductIdea($product_design_id, $product) {
        $query = $this->db->query("INSERT INTO " . DB_PREFIX . "fnt_product_idea SET product_design_id = '" . (int) $product_design_id . "', data_design = '" . $this->db->escape($product) . "', status = 1, data_added = NOW()");
        return $this->db->getLastId();
    }

    public function editProductIdea($product_idea_id, $product) {
        $query = $this->db->query("UPDATE " . DB_PREFIX . "fnt_product_idea SET data_design = '" . $this->db->escape($product) . "' WHERE product_idea_id = '" . (int) $product_idea_id . "'");
        return $this->db->getLastId();
    }

    public function getProductCustomerIdea($product_customer_idea_id) {
        $this->load->library('user');
        $this->user = new User($this->registry);
        $sql = "SELECT * FROM " . DB_PREFIX . "fnt_product_customer_idea WHERE product_customer_idea_id = '" . (int) $product_customer_idea_id . "'";
        if (!$this->user->isLogged()) {
            $sql .= " AND status = 1";
        }
        $query = $this->db->query($sql);
        return $query->row;
    }

    public function sortOderCategories($categories = array()) {

        $query = $this->db->query("SELECT category_clipart_id FROM " . DB_PREFIX . "fnt_category_clipart WHERE category_clipart_id IN(" . $categories . ") AND status = 1 ORDER BY sort_order ASC");
        return $query->rows;
    }

    public function getCategories($parent_id = 0) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int) $parent_id . "' AND cd.language_id = '" . (int) $this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int) $this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

        return $query->rows;
    }

    public function getIdeasByCustomer($customer_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_customer_idea WHERE customer_id = '" . (int) $customer_id . "' AND status = 1");
        return $query->rows;
    }

    public function addProductIdeaCustomer($product_design_id, $product, $customer_id, $name) {
        $query = $this->db->query("INSERT INTO " . DB_PREFIX . "fnt_product_customer_idea SET product_design_id = '" . (int) $product_design_id . "', customer_id = '" . (int) $customer_id . "', data_design = '" . $this->db->escape($product) . "', name = '" . $this->db->escape($name) . "', status = 1, date_added = NOW()");
        return $this->db->getLastId();
    }

    public function editDesignCustomerAprroved($product_customer_idea_accept_id, $product) {
        $this->db->query("UPDATE " . DB_PREFIX . "fnt_product_customer_idea_accept SET data_design = '" . $this->db->escape($product) . "', date_edit = NOW() WHERE product_customer_idea_accept_id = '" . (int) $product_customer_idea_accept_id . "'");
    }

    public function getSettingParameters($product_design_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_product_setting WHERE product_design_id = '" . (int) $product_design_id . "'");
        return $query->row;
    }


    public function getFirstDesignId() {

        $sql = "SELECT * FROM " . DB_PREFIX . "fnt_product_design fpd";
        $sql .= " LEFT JOIN " . DB_PREFIX . "fnt_product_to_category_design fptcd ON (fpd.product_design_id = fptcd.product_design_id)";
        $sql .= " LEFT JOIN " . DB_PREFIX . "fnt_category_design fcd ON (fptcd.category_design_id = fcd.category_design_id)";
        $sql .= " WHERE fpd.product_design_id != 0";
        $sql.=" ORDER BY fcd.sort_order ASC LIMIT 1 ";

        $query = $this->db->query($sql);
        $_aTmp = $query->row;
        return $_aTmp['product_design_id'];
        
    }

    public function getDesignCategories() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "fnt_category_design JOIN " . DB_PREFIX . "fnt_category_design_description USING(category_design_id) WHERE `status` = 1 ORDER BY `sort_order` ASC ");
        return $query->rows;
    }
}
