<?php if (isset($setting) && $setting['so_sociallogin_enable']) {?>
    <div class="row">
        <?php if (isset($this->session->data['warning'])) { ?>
        <div class="alert alert-warning"><i class="fa fa-check-circle"></i> <?php echo $this->session->data['warning']; ?></div>
        <?php } ?>
      
        <div class="social_login pull-right" id="so_sociallogin">
            <?php if($setting['so_sociallogin_fbstatus']){?>
                <?php if ($setting['so_sociallogin_button'] == 'image') {?>
                    <a class="social-icon"  href="<?php echo $fblink; ?>">
                        <img class="img-responsive" src="<?php echo $fbimage; ?>" 
                            data-toggle="tooltip" alt="<?php echo $setting['so_sociallogin_fbtitle']; ?>" 
                            title="<?php echo $setting['so_sociallogin_fbtitle']; ?>"
                        />
                    </a>
                <?php }else {?>
                    <a href="<?php echo $fblink?>" class="btn btn-social-icon btn-sm btn-facebook"><i class="fa fa-facebook fa-fw" aria-hidden="true"></i></a>
                <?php } ?>
            <?php } ?>
            
            <?php if($setting['so_sociallogin_twitstatus']){?>
                <?php if ($setting['so_sociallogin_button'] == 'image') {?>
                    <a class="social-icon"  href="<?php echo $twitlink; ?>">
                        <img class="img-responsive" src="<?php echo $twitimage; ?>" 
                            data-toggle="tooltip" alt="<?php echo $setting['so_sociallogin_twittertitle']; ?>" 
                            title="<?php echo $setting['so_sociallogin_twittertitle']; ?>"
                        />
                    </a>
                <?php }else {?>
                    <a href="<?php echo $twitlink?>" class="btn btn-social-icon btn-sm btn-twitter"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></a>
                <?php }?>
            <?php } ?>
            
            <?php if($setting['so_sociallogin_googlestatus']){?>
                <?php if ($setting['so_sociallogin_button'] == 'image') {?>
                    <a class="social-icon"  href="<?php echo $googlelink; ?>">
                        <img class="img-responsive" src="<?php echo $googleimage; ?>" 
                            data-toggle="tooltip" alt="<?php echo $setting['so_sociallogin_googletitle']; ?>" 
                            title="<?php echo $setting['so_sociallogin_googletitle']; ?>" 
                        />
                    </a>
                <?php }else {?>
                    <a href="<?php echo $googlelink?>" class="btn btn-social-icon btn-sm btn-google-plus"><i class="fa fa-google fa-fw" aria-hidden="true"></i></a>
                <?php }?>
            <?php } ?>
            
            <?php if($setting['so_sociallogin_linkstatus']){?>
                <?php if ($setting['so_sociallogin_button'] == 'image') {?>
                    <a class="social-icon"  href="<?php echo $linkdinlink; ?>">
                        <img class="img-responsive" src="<?php echo $linkdinimage; ?>" 
                            data-toggle="tooltip" alt="<?php echo $setting['so_sociallogin_linkedintitle']; ?>" 
                            title="<?php echo $setting['so_sociallogin_linkedintitle']; ?>"
                        />
                    </a>
                <?php }else {?>
                    <a href="<?php echo $linkdinlink?>" class="btn btn-social-icon btn-sm btn-linkdin"><i class="fa fa-linkedin fa-fw" aria-hidden="true"></i></a>
                <?php }?>
            <?php } ?>
        </div>
    </div>
<?php }?>