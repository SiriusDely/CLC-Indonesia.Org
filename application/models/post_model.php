<?php

/**
* 
*/
class Post_model extends CI_Model {
	
	function __construct() {
		parent::__construct();
	}

	function get_last_ten_entries() {
		$query = $this->db->get('posts', 10);
		return $query->result();
	}
}

?>