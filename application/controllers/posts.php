<?php
	/**
	* 
	*/
	class Posts extends CI_Controller {
		
		function __construct() {
			parent::__construct();
			$this->load->model('post_model');
		}

		function index() {
			$data['posts'] = $this->post_model->get_last_ten_entries();
			$this->load->view('posts', $data);
		}
	}
?>