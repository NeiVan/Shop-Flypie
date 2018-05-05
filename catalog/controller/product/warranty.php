<?php
/*
Version: 1.0
Author: June
*/

class ControllerProductWarranty extends Controller {

    public function index() {

        $this->load->language('product/warranty');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('account/customer');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_support'),
            'href' => $this->url->link('product/support', '', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_warranty'),
            'href' => $this->url->link('product/warranty', '', true)
        );


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if($this->language->get('text_warranty')=="After-Sale Service Policy"){
            $this->response->setOutput($this->load->view('product/warrantyus', $data));
        }else {
            $this->response->setOutput($this->load->view('product/warranty', $data));
        }
    }

}
