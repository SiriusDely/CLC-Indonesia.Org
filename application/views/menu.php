<div id="menu">
    <ul>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/pages/home')?>" <?php if($page=='pages/home'){?> class="current"<?php }?>>Home</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('#')?>">Articles</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('#')?>">Events</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('#')?>">About</a></li>
		<li class="divider"></li>
        <li><a href="<?php echo site_url('/pages/contacts')?>" <?php if($page == 'pages/contacts'){?> class="current"<?php }?>>Contacts</a></li>
    </ul>
</div>