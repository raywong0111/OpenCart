<?php  echo $header; ?>
<div class="mass-header clearfix">
	<div class="container">
		<?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
		<h1><?php echo $heading_title; ?></h1>
	</div>
</div>
<div class="container">
	<div class="row">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-lg-6 col-md-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-lg-9 col-md-9'; ?>
		<?php } else { ?>
			<?php $class = 'col-lg-12 col-md-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?> col-sm-12 col-xs-12">
			<?php echo $content_top; ?>
			<div class="pav-blogs">
				<div class="pav-category">
					<?php if( !empty($children) ) { ?>
						<div class ="pav-children  bg-white clearfix">
							<h3 class="space-top-30 space-10"><?php echo $objlang->get('text_children');?></h3>
							<div class="children-wrap row">
							<?php
								$cols = (int)$children_columns;
								foreach( $children as $key => $sub )  { $key = $key + 1;?>
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
									<div class="children-inner">
										<h4>
											<a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>"><?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)</a>
										</h4>
										<?php if( $sub['thumb'] ) { ?>
											<img src="<?php echo $sub['thumb'];?>"/>
										<?php } ?>
										<div class="sub-description">
										<?php echo $sub['description']; ?>
										</div>
									</div>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
							<?php } ?>
							</div>
						</div>
					<?php } ?>
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
					<div class="pav-pagination pagination space-top-30"><?php echo $pagination;?></div>
				</div>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>