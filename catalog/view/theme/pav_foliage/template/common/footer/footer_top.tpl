<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
	<div class="container">
		<?php
			echo $helper->renderModule('pavnewsletter');
		?>
	</div>
</div>
