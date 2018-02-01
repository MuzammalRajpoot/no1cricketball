
<footer class="footer-container typefooter-<?php echo isset($typefooter) ? $typefooter : '1'?>">
	
	<!-- FOOTER TOP -->

	<?php if ($footer_layout1) : ?>
	<div class="footer-main">

		<?php echo $footer_layout1; ?>

	</div>
	<?php endif; ?>

	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom ">
		<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
		<div class="container">
			<div class="col-lg-12 col-xs-12 payment-w">
				<?php
				if ((isset($imgpayment) && $imgpayment != '') ) { ?>
					<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
				<?php } ?>
			</div>
		</div>
		<?php endif; ?>
		<div class="copyright-w">
			<div class="container">
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