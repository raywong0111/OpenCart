<?php if( count($testimonials) ) { ?>
	<?php $id = rand(1,10)+rand();?>
   	<div id="pavtestimonial<?php echo $id;?>" class="carousel slide pavtestimonial <?php echo $class; ?>">
   		<h4 class="panel-title">WHAT OUR CLIENTS SAY?</h4>
		<div class="carousel-inner">
			<?php foreach ($testimonials as $i => $testimonial) {  ?>
				<div class="item <?php if($i==0) {?>active<?php } ?>">
	 				<div class="testimonial-item">
						<?php if(  $testimonial['description'] ) { ?>
							<div class="description"><?php echo $testimonial['description']; ?></div>
						<?php } ?>
						<?php if(  $testimonial['profile'] ) { ?>
							<div class="profile"><?php echo $testimonial['profile']; ?></div>
						<?php } ?>
					</div>
				</div>
			<?php } ?>
		</div>
		<?php if( count($testimonials) > 1 ){ ?>
			<div class="carousel-style carousel-controls-v1 space-top-30">
				<a class="carousel-control left" href="#pavtestimonial<?php echo $id;?>" data-slide="prev">
					<i class="zmdi zmdi-long-arrow-left ltr"></i><i class="zmdi zmdi-long-arrow-right rtl"></i>
				</a>
				<a class="carousel-control right" href="#pavtestimonial<?php echo $id;?>" data-slide="next">
					<i class="zmdi zmdi-long-arrow-left rtl"></i><i class="zmdi zmdi-long-arrow-right ltr"></i>
				</a>
			</div>
		<?php } ?>
    </div>
	<?php if( count($testimonials) > 1 ){ ?>
		<script type="text/javascript">
			$('#pavtestimonial<?php echo $id;?>').carousel({interval:<?php echo ( $auto_play_mode?$interval:'false') ;?>,auto:<?php echo $auto_play;?>,pause:'hover'});
		</script>
	<?php } ?>
<?php } ?>
