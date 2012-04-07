<div id="newsletter_info">
	<p>CLC Indonesia is preparing the web-site.</p>
	<p>Please come back soon.</p>
	<p>Or simply provide your email so we can reach you back when the site is ready.</p>
</div>
<!-- start newsletter-form -->
<div id="newsletter_form">
	<?php echo form_open('site/send'); ?>
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
</div>
<!-- end newsletter-form -->
