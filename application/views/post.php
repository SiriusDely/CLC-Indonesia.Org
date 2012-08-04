<?php if (!empty($post)): ?>
	<div id="post">
		<h2><?php echo $post['title'] ?></h2>
		<p><small><?php echo $post['created']; ?></small></p>
		<div>
			<?php if (!empty($post['image'])): ?>
			<img src="<?php echo base_url() . $post['image'] ?>"/>
		<?php endif; ?>
		<?php echo $post['body'] ?><br/>

	</div>
	<hr/>
	<div class="fb-comments" data-href="<?php echo site_url('posts/detail/' . $post['permalink']); ?>" data-num-posts="5" data-width="680"></div>
</div>
<?php endif; ?>
