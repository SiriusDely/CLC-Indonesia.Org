<div id="menu">
    <ul>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/home')?>"
            <?php if($uri=='/home'){?> class="current"<?php }?>>Home</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/articles')?>"
                        <?php if($uri=='/articles'){?> class="current"<?php }?>>Articles</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/events')?>"
                        <?php if($uri=='/events'){?> class="current"<?php }?>>Events</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/about')?>"
            <?php if($uri == '/about'){?> class="current"<?php }?>>About</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/contacts')?>"
            <?php if($uri == '/contacts'){?> class="current"<?php }?>>Contacts</a></li>
    </ul>
</div>