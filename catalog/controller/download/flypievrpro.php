<?php
/*
Version: 1.0
Author: June
*/

class ControllerDownloadFlypievrpro extends Controller {

    public function index() {

        $this->load->language('download/flypievrpro');

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
            'text' => $this->language->get('text_flypievrpro'),
            'href' => $this->url->link('download/flypievrpro', '', true)
        );

        $data['manual'] = $this->language->get('text_manual');
        $data['name'] = $this->language->get('text_name');
        $data['date'] = $this->language->get('text_date');
        $data['apptitle'] = $this->language->get('text_apptitle');
        $data['ios'] = $this->language->get('text_ios');
        $data['ios_version'] = $this->language->get('text_ios_version');
        $data['android'] = $this->language->get('text_android');
        $data['android_version'] = $this->language->get('text_android_version');
        $data['addition'] = $this->language->get('text_addition');
        $data['ios_name'] = $this->language->get('text_ios_name');
        $data['ios_image'] = $this->language->get('text_ios_image');
        $data['android_name'] = $this->language->get('text_android_name');
        $data['android_image'] = $this->language->get('text_android_image');


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->response->setOutput($this->load->view('download/flypievrpro', $data));
    }

}
