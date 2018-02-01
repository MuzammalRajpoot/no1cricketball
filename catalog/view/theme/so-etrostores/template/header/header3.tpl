
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<!-- HEADER TOP -->
	<div class="header-top compact-hidden">
		<div class="container">
			<div class="row">
			<div class="inner">
				<div class="header-top-left  col-lg-6 col-md-5 col-sm-6 col-xs-6">
					<?php if($phone_status):?>
						<div class="telephone hidden-xs hidden-sm hidden-md" >
							<?php
								if (isset($contact_number) && is_string($contact_number)) {
									echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
								} else {echo 'Telephone No';} 
							?>
						</div>
					<?php endif; ?>
					<!-- LANGUAGE CURENCY -->
					<?php if($lang_status):?>
					<ul class="top-link list-inline lang-curr">
						<li class="currency"> <?php echo $currency; ?> </li>
						<li class="language"><?php echo $language; ?></li>
					</ul>
					<?php endif; ?>
				</div>
				<div class="header-top-right collapsed-block col-lg-6 col-md-7 col-sm-6 col-xs-6">					
					<ul class="top-link list-inline">
						<li class="account" id="my_account"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="btn-xs dropdown-toggle" data-toggle="dropdown"> <span><?php echo $text_account; ?></span> <span class="fa fa-caret-down"></span></a>
							<ul class="account dropdown-menu ">
								<?php if ($logged) { ?>
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
								<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
								<li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="top-link-wishlist" title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
								<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
								
								<?php } else { ?>
								<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
								<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<!-- WISHLIST  -->
						<?php if($wishlist_status):?><li class="wishlist hidden-xs"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="btn-link" title="<?php echo $text_wishlist; ?>"><span ><?php echo $text_wishlist; ?></span></a></li><?php endif; ?>
						<!-- COMPARE -->
						<?php if($checkout_status):?><li class="checkout hidden-xs"><a href="<?php echo $checkout; ?>" class="btn-link" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li><?php endif; ?>
						
						
					</ul>
		
				</div>
			</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-middle">
		<div class="container">
			<div class="row">
				<!-- LOGO -->
				<div class="navbar-logo col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="logo">
				   		<?php  $this->soconfig->get_logo();?>
				   	</div>
				</div>
				<div class="middle2 col-lg-6 col-md-6 col-sm-4 col-xs-4">	
					<div class="search-header-w">
						<div class="icon-search hidden-lg hidden-md"><i class="fa fa-search"></i></div>				
						<?php  echo $content_search; ?>
					</div>
					
									
				</div>
				<div class="middle-right col-lg-3 col-md-3 col-sm-8 col-xs-8">					
					<div class="signin-w font-title hidden-sm hidden-xs">
						<ul class="signin-link">
						<?php if ($logged) { ?>
							<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>							
							<?php } else { ?>
							<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
							<li class="regis"><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>							
						<?php } ?>
						</ul>
						<?php if($welcome_message_status):?>
							<div class="hidden-sm hidden-xs welcome-msg">
								<?php
									if (isset($welcome_message) && is_string($welcome_message)) {
										echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
									} else {echo 'Default welcome msg!';}
								?>
							</div>
						<?php endif; ?>
					</div>
					<div class="shopping_cart">							
					 	<?php echo $cart; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER BOTTOM -->
	<div class="header-bottom compact-hidden">
		<div class="container">
			<div class="header-bottom-inner">
		
				<div class="header-bottom-left menu-vertical">
					<?php if (trim($content_menu1)) : 
						echo $content_menu1;
					endif; ?>
				</div>
				
				<div class="header-bottom-right">					
					<!-- BOX CONTENT MENU -->
					<?php echo $content_menu; ?>						
				</div>
									
			</div>
		</div>
	</div>
	
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>