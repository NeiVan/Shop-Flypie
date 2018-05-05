<?php
class ControllerExtensionModuleYoutube extends Controller {
	private $error = array();

	public function install(){
		$sql = "ALTER TABLE `" . DB_PREFIX . "product` ADD `youtube` TEXT CHARACTER SET utf8 COLLATE utf8_bin NOT NULL";
		$this->db->query($sql);		
		
	}
	
	public function uninstall(){
		$sql = "ALTER TABLE `" . DB_PREFIX . "product` DROP `youtube`;";
		$this->db->query($sql);
	}
	
	public function index() {
	
		$this->load->language('extension/module/youtube');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
	
		if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('youtube', $this->request->post);
			
			$this->sessions->data['success'] = $this->language->get('text_success');
			
			$this->response->redirect($this->url->link('extension/extension' . '&type=module', 'token=' . $this->session->data['token'], true));
		}
	
		$data['heading_title'] = $this->language->get('heading_title');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add_module'] = $this->language->get('button_add_module');
		$data['button_remove'] = $this->language->get('button_remove');
		$data['text_explain'] = $this->language->get('text_explain');
	
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_status'] = $this->language->get('entry_status');


		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/extension' . '&type=module', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/youtube', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/module/youtube', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('extension/extension' . '&type=module', 'user_token=' . $this->session->data['user_token'], true);

		
		
			if (isset($this->request->post['youtube_module'])) {
				$data['modules'] = $this->request->post['youtube_module'];
			} elseif ($this->config->get('youtube_module')) { 
				$data['modules'] = $this->config->get('youtube_module');
			}
	
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/youtube', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/youtube')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}