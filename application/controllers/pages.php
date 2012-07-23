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
        $data['uri'] = '/home';
        $this->load->view('template', $data);
    }

    function articles() {
        $data['page'] = 'pages/articles';
        $data['uri'] = '/articles';
        $this->load->view('template', $data);
    }

    function events() {
        $data['page'] = 'pages/events';
        $data['uri'] = '/events';
        $this->load->view('template', $data);
    }

    function about() {
        $data['page'] = 'pages/about';
        $data['uri'] = '/about';
        $this->load->view('template', $data);
    }

    function contacts() {
        $data['page'] = 'pages/contacts';
        $data['uri'] = '/contacts';
        $this->load->view('template', $data);
    }

    function error() {
        $data['uri'] = 'pages/error';
        $this->load->view('template', $data);
    }

}

?>
