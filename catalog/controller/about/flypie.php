<?php
/*
Version: 1.0
Author: June
*/

class ControllerAboutFlypie extends Controller {

    public function index() {

        $this->load->language('about/flypie');

        $this->document->setTitle($this->language->get('heading_title'));
        $this->document->addStyle('catalog/view/theme/techone/css/about.css');

        $this->load->model('account/customer');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_about'),
            'href' => $this->url->link('about/about', '', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_flypie'),
            'href' => $this->url->link('about/flypie', '', true)
        );

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if($this->language->get('text_flypie')=="About Flypie"){
            $this->response->setOutput($this->load->view('about/en_flypie', $data));
        }else {
            $this->response->setOutput($this->load->view('about/flypie', $data));
        }
    }

}
