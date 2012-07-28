<?php foreach ($posts as $post_item): ?>
	<?php echo '<h2>'.$post_item['title'].'</h2>' ?>
	<?php echo '<p>'.$post_item['body'].'</p>' ?>
<?php endforeach ?>