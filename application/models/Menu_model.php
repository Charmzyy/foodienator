<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Menu_model extends CI_Model {
    
    public function create($formArray) {
        $this->db->insert('clothes', $formArray);
    }

    public function getMenu() {
        $result = $this->db->get('clothes')->result_array();
        return $result;
    }

    public function getSingleDish($id) {
        $this->db->where('d_id', $id);
        $dish = $this->db->get('clothes')->row_array();
        return $dish;
    }

    public function update($id, $formArray) {
        $this->db->where('d_id', $id);
        $this->db->update('clothes', $formArray);
    } 

    public function delete($id) {
        $this->db->where('d_id',$id);
        $this->db->delete('clothes');
    }

    public function countDish() {
        $query = $this->db->get('clothes');
        return $query->num_rows();
    }

    public function getclothes($id) {
        $this->db->where('r_id', $id);
        $dish = $this->db->get('clothes')->result_array();
        return $dish;
    }
}
