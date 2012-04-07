<?php
class Pages extends Controller {
	
	function __construct() {
		parent::Controller();
	}

	function home() {
		$this->load->view('pages/home');
	}
}
?>