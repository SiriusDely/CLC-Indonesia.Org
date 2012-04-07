<?php

class Site extends Controller {

	function index() {
		$this->load->model('post_model');
		$data['rows'] = $this->post_model->getAll();
		$this->load->view('home', $data);
	}

	function send() {
		$this->load->library('form_validation');
		// field name, error message, validation rules
		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');

		if($this->form_validation->run() == FALSE)
		{
			$this->load->view('home');
		}
		else
		{
			// validation has passed. Now send the email
			$name = $this->input->post('name');
			$email = $this->input->post('email');

			$this->load->model('subscriber');
			$this->subscriber->create();

			$to = $email;
			$subject = '[CLC-Indonesia.Org] Nantikan kabar selanjutnya.';
			$body = 'Halo, '.$_POST['name'].'!'."\r\n\r\n".
					'Alamat email kamu ('.$_POST['email'].') sudah tersimpan.'."\r\n".
					'Nantikan kabar selanjutnya dari CLC-Indonesia.Org.'."\r\n\r\n".
					'Salam :)';
    		if (mail($to, $subject, $body)) {
				$this->load->view('home');
				print '<script type="text/javascript">'; 
				print 'alert("Halo, '.$_POST['name'].'! \nAlamat email kamu ('.$_POST['email'].') sudah tersimpan. \nNantikan kabar selanjutnya dari CLC-Indonesia.org.")'; 
				print '</script>';
			} else {
				$this->load->view('home');
				print '<script type="text/javascript">'; 
				print 'alert("Halo, '.$_POST['name'].'! \nAlamat email kamu belum bisa didaftarkan. \nMohon dicoba lagi.")'; 
				print '</script>';
			}
		}

	}
}

?>