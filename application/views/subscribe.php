<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html lang="en">
	<head>
		<meta name="author" content="Sirius Dely">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/subscribe.css" media="screen"
			title="no title" charset="utf-8">
		<link rel="shortcut icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon" />
		<title>Christian Life Community - Indonesia</title>
	</head>
	<body>
		<center>
			<img src="<?php echo base_url(); ?>images/logo.png" width="100" height="100" />
			<h1>Christian Life Community - Indonesia</h1>
		</center>
		<div id="newsletter_info">
			<p>Situs ini sedang <i>diramu</i>. <br/>
				Akan <i>dihidangkan</i> segera.</p>
			<p><b>Ingin dikabari lebih lanjut? <br/>
				Sila isikan <u>nama</u> dan <u>email</u> di bawah ini.</b></p>
		</div>
		<div id="newsletter_form">
			<!--<h2>Signup for the Newsletter</h2>-->
			<?php echo form_open('subscribe/send'); ?>

			<?php
				$name_data = array(
					'name' => 'name',
					'id' => 'name',
					'value' => set_value('name')
				);
			?>

			<p>
				<label for="name">Nama Lengkap: </label>
				<?php echo form_input($name_data); ?>
			</p>
			<p>
				<label for="name">Alamat Email: </label>
				<input type="text" name="email" value="<?php echo set_value('email'); ?>" />
			</p>
			<center><p><?php echo form_submit('submit', 'Simpan'); ?></p></center>

			<?php echo form_close(); ?>

			<?php echo validation_errors('<p class="error"/>'); ?>
		</div><!-- end newsletter-form -->
	</body>
</html>