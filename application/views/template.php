<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="author" content="Sirius Dely">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<?php echo base_url() ?>public/css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="shortcut icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon" />
    <title>Christian Life Community - Indonesia</title>
    <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-33721931-1']);
    _gaq.push(['_trackPageview']);
    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    </script>
</head>
<body>
    <div id="wrapper">
        <!-- start header -->
        <?php $this->load->view('header') ?>
        <!-- end header -->
        <!-- start menu -->
        <?php $this->load->view('menu', $uri) ?>
        <!-- end menu -->
        <!-- start page -->
        <div id="page">
            <!-- start content -->
            <div id="content">
                <?php if (!empty($page)): ?>
                <?php $this->load->view($page); ?> 
            <?php else: ?>
            <?php $this->load->view('error'); ?>
        <?php endif; ?>
    </div>
    <!-- end content -->
    <!-- start sidebars -->
    <?php $this->load->view('right') ?>
    <!-- end sidebars -->
    <div style="clear: both;">&nbsp;
    </div>
</div>
<!-- end page -->
</div>
</body>
</html>
