<div class="featured-category <?php echo $addition_cls?>">
	<?php if( $show_title ) { ?>
		<div class="widget-heading panel-heading"><h4 class="panel-title"><?php echo $heading_title?></h4></div>
	<?php } ?>
	<?php if(!empty($categories)) { ?>
		<?php foreach ($categories as $category): ?>
			<div class="caption">
				<h2><?php echo $category['name']; ?></h2>
				<span class="items"><?php echo $category['items']; ?></span>
			</div>
			<div class="image">
				<?php if ($category['image'] !== '') { ?>
					<a href="<?php echo $category['href']; ?>"><img src="image/<?php echo $category['image']; ?>" alt="" class="img-responsive"></a>
				<?php } ?>
			</div>
			<a class="views-more text-center" href="<?php echo $category['href']; ?>">
				<i class="fa fa-long-arrow-right"></i>
				<i class="fa fa-long-arrow-left"></i>
			</a>
		<?php endforeach ?>
	<?php } ?>
</div>