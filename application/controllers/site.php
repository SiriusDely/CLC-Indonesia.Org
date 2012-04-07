<?php

class Site extends Controller {

	function index() {
		$this->load->model('post_model');
		$data['rows'] = $this->post_model->getAll();
		$this->load->view('home', $data);
	}
}

?>