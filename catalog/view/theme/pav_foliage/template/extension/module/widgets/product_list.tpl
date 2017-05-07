<?php
	$config = $sconfig;
	$theme  = $themename;
	$themeConfig = (array)$config->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'        => 1,
		'quickview'             => 0,
		'show_swap_image'       => 0,
		'product_layout'		=> 'default',
		'enable_paneltool'	    => 0
	);
	$listingConfig = array_merge($listingConfig, $themeConfig );
	$categoryPzoom = $listingConfig['category_pzoom'];
	$quickview     = $listingConfig['quickview'];
	$swapimg       = $listingConfig['show_swap_image'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;
	$span = 12/$cols;
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	$button_cart = $objlang->get('button_cart');
	$id = rand(1,9)+rand();
	$columns_count  = 1;
?>

<?php
	if ($cols == 3) {
	    $plans = $span;
	} else {
	    $plans = 6;
	}
?>
<?php
	if ($cols == 5) {
	    $span = '20s';
	}
?>
<?php
	if ($widget_style == 'products-module') {
		$plans = 12;
	}
?>

<div class="widget-product-list owl-carousel-play <?php echo $widget_style;?> <?php echo $addition_cls; ?>">
	<?php if( $show_title ) { ?>
		<div class="panel-heading">
			<h4 class="panel-title panel-v1"><?php echo $heading_title; ?></h4>
		</div>
	<?php } ?>
	<div class="row">
		<div class="clearfix" id="product_list<?php echo $id;?>" data-ride="owlcarousel">
			<?php if( count($products) > $itemsperpage ) { ?>
				<div class="carousel-style carousel-controls-v3">
					<a class="carousel-control left" href="#product_list" data-slide="prev">
						<i class="fa fa-angle-left ltr"></i><i class="fa fa-angle-right rtl"></i>
					</a>
					<a class="carousel-control right" href="#product_list" data-slide="next">
						<i class="fa fa-angle-left rtl"></i><i class="fa fa-angle-right ltr"></i>
					</a>
				</div>
			<?php } ?>
			<div class="owl-carousel product-grid"  data-show="<?php echo ($columns_count); ?>" data-pagination="false" data-navigation="true">
				<?php if( !empty($products) ):?>
				<?php $pages = array_chunk( $products, $itemsperpage); ?>
					<?php foreach ($pages as  $k => $tproducts ) {   ?>
						<div class="item <?php if($k==0) {?>active<?php } ?> products-block">
							<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
								<?php if( $i%$cols == 1 || $cols == 1) { ?>
								<div class="products-row clearfix <?php ;if($i == count($tproducts) - $cols +1) { echo "last";} ?>"><?php //start box-product?>
									<?php } ?>
									<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-<?php echo $plans;?> col-xs-12 <?php if($i%$cols == 0) { echo "last";} ?> product-col">
										<?php require( $productLayout );  ?>
									</div>
									<?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
								</div><?php //end box-product?>
								<?php } ?>
							<?php } //endforeach; ?>
						</div>
			 	 	<?php } ?>
				<?php endif ?>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>