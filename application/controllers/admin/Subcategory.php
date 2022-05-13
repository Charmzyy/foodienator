<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Category extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $admin = $this->session->userdata('admin');
        if(empty($admin)) {
            $this->session->set_flashdata('msg', 'Your session has been expired');
            redirect(base_url().'admin/login/index');
        }
    }

    public function index() {
        $this->load->model('Subcategory_model');
        $subcats = $this->Category_model->getSubcategory();
        $subcats_data['subcats'] = $subcats;
        $this->load->view('admin/partials/header');
        $this->load->view('admin/category/list', $subcats_data);
        $this->load->view('admin/partials/footer');
    }

    public function create_subcategory(){
        $this->load->model('SubCategory_model');
        $this->load->library('form_validation');
        $this->form_validation->set_rules('subcategory','SubCategory', 'trim|required');

        if($this->form_validation->run() == true) {
            
            $subcat['s_name'] = $this->input->post('subcategory');
            $this->SubCategory_model->create_subcat($subcat);
            
            $this->session->set_flashdata('subcat_success', 'subcategory added successfully');
            redirect(base_url().'admin/subcategory/index');
        } else {
            $this->load->view('admin/partials/header');
            $this->load->view('admin/subcategory/add_subcat');
            $this->load->view('admin/partials/footer');
        }
    }

    public function edit($id) {
        
        $this->load->model('SubCategory_model');
        $subcat = $this->SubCategory_model->getsubCat($id);

        if(empty($subcat)) {
            $this->session->set_flashdata('error', 'Category not found');
            redirect(base_url().'admin/subcategory/index');
        }

        $this->load->library('form_validation');
        $this->form_validation->set_rules('subcategory','SubCategory', 'trim|required');

        if($this->form_validation->run() == true) {

            $subcat['s_name'] = $this->input->post('subcategory');
            $this->SubCategory_model->update($id, $subcat);
            
            $this->session->set_flashdata('subcat_success', 'subcategory added successfully');
            redirect(base_url().'admin/subcategory/index');

        } else {
            $data['subcat'] = $subcat;
            $this->load->view('admin/partials/header');
            $this->load->view('admin/subcategory/edit', $data);
            $this->load->view('admin/partials/footer');
        }

    }

    public function delete($id) {
        $this->load->model('SubCategory_model');
        $subcat = $this->SubCategory_model->getsubCat($id);

        if(empty($subcat)) {
            $this->session->set_flashdata('error', 'Category not found');
            redirect(base_url().'admin/subcategory/index');
        }

        $subcat = $this->SubCategory_model->delete($id);

        $this->session->set_flashdata('subcat_success', 'subCategory deleted successfully');
        redirect(base_url().'admin/subcategory/index');
    }
}