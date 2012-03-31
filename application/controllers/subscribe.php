<?php

class Subscribe extends Controller {

	function __construct() {

		parent::Controller();

	}

	function index() {

		$this->load->view('subscribing');

	}

	function send() {
		$this->load->library('form_validation');
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');

		if($this->form_validation->run() == FALSE)
		{
			$this->load->view('subscribing');
		}
		else
		{
			// validation has passed. Now send the email
			$name = $this->input->post('name');
			$email = $this->input->post('email');

			$this->load->model('subscriber');
			$this->subscriber->create();

			$this->load->library('email');
			$this->email->set_newline("\r\n");
			$this->email->from('Sirius Dely', 'rious.delie@gmail.com');
			$this->email->to($email);
			$this->email->subject('[CLC-Indonesia.Org] Nantikan kabar selanjutnya.');
			$this->email->message('Halo, '.$_POST['name'].'! Alamat email kamu ('.$_POST['email'].') sudah tersimpan. Nantikan kabar selanjutnya dari CLC-Indonesia.Org.');

			if($this->email->send()) {
				$this->load->view('subscribing');
				print '<script type="text/javascript">'; 
				print 'alert("Halo, '.$_POST['name'].'! \nAlamat email kamu ('.$_POST['email'].') sudah tersimpan. \nNantikan kabar selanjutnya dari CLC-Indonesia.Org.")'; 
				print '</script>';
			} else {
				$this->load->view('subscribing');
				print '<script type="text/javascript">'; 
				print 'alert("Halo, '.$_POST['name'].'! \nAlamat email kamu belum bisa didaftarkan. \nMohon dicoba lagi.")'; 
				print '</script>';
			}
		}

	}

}

?>