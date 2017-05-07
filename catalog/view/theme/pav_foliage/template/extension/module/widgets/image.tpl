<?php if ( isset($thumbnailurl) )  { ?>
<div class="widget-images <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading"><h3 class="panel-title"><?php echo $heading_title?></h3></div>
	<?php } ?>
	<div class="widget-inner img-adv box-content clearfix">
		 <div class="image-item">
		 	<a class="click <?php echo $effect_type;?>" style="display: block" href="<?php echo $link; ?>">
		 		<img class="img-responsive" alt=" " src="<?php echo $thumbnailurl; ?>"/>
		 	</a>
		 </div>
	</div>
</div>
<?php } ?>
<script type="text/javascript">
	$(document).ready(function(){
		$(".widget-images").click(function(){
			var link = $(".click").attr("href");
			$(location).attr('href',link);
		});
	});
</script>