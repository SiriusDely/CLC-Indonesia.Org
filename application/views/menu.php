<div id="menu">
    <ul>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/pages/home')?>"
            <?php if($uri=='pages/home'){?> class="current"<?php }?>>Home</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('#')?>">Articles</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('#')?>">Events</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/pages/about')?>"
            <?php if($uri == 'pages/about'){?> class="current"<?php }?>>About</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/pages/contacts')?>"
            <?php if($uri == 'pages/contacts'){?> class="current"<?php }?>>Contacts</a></li>
    </ul>
</div>