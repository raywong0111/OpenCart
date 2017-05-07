<?php  echo $header; ?>
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
			<div class="pav-blogs">
				<div class="row">
					<?php $cols = $cat_columns_leading_blogs;
					if( count($leading_blogs) ) { ?>
						<?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
						<div class="pavcol<?php echo $cols;?> col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<?php require( '_item.tpl' ); ?>
						</div>
						<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
						<?php } ?>
						<?php } ?>
					<?php } ?>
					<?php
						$cols = $cat_columns_secondary_blogs;
						$cols = !empty($cols)?$cols:1;
						if ( count($secondary_blogs) ) { ?>
						<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
						<div class="pavcol<?php echo $cols;?> col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<?php require( '_item.tpl' ); ?>
						</div>
						<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
						<?php } ?>
						<?php } ?>
					<?php } ?>
				</div>
				<?php if ($pagination) { ?>
					<div class="paging space-top-15 clearfix">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><?php echo $pagination; ?></div>
					</div>
				<?php } ?>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>