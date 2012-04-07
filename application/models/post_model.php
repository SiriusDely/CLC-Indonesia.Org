<?php
	
class Post_model extends Model {

	function getAll() {
		$q = $this->db->get('post');
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $row) {
	    		$data[] = $row;
			}
			return $data;
		}
	}
}

?>