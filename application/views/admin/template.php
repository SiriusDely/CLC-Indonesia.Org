<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="author" content="Sirius Dely">
    <link href="<?php echo base_url() ?>public/css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="shortcut icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Admin Panel CLC Indonesia</title>
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
        <div id="page">
            <!-- start content -->
            <div id="content">
                <h2>Admin Panel</h2>
                <?php echo anchor('admin/pages', 'Pages') ?> |
                <?php echo anchor('admin/categories', 'Categories') ?> |
                <?php echo anchor('admin/posts', 'Posts') ?> |
                <?php echo anchor('clcers/logout', 'Logout') ?> 
                <?php if (!empty($content)): ?>
                    <?php $this->load->view($content); ?>
                <?php endif; ?>

                <p>Admin Panel CLC Indonesia</p>
            </div>
        </div>
    </div>
</body>
</html>
