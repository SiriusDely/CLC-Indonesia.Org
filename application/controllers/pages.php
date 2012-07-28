<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Pages extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('pages_model');
    }

    function home() {
        $data['pages'] = $this->pages_model->findById(1);
        $data['page'] = 'pages';
        $data['uri'] = '/home';
        $this->load->view('template', $data);
    }

    function articles() {
        $data['pages'] = $this->pages_model->findById(2);
        $data['page'] = 'pages';
        $data['uri'] = '/articles';
        $this->load->view('template', $data);
    }

    function events() {
        $data['pages'] = $this->pages_model->findById(2);
        $data['page'] = 'pages';
        $data['uri'] = '/events';
        $this->load->view('template', $data);
    }

    function about() {
        $data['pages'] = $this->pages_model->findById(1);
        $data['page'] = 'pages';
        $data['uri'] = '/about';
        $this->load->view('template', $data);
    }

    function contacts() {
        $data['pages'] = $this->pages_model->findById(2);
        $data['page'] = 'pages';
        $data['uri'] = '/contacts';
        $this->load->view('template', $data);
    }

    function error() {
        $data['uri'] = 'pages/error';
        $this->load->view('template', $data);
    }

}

?>
