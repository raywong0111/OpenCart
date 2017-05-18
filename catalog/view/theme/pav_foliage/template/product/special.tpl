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
			<?php if ($products) { ?>
				<?php require( ThemeControlHelper::getLayoutPath( 'product/product_filter.tpl' ) );   ?>
				<?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?>
				<div class="paging space-top-70 clearfix">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 text-left"><?php echo $results; ?></div>
					<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12"><?php echo $pagination; ?></div>
				</div>
      		<?php } else { ?>
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