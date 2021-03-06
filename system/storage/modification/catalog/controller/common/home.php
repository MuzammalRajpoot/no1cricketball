<?php
class ControllerCommonHome extends Controller {
	public function index() {
$data['mobile'] = $this->config->get('mobile_general'); 
 if($this->session->data['device']=='mobile' && $data['mobile']['platforms_mobile']){ 
 return $this->response->redirect($this->url->link('mobile/home')); 
 }else{ 
 
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');

				$this->load->language('common/home');
				$data['objlang'] = $this->language;
			

				$data['mobile'] = $this->config->get('mobile_general');
		
		$data['header'] = $this->load->controller('common/header');

		 
 return  $this->response->setOutput($this->load->view('common/home', $data));
         
 } 
 
	}
}
