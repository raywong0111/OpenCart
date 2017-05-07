<div class="widget box widget-video">
	<?php if( $show_title ) { ?>
		<div class="panel-heading">
			<h4 class="panel-title"><?php echo $heading_title; ?></h4>
		</div>
	<?php } ?>
	<?php if ( isset($video_link) ) { ?>
		<div class="widget-inner box-content">
			<iframe src="<?php echo $video_link ?>" style="width:<?php echo $width; ?>px;height:<?php echo $height; ?>px; display:block;"></iframe>
			<?php if ( $subinfo ) { ?>
			<div><?php $subinfo ?></div>
			<?php } ?>
			<div class="overlay"></div>
		</div>
	<?php } ?>
</div>