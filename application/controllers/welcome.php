<?php

class Welcome extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $data['page'] = 'pages/home';
        $data['uri'] = '/home';
        $this->load->view('template', $data);
    }

}

/* End of file welcome.php */
/* Location: ./system/application/controllers/welcome.php */