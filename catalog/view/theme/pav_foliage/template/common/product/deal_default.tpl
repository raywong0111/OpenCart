<div class="product-deals">
	<div class="product-block">
	    <?php if ($product['thumb']) {    ?>
			<div class="product-img">
				<?php if( $product['special'] ) {   ?>
					<span class="sale-exist text-center"><?php echo $objlang->get('text_sale'); ?></span>
				<?php } ?>
				<a class="img" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>
				<div class="group-right">
					<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
						<div class="cart">
							<button class="btn btn-action" data-loading-text="Loading..." type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
								<i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					<?php } ?>
					<div class="wishlist">
						<button class="btn btn-action" type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
						</button>
					</div>
					<div class="compare">
						<button class="btn btn-action" type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart"></i></button>
					</div>
				</div>
		        <div class="group-action">
					<div class="action clearfix">
						<div class="add-links">
							<?php if ( isset($quickview) && $quickview ) { ?>
								<div class="top quickview hidden-sm hidden-xs">
									<a class="iframe-link text-center quick-view" data-toggle="tooltip" data-placement="top" href="<?php echo $ourl->link('themecontrol/product','product_id='.$product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" ><i class="zmdi zmdi-eye"></i></a>
								</div>
							<?php } ?>
							<div class="top zoom hidden-sm hidden-xs">
								<?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $product['thumb'] ));  ?>
									<a data-toggle="tooltip" data-placement="top" href="<?php echo $zimage;?>" class="product-zoom colorbox cboxElement" title="<?php echo $product['name']; ?>"><i class="fa fa-search-plus"></i></a>
								<?php } ?>
							</div>
						</div>
					</div>
		        </div>
				<?php if ($product['price']) { ?>
					<div class="box-price">
						<div class="price">
							<?php if (!$product['special']) {  ?>
								<span class="price-olds"><?php echo $product['price']; ?></span>
								<?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?>
								<?php } ?>
							<?php } else { ?>
								<span class="price-new"><?php echo $product['special']; ?></span>
								<span class="price-old"><?php echo $product['price']; ?></span>
								<?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?>
								<?php } ?>
							<?php } ?>
						</div>
					</div>
				<?php } ?>
			</div>
		<?php } ?>
		<div class="product-meta">
			<h6 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h6>
			<?php if( isset($product['description']) ){ ?>
				<p class="description"><?php echo utf8_substr( strip_tags($product['description']),0,200);?>...</p>
			<?php } ?>
			<?php if ($product['rating']) { ?>
				<div class="rating">
					<?php for ($is = 1; $is <= 5; $is++) { ?>
						<?php if ($product['rating'] < $is) { ?>
							<span><i class="fa fa-star-o"></i></span>
						<?php } else { ?>
							<span class="rate"><i class="fa fa-star"></i></span>
						<?php } ?>
					<?php } ?>
				</div>
			<?php } ?>
			<?php if ($product['price']) { ?>
				<div class="box-price">
					<div class="price">
						<?php if (!$product['special']) {  ?>
							<span class="price-olds"><?php echo $product['price']; ?></span>
							<?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?>
							<?php } ?>
						<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span>
							<span class="price-old"><?php echo $product['price']; ?></span>
							<?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?>
							<?php } ?>
						<?php } ?>
					</div>
				</div>
			<?php } ?>
			<div class="group-actions clearfix">
				<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
					<div class="cart pull-left">
						<button data-loading-text="Loading..." type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
							<span><?php echo $objlang->get('button_cart'); ?></span>
							<i class="zmdi zmdi-shopping-cart-plus"></i>
						</button>
					</div>
				<?php } ?>
				<div class="wishlist pull-left">
					<button type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
					</button>
				</div>
				<?php if ( isset($quickview) && $quickview ) { ?>
					<div class="quickview pull-left visible-list hidden-sm hidden-xs">
						<a class="iframe-link text-center quick-view" data-toggle="tooltip" data-placement="top" href="<?php echo $ourl->link('themecontrol/product','product_id='.$product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" ><i class="zmdi zmdi-eye"></i></a>
					</div>
				<?php } ?>
				<div class="compare visible-list pull-left">
					<button type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart"></i></button>
				</div>
				<div class="zoom visible-list pull-left hidden-xs">
					<?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $product['thumb'] ));  ?>
						<a data-toggle="tooltip" data-placement="top" href="<?php echo $zimage;?>" class="product-zoom colorbox cboxElement" title="<?php echo $product['name']; ?>"><i class="fa fa-search-plus"></i></a>
					<?php } ?>
				</div>
			</div>
			<div class="footer-deals">
				<div id="item_countdown_<?php echo $product['product_id']; ?>" class="item-countdown clearfix"></div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
  	jQuery(document).ready(function($){
    	$("#item_countdown_<?php echo $product['product_id']; ?>").lofCountDown({
      		formatStyle:2,
      		TargetDate:"<?php echo date('m/d/Y G:i:s', strtotime($product['date_end_string'])); ?>",
      		DisplayFormat:"<ul class='list-inline'><li class='days'> %%D%% </li> : <li class='hours'> %%H%% </li> : <li class='minutes'> %%M%% </li> : <li class='seconds'> %%S%% </li></ul>",
      		FinishMessage: "<?php echo $objlang->get('text_finish');?>"
    	});
  	});
</script>