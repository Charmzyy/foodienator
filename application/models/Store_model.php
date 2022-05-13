<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Store_model extends CI_Model {
    
    public function create($formArray) {
        $this->db->insert('shops', $formArray);
    }

    public function getStores() {
        $result = $this->db->get('shops')->result_array();
        return $result;
    }

    public function getStore($id) {
        $this->db->where('r_id', $id);
        $store = $this->db->get('shops')->row_array();
        return $store;
    }

    public function update($id, $formArray) {
        $this->db->where('r_id', $id);
        $this->db->update('shops', $formArray);
    } 

    public function delete($id) {
        $this->db->where('r_id',$id);
        $this->db->delete('shops');
    }

    public function countStore() {
        $query = $this->db->get('shops');
        return $query->num_rows();
    }

    public function getResInfo() {
        $this->db->select('*');
        $this->db->from('shops');
        $this->db->join('shop_category','shops.c_id = shop_category.c_id');
        $result = $this->db->get()->result_array();
        return $result;
    }

}
