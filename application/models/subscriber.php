<?php

class Subscriber extends Model {

	function __construct() {

		parent::Model();

	}

    function create() {
        $data = array(
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email'),
        );
        $this->db->insert('subscriber', $data);
    }

}

?>