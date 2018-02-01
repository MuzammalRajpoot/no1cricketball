
<footer class="footer-container typefooter-<?php echo isset($typefooter) ? $typefooter : '1'?>">
	
	<!-- FOOTER TOP -->

	<?php if ($footer_layout2) : ?>
	<div class="footer-main">

		<?php echo $footer_layout2; ?>

	</div>
	<?php endif; ?>

	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom">
		<div class="container">
			<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
				<div class="col-lg-12 col-xs-12 payment-w">
					<?php
					if ((isset($imgpayment) && $imgpayment != '') ) { ?>
						<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
					<?php } ?>
				</div>
			<?php endif; ?>
			<div class="copyright-w">
				
				<?php $col_copyright = ($imgpayment_status) ? 'col-lg-12 col-xs-12 copyright' : 'col-lg-12'?>
				<div class="<?php echo $col_copyright;?>">
					<?php 
					$datetime = new DateTime();
					$cur_year	= $datetime->format('Y');
					echo (!isset($copyright) || !is_string($copyright) ? $powered : str_replace('{year}', $cur_year, html_entity_decode($copyright, ENT_QUOTES, 'UTF-8')));?>
				</div>
			</div>
		</div>
	</div>
</footer>