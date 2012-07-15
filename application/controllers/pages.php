<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Pages extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function home() {
        $data['page'] = 'pages/home';
        $data['uri'] = 'pages/home';
        $this->load->view('template', $data);
    }

    function about() {
        $data['page'] = 'pages/about';
        $data['uri'] = 'pages/about';
        $this->load->view('template', $data);
    }

    function contacts() {
        $data['page'] = 'pages/contacts';
        $data['uri'] = 'pages/contacts';
        $this->load->view('template', $data);
    }

}

?>
