<?php echo $header; ?>
<div class="mass-header clearfix">
	<div class="container">
		<?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
		<h1><?php echo $heading_title; ?></h1>
	</div>
</div>
<div class="container">
	<div class="row">
		<?php echo $content_top; ?>
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-lg-6 col-md-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-lg-9 col-md-9'; ?>
		<?php } else { ?>
			<?php $class = 'col-lg-12 col-md-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?> col-sm-12 col-xs-12">
			<?php if ($thumb) { ?>
				<div class="category-banner">
					<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" />
				</div>
			<?php } ?>
			<?php if ($categories) { ?>
				<h3 class="text-refine"><?php echo $text_refine; ?></h3>
				<?php if (count($categories) >= 0) { ?>
					<div class="box-refine bg-white">
						<div class="box-refines">
							<ul class="clearfix">
								<?php foreach ($categories as $category) { ?>
									<li class="col-lg-4 col-md-4 col-sm-6 col-xs-12"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
								<?php } ?>
							</ul>
						</div>
					</div>
				<?php } else { ?>
					<?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
						<div class="box-refine bg-white">
							<div class="box-refines">
								<ul class="clearfix">
									<?php foreach ($categories as $category) { ?>
										<li class="col-lg-4 col-md-4 col-sm-6 col-xs-12"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
									<?php } ?>
								</ul>
							</div>
						</div>
					<?php } ?>
				<?php } ?>
			<?php } ?>
			<?php if ($description) { ?>
	          	<div class="category-description">
	            	<?php echo $description; ?>
	          	</div>
			<?php } ?>
			<?php if ($products) { ?>
				<?php require( ThemeControlHelper::getLayoutPath( 'product/product_filter.tpl' ) );   ?>
				<?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?>
				<?php if ($pagination) { ?>
					<div class="paging space-top-15 clearfix">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><?php echo $pagination; ?></div>
					</div>
				<?php } ?>
			<?php } ?>
			<?php if (!$categories && !$products) { ?>
				<p><?php echo $text_empty; ?></p>
				<div class="buttons">
					<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
				</div>
			<?php } ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>