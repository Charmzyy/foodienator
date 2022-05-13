<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class SubCategory_model extends CI_Model {
    
    public function create_subcat($subcat) {
        $this->db->insert('shopsub_category', $subcat);
    }

    public function getSubcategory() {
        $subcats_result = $this->db->get('shopsub_category')->result_array();
        return $subcats_result;
    }

    public function getSubcat($id) {
        $this->db->where('s_id', $id);
        $subcat = $this->db->get('shopsub_category')->row_array();
        return $subcat;
    }

    public function countSubcategory() {
        $query = $this->db->get('shopsub_category');
        return $query->num_rows();
    }

    public function update($id, $subcat) {
        $this->db->where('s_id', $id);
        $this->db->update('shopsub_category', $subcat);
    }

    public function delete($id) {
        $this->db->where('s_id', $id);
        $this->db->delete('shopsub_category');
    }

}