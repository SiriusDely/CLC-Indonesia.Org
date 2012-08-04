<?php if (!empty($post)): ?>

	<div>
		<h2><?php echo $post['title'] ?></h2>
		<p><small><?php echo $post['created']; ?></small></p>
		<div>
			<?php if (!empty($post['image'])): ?>
				<img src="<?php echo base_url() . $post['image'] ?>" width="510" height="250"/>
			<?php endif; ?>
			<?php echo $post['body'] ?><br/>

		</div>
	</div>

<?php endif; ?>
