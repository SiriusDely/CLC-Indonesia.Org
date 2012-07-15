<h2>Dashboard User</h2><br/>
Anda adalah :
<?php
if ($this->session->userdata('type') == 'admin'):
    echo 'Admin';
elseif ($this->session->userdata('type') == 'contributors'):
    echo 'Contributors';
elseif ($this->session->userdata('type') == 'spectators'):
    echo 'Spectators';
endif;
?>
<br/>
<h3><strong><?php echo anchor('clcers/logout', 'Logout') ?></strong></h3>