<?php
/*
Version: 1.0
Author: June
*/

class ControllerMaintenanceService extends Controller {

    public function index() {

        $this->load->language('maintenance/service');

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
            'text' => $this->language->get('text_maintenanceservice'),
            'href' => $this->url->link('maintenance/service', '', true)
        );

        //内容
        $data['content'] = $this->language->get('text_content');
        $data['name'] = $this->language->get('text_download_name');

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if($this->language->get('text_maintenanceservice')=='Repair Service'){
            $this->response->setOutput($this->load->view('maintenance/en_service', $data));
        }else {
            $this->response->setOutput($this->load->view('maintenance/service', $data));
        }


    }

}
