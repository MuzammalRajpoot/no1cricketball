<?php echo $header; ?>

<div id="content">
	<div class="custom-scoll hidden-sm hidden-md hidden-xs">
		<div class="custom-html">
			<div class="scoll-cate list_diemneo">
				<ul>
					<li class="neo1 active"><span><?php echo $objlang->get('text_neo1'); ?></span></li>
					<li class="neo2"><span><?php echo $objlang->get('text_neo2'); ?></span></li>
					<li class="neo3"><span><?php echo $objlang->get('text_neo3'); ?></span></li>
					<li class="neo4"><span><?php echo $objlang->get('text_neo4'); ?></span></li>
					<li class="neo5"><span><?php echo $objlang->get('text_neo5'); ?></span></li>
					<!-- <li class="neo6"><span>&nbsp;</span></li> -->
				</ul>
			</div>
		</div>
	</div>

	<?php echo $content_top; ?>
	<?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>