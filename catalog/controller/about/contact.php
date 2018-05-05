<?php
/*
Version: 1.0
Author: June
*/

class ControllerAboutContact extends Controller {

    public function index() {

        $this->load->language('about/contact');

        $this->document->setTitle($this->language->get('heading_title'));

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
            'text' => $this->language->get('text_contactus'),
            'href' => $this->url->link('about/contact', '', true)
        );

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if($this->language->get('text_contactus')=="Contact Us"){
            $this->response->setOutput($this->load->view('about/en_contact', $data));
        }else {
            $this->response->setOutput($this->load->view('about/contact', $data));
        }
    }

}
