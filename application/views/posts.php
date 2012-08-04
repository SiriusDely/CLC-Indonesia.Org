<?php if (!empty($posts)): ?>
	<?php foreach ($posts as $post): ?>
	<div>
		<h2><a href="<?php echo site_url('posts/detail/' . $post['permalink']); ?>"><?php echo $post['title'] ?></a></h2>
		<p><small><?php echo $post['created']; ?> by <a href="#"><?php echo $post['username']; ?></a></small></p>
		<div>
			<?php if (!empty($post['image'])): ?>
				<img src="<?php echo base_url() . $post['image'] ?>" width="510" height="250"/>
			<?php endif; ?>
			<?php echo word_limiter($post['body'], 30); ?><br/>
			<?php echo anchor('posts/detail/' . $post['permalink'], 'baca selengkapnya..'); ?>
		</div>
	</div>
	<?php endforeach; ?>
<?php endif; ?>
