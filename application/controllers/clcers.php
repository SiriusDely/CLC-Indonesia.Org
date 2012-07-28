<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Clcers extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('clcers_model');
    }

    function login() {

        $this->form_validation->set_rules('username', 'username', 'required|xss_clean');
        $this->form_validation->set_rules('password', 'password', 'required|xss_clean');

        $this->form_validation->set_error_delimiters('', '<br/>');

        if ($this->form_validation->run() == TRUE) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');

            $login_data = $this->clcers_model->check_clcer_login($username, $password);
            if ($login_data) {
                $session_data = array(
                    'id' => $login_data['id'],
                    'username' => $login_data['username'],
                    'type' => $login_data['type'],
                    'is_login' => TRUE
                );
                $this->session->set_userdata($session_data);
                if ($this->session->userdata('type') == 'admin') {
                    redirect('admin/pages/index');
                } else {
                    redirect('clcers/dashboard');
                }
            } else {
                $this->session->set_flashdata('message', 'Login Gagal, Kombinasi username dan password salah.');
                redirect('clcers/login');
            }
        }
        $data['page'] = 'clcers/login';
        $data['uri'] = '/login';
        $this->load->view('template', $data);
    }

    function dashboard() {
        $this->check_logged_in();
        $this->load->view('clcers/dashboard');
    }

    function logout() {

        $data = array
            (
            'clcer_id' => 0,
            'username' => 0,
            'type' => 0,
            'is_login' => FALSE
        );

        $this->session->sess_destroy();
        $this->session->unset_userdata($data);

        redirect('clcers/login');
    }

    public function check_logged_in() {
        if ($this->session->userdata('is_login') != TRUE) {
            redirect('clcers/login', 'refresh');
            exit();
        }
    }

    public function is_logged_in() {
        if ($this->session->userdata('logged_in') == TRUE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

?>
