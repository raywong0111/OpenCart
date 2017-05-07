<?php
	$span = 12/$cols;
	$active = 'latest';
	$id = rand(1,9)+rand();
	$theme  = $themename;
	$themeConfig = (array)$sconfig->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'                     => 1,
		'quickview'                          => 0,
		'show_swap_image'                    => 0,
		'product_layout'		=> 'default',
		'enable_paneltool'	=> 0
	);
	$listingConfig     = array_merge($listingConfig, $themeConfig );
	$categoryPzoom 	    = $listingConfig['category_pzoom'];
	$quickview          = $listingConfig['quickview'];
	$swapimg            = $listingConfig['show_swap_image'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;
	if( $listingConfig['enable_paneltool'] && isset($_COOKIE[$theme.'_productlayout']) && $_COOKIE[$theme.'_productlayout'] ){
		$listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	$tab = rand();
	$columns_count  = 1;
	$first_product_layout = DIR_TEMPLATE.$theme.'/template/common/product/first_product.tpl';
?>

<div class="widget-product-tabs owl-carousel-play <?php echo $addition_cls?> <?php if ( isset($stylecls)&&$stylecls) { ?>box-<?php echo $stylecls; ?><?php } ?>">
	<?php if( $show_title ) { ?>
		<div class="panel-heading text-center">
			<h4 class="panel-title panel-v1"><?php echo $heading_title; ?></h4>
		</div>
	<?php } ?>
	<div class="tab-products <?php if($tabsstyle == 'tab-v2-r'){echo "tab-v2";}else{echo $tabsstyle;}?> <?php if($tabsstyle=='tab-v2'){echo "tabs-left";}elseif($tabsstyle=='tab-v3'){echo "tabs-right";}?>">
		<ul role="tablist" class="nav nav-tabs" id="product_tabs<?php echo $id;?>">
			<?php foreach( $tabs as $tab => $products ) { if( empty($products) ){ continue;} ?>
				<li>
					<a data-toggle="tab" role="tab" href="#tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>" aria-expanded="true"><i class="fa <?php if($tab == 'latest'){echo $icon_newest;}elseif($tab=='featured'){echo $icon_featured;}elseif($tab=='bestseller'){echo $icon_bestseller;}elseif($tab=='special'){echo $icon_special;}else{echo $icon_mostviews;};?>"></i><?php echo $objlang->get('text_'.$tab)?></a>
				</li>
			<?php } ?>
		</ul>
	</div>
	<div class="tab-content row">
		<?php foreach( $tabs as $tab => $products ) {
			if( empty($products) ){ continue;}
			?>
			<div class="tab-pane fade box-products  tabcarousel<?php echo $id; ?>" id="tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>" data-ride="owlcarousel">
				
				<div class="col-lg-6 col-md-6 col-sm-6 first-products">
				<?php 
						$first_product = array_shift($products);
						require( $first_product_layout );
					?>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 boxproducts">
					<?php if( count($products) > $itemsperpage ) { ?>
						<div class="carousel-style carousel-controls-v2">
							<a class="carousel-control left" href="#product_list" data-slide="prev"><i class="fa fa-angle-left ltr"></i><i class="fa fa-angle-right rtl"></i></a>
							<a class="carousel-control right" href="#product_list" data-slide="next"><i class="fa fa-angle-left rtl"></i><i class="fa fa-angle-right ltr"></i></a>
						</div>
					<?php } ?>
					<div class="owl-carousel" data-show="1" data-pagination="false" data-navigation="true">
						<?php $pages = array_chunk( $products, $itemsperpage); ?>
						<?php foreach ($pages as  $k => $tproducts ) {   ?>
							<div class="item clearfix <?php if($k==0) {?>active<?php } ?>">
								<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
									<?php if( $i%$cols == 1 ) { ?>
										<div class="products-row">
									<?php } ?>
									<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12 product-col">
										<?php require( $productLayout );  ?>
									</div>
									<?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
										</div>
									<?php } ?>
								<?php } //endforeach; ?>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		<?php } // endforeach of tabs ?>
	</div>
</div>
<script>
	$(function () {
		$('#product_tabs<?php echo $id;?> a:first').tab('show');
	})
</script>