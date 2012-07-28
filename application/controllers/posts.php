<?php

/*
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/

class Posts extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('posts_model');
	}

	function home() {
		$data['posts'] = $this->posts_model->findActive(5);
		$data['page'] = 'posts';
		$data['uri'] = '/home';
		$this->load->view('template', $data);
	}

	function articles($page = null) {
		$data['posts'] = $this->posts_model->findActive(5);
		$data['page'] = 'posts';
		$data['uri'] = '/articles';
		$this->load->view('template', $data);
	}

	function events($page = null) {
		$data['posts'] = $this->posts_model->findActive(5);
		$data['page'] = 'posts';
		$data['uri'] = '/events';
		$this->load->view('template', $data);
	}

}

?>
