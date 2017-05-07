<?php
	echo $header;
	$column_left = $column_right = null;
	$content_top=null ;
?>
<style type="text/css">
	#top{
		display: none;
	}
	#topbar {
		display: none;
	}
	.copyright {
		display: none;
	}
	#back-to-top {
		display: none;
	}
	#sys-notification {
		position: static;
		background: #ffffff;
		padding-top: 20px;
		padding-bottom: 20px;
		margin-top: 0px;
	}
	.tab-v88, .product-related, #group-menu-click {
		display: none;
	}
	body header, .breadcrumb, #menu, body footer {
		display: none;
	}
	.quickviews .content-products {
		padding-top: 0px;
	}
</style>
<?php
	$config = $sconfig;
  $themeConfig = (array)$config->get('themecontrol');
  $productConfig = array(
      'product_enablezoom'         => 1,
      'product_zoommode'           => 'basic',
      'product_zoomeasing'         => 1,
      'product_zoomlensshape'      => "round",
      'product_zoomlenssize'       => "150",
      'product_zoomgallery'        => 0,
      'enable_product_customtab'   => 0,
      'product_customtab_name'     => '',
      'product_customtab_content'  => '',
      'product_related_column'     => 0,
    );
    $listingConfig = array(
      'category_pzoom'             => 1,
      'quickview'					=> 0,
      'show_swap_image'                         => 0,
      'catalog_mode'                => 1
    );
    $listingConfig          = array_merge($listingConfig, $themeConfig );
    $categoryPzoom            = $listingConfig['category_pzoom'];
    $quickview                = $listingConfig['quickview'];
    $swapimg                  = ($listingConfig['show_swap_image'])?'swap':'';
    $productConfig                = array_merge( $productConfig, $themeConfig );
    $languageID               = $config->get('config_language_id');

?>
<div class="container quickviews content-details">
	<div class="row">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
			<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>">
			<?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
			<div class="content-products"> <!-- ******div customer for theme******* -->
				<div class="bg-white">
					<div class="row">
						<?php if ($column_left || $column_right) { ?>
							<?php $class = 'col-lg-6 col-md-6 col-sm-6 col-xs-12'; ?>
						<?php } else { ?>
							<?php $class = 'col-lg-6 col-md-6 col-sm-6 col-xs-12'; ?>
						<?php } ?>
						<?php require( ThemeControlHelper::getLayoutPath( 'product/preview/default.tpl' ) );  ?> 
						<?php if ($column_left || $column_right) { ?>
							<?php $class = 'col-lg-6 col-md-6 col-sm-6 col-xs-12'; ?>
						<?php } else { ?>
							<?php $class = 'col-lg-6 col-md-6 col-sm-6 col-xs-12'; ?>
						<?php } ?>
						<div class="detail-container <?php echo $class; ?>">
							<div class="price">
								<?php if (!$special) { ?>
									<span class="price-olds"><?php echo $price; ?></span>
								<?php } else { ?>
									<span class="price-new"><?php echo $special; ?></span>
									<span class="price-old"><?php echo $price; ?></span>
								<?php } ?>
							</div>
							<h1><?php echo $heading_title; ?></h1>
							<div class="rating-review clearfix">
								<?php if ($review_status) { ?>
									<div class="rating pull-left">
										<?php for ($i = 1; $i <= 5; $i++) { ?>
											<?php if ($rating < $i) { ?>
												<span><i class="fa fa-star"></i></span>
											<?php } else { ?>
												<span class="rate"><i class="fa fa-star"></i></span>
											<?php } ?>
										<?php } ?>
									</div>
								<?php } ?>
							</div>
							<?php if ($price) { ?>
								<ul class="list-unstyled">
									<?php if ($tax) { ?>
										<li><span class="type"><?php echo $text_tax; ?></span> <span><?php echo $tax; ?></span></li>
									<?php } ?>
									<?php if ($points) { ?>
										<li><span class="type"><?php echo $text_points; ?></span> <span><?php echo $points; ?></span></li>
									<?php } ?>
									<?php if ($discounts) { ?>
										<?php foreach ($discounts as $discount) { ?>
											<li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
										<?php } ?>
									<?php } ?>
								</ul>
							<?php } ?>
							<ul class="list-unstyled">
								<?php if ($manufacturer) { ?>
									<li><span class="type"><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
								<?php } ?>
								<li><span class="type"><?php echo $text_model; ?></span> <span><?php echo $model; ?></span></li>
								<?php if ($reward) { ?>
									<li><span class="type"><?php echo $text_reward; ?></span> <span><?php echo $reward; ?></span></li>
								<?php } ?>
								<li><span class="type"><?php echo $text_stock; ?></span> <span><?php echo $stock; ?></span></li>
							</ul>
							<div id="product">
								<?php if ($options) { ?>
									<h3><?php echo $text_option; ?></h3>
									<?php foreach ($options as $option) { ?>
										<?php if ($option['type'] == 'radio') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div id="input-option<?php echo $option['product_option_id']; ?>">
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
														<div class="radio">
															<label>
																<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
																<?php echo $option_value['name']; ?>
																<?php if ($option_value['price']) { ?>
																	(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																<?php } ?>
															</label>
														</div>
													<?php } ?>
												</div>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'checkbox') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div id="input-option<?php echo $option['product_option_id']; ?>">
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
														<div class="checkbox">
															<label>
																<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
																<?php echo $option_value['name']; ?>
																<?php if ($option_value['price']) { ?>
																	(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																<?php } ?>
															</label>
														</div>
													<?php } ?>
												</div>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'image') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div id="input-option<?php echo $option['product_option_id']; ?>">
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
														<div class="radio">
															<label>
																<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
																<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
																<?php if ($option_value['price']) { ?>
																	(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																<?php } ?>
															</label>
														</div>
													<?php } ?>
												</div>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'text') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'textarea') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'file') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div>
												<button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-v3 button-upload"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button></div>
												<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'date') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<div class="input-group date clearfix">
													<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
													<span class="input-group-btn"><button class="btn btn-v3 button-calendar" type="button"><i class="fa fa-calendar"></i></button></span>
												</div>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'datetime') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<div class="input-group datetime clearfix">
													<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
													<span class="input-group-btn"><button type="button" class="btn btn-v3 button-calendar"><i class="fa fa-calendar"></i></button></span>
												</div>
											</div>
										<?php } ?>
										<?php if ($option['type'] == 'time') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<div class="input-group time clearfix">
													<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
													<span class="input-group-btn"><button type="button" class="btn btn-v3 button-calendar"><i class="fa fa-calendar"></i></button></span>
												</div>
											</div>
										<?php } ?>
									<?php } ?>
								<?php } ?>
								<?php if ($recurrings) { ?>
									<h3><?php echo $text_payment_recurring ?></h3>
									<div class="form-group required">
										<select name="recurring_id" class="form-control">
											<option value=""><?php echo $text_select; ?></option>
											<?php foreach ($recurrings as $recurring) { ?>
												<option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
											<?php } ?>
										</select>
										<div class="help-block" id="recurring-description"></div>
									</div>
								<?php } ?>
								<?php foreach ($options as $option) { ?>
									<?php if ($option['type'] == 'select') { ?>
										<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> clearfix">
											<label class="control-label select pull-left" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
											<div class="select-wrap pull-left">
												<select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
													<option value=""><?php echo $text_select; ?></option>
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
														<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
															<?php if ($option_value['price']) { ?>
																(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
															<?php } ?>
														</option>
													<?php } ?>
												</select>
											</div>
										</div>
									<?php } ?>
								<?php } ?>
								<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
								<div class="box-action clearfix">
									<div class="product-qyt-action pull-left">
										<label class="control-label qty pull-left"><?php echo $entry_qty; ?>:</label>
										<div class="pull-left">
											<div class="quantity-adder">
												<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
												<span class="add-up add-action"><i class="fa fa-caret-up"></i></span>
												<span class="add-down add-action"><i class="fa fa-caret-down"></i></span>
											</div>
										</div>
									</div>
									<div class="pull-left">
										<button class="btn btn-action cart" data-toggle="tooltip" title="<?php echo $button_cart; ?>" id="button-cart">
											<i class="fa fa-shopping-cart"></i>
										</button>
										<button class="btn btn-action" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
											<i class="fa fa-heart"></i>
										</button>
										<button class="btn btn-action" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');">
											<i class="fa fa-bar-chart"></i>
										</button>
									</div>
								</div>
								<!-- AddThis Button BEGIN -->
								<div class="addthis_toolbox addthis_default_style">
									<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
									<a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a>
									<a class="addthis_counter addthis_pill_style"></a>
								</div>
								<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
								<!-- AddThis Button END -->
								<?php if ($minimum > 1) { ?>
									<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
								<?php } ?>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-v88 bg-white">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
						<?php if ($attribute_groups) { ?>
							<li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
						<?php } ?>
						<?php if ($review_status) { ?>
							<li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
						<?php } ?>
						<?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_name'][$languageID]) ) { ?>
							<li><a href="#tab-customtab" data-toggle="tab"><?php echo $productConfig['product_customtab_name'][$languageID]; ?></a></li>
						<?php } ?>
					</ul>
					<div class="tab-content text-left">
						<div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
						<?php if ($attribute_groups) { ?>
							<div class="tab-pane" id="tab-specification">
								<table class="table table-bordered">
									<?php foreach ($attribute_groups as $attribute_group) { ?>
										<thead>
											<tr>
												<td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
											</tr>
										</thead>
										<tbody>
											<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
												<tr>
													<td><?php echo $attribute['name']; ?></td>
													<td><?php echo $attribute['text']; ?></td>
												</tr>
											<?php } ?>
										</tbody>
									<?php } ?>
								</table>
							</div>
						<?php } ?>
			            <?php if ($review_status) { ?>
			                <div class="tab-pane" id="tab-review">
			                    <div id="review" class="space-25"></div>
			                    <div class="clearfix">
			                    	<a href="#review-form"  class="popup-with-form btn btn-v2 pull-right" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" >
			                    		<?php echo $text_write; ?>
			                    	</a>
			                    </div>
			                   <div class="hide"> <div id="review-form" class="panel review-form-width"><div class="panel-body">
			                    <form class="form-horizontal" id="form-review">
									<div id="reviews"></div>
									<div class="panel-heading">
										<h4 class="panel-title panel-v4"><?php echo $text_write; ?></h4>
									</div>
			                        <div class="form-group required">
			                            <div class="col-sm-12">
			                                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
			                                <input type="text" name="name" value="" id="input-name" class="form-control" />
			                            </div>
			                        </div>
			                        <div class="form-group required">
			                            <div class="col-sm-12">
			                                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
			                                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
			                                <div class="help-block"><?php echo $text_note; ?></div>
			                            </div>
			                        </div>
			                        <div class="form-group required" style="font-family: arial;">
			                            <div class="col-sm-12">
			                                <label class="control-label"><?php echo $entry_rating; ?></label>
			                                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
			                                <input type="radio" name="rating" value="1" />
			                                &nbsp;
			                                <input type="radio" name="rating" value="2" />
			                                &nbsp;
			                                <input type="radio" name="rating" value="3" />
			                                &nbsp;
			                                <input type="radio" name="rating" value="4" />
			                                &nbsp;
			                                <input type="radio" name="rating" value="5" />
			                                &nbsp;<?php echo $entry_good; ?></div>
			                        </div>
			                         <?php echo $captcha; ?>
			                        <div class="buttons">
			                            <div class="pull-right">
			                                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-v2"><?php echo $button_continue; ?></button>
			                            </div>
			                        </div>
			                    </form></div></div></div>
			                </div>
			            <?php } ?>
						<?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_content'][$languageID]) ) { ?>
			               <div id="tab-customtab" class="tab-pane custom-tab">
			                	<div class="inner">
			                  		<?php echo html_entity_decode( $productConfig['product_customtab_content'][$languageID], ENT_QUOTES, 'UTF-8'); ?>
			               	 	</div>
			            	</div>
			            <?php } ?>
					</div>
				</div>
			</div>
			<?php if ($products) {  $heading_title = $text_related; $customcols = 4; ?>
			<?php require( ThemeControlHelper::getLayoutPath( 'common/products_carousel.tpl' ) );  ?>
			<?php } ?>
			<?php echo $content_top; ?>
		</div>
		<?php echo $column_right; ?>
		<?php echo $content_bottom; ?>
	</div>
</div>
<script type="text/javascript"><!--
	$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
		$.ajax({
			url: 'index.php?route=product/product/getRecurringDescription',
			type: 'post',
			data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
			dataType: 'json',
			beforeSend: function() {
				$('#recurring-description').html('');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();
				if (json['success']) {
					$('#recurring-description').html(json['success']);
				}
			}
		});
	});
	//-->
</script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			if (json['success']) {
				$('#notification').html('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				//$('#cart-total').html(json['total']);
				res = json['total'].split("-");
				$('#text-items').html(res[1]);
				var out = json['total'].substr(0,json['total'].indexOf(' '));
				$('#cart-total', window.parent.document ).html(out);
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				$('#cart > ul', window.parent.document ).load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});

	var compare = {
	  'add': function(product_id) {
		$.ajax({
		  url: 'index.php?route=product/compare/add',
		  type: 'post',
		  data: 'product_id=' + product_id,
		  dataType: 'json',
		  success: function(json) {
			$('.alert').remove();

			if (json['success']) {
			  $('#notification').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

			  $('#compare-total', window.parent.document).html(json['total']);

			  $('html, body').animate({ scrollTop: 0 }, 'slow');
			}
		  }
		});
	  },
	  'remove': function() {

	  }
	}

	var wishlist = {
	  'add': function(product_id) {
	    $.ajax({
	      url: 'index.php?route=account/wishlist/add',
	      type: 'post',
	      data: 'product_id=' + product_id,
	      dataType: 'json',
	      success: function(json) {
	        $('.alert').remove();

	        if (json['success']) {
	          $('#notification').html('<div class="alert alert-info"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
	        }
	        if (json['info']) {
	          $('#notification').html('<div class="alert alert-info"><i class="fa fa-info-circle"></i> ' + json['info'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
	        }
	        $('#wishlist-total', window.parent.document).html(json['total']);
	        $('html, body').animate({ scrollTop: 0 }, 'slow');
	      }
	    });
	  },
	  'remove': function() {
	  }
	}
	//-->
</script>
<script type="text/javascript"><!--
	$('.date').datetimepicker({
		pickTime: false
	});
	$('.datetime').datetimepicker({
		pickDate: true,
		pickTime: true
	});
	$('.time').datetimepicker({
		pickDate: false
	});
	$('button[id^=\'button-upload\']').on('click', function() {
		var node = this;
		$('#form-upload').remove();
		$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
		$('#form-upload input[name=\'file\']').trigger('click');
		if (typeof timer != 'undefined') {
			clearInterval(timer);
		}
		timer = setInterval(function() {
			if ($('#form-upload input[name=\'file\']').val() != '') {
				clearInterval(timer);
				$.ajax({
					url: 'index.php?route=tool/upload',
					type: 'post',
					dataType: 'json',
					data: new FormData($('#form-upload')[0]),
					cache: false,
					contentType: false,
					processData: false,
					beforeSend: function() {
						$(node).button('loading');
					},
					complete: function() {
						$(node).button('reset');
					},
					success: function(json) {
						$('.text-danger').remove();
						if (json['error']) {
							$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
						}
						if (json['success']) {
							alert(json['success']);
							$(node).parent().find('input').attr('value', json['code']);
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}
		}, 500);
	});
	//-->
</script>
<script type="text/javascript"><!--
	$('#review').delegate('.pagination a', 'click', function(e) {
		e.preventDefault();
		$('#review').fadeOut('slow');
		$('#review').load(this.href);
		$('#review').fadeIn('slow');
	});
	$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
	$('#button-review').on('click', function() {
		$.ajax({
			url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
			type: 'post',
			dataType: 'json',
			data: $("#form-review").serialize(),
			beforeSend: function() {
				$('#button-review').button('loading');
			},
			complete: function() {
				$('#button-review').button('reset');
			},
			success: function(json) {
				$('.alert-success, .alert-danger').remove();

				if (json['error']) {
					$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				}
				if (json['success']) {
					$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
					$('input[name=\'name\']').val('');
					$('textarea[name=\'text\']').val('');
					$('input[name=\'rating\']:checked').prop('checked', false);
				}
			}
		});
	});
	$(document).ready(function() {
		$('.content-products .image a').click(
			function(){
				$.magnificPopup.open({
				  items: {
				    src:  $('img',this).attr('src')
				  },
				  type: 'image'
				});
				return false;
			}
		);
	});
	//-->
</script>
<?php if( $productConfig['product_enablezoom'] ) { ?>
<script type="text/javascript" src=" catalog/view/javascript/jquery/elevatezoom/elevatezoom-min.js"></script>
<script type="text/javascript">
		var zoomCollection = '<?php echo $productConfig["product_zoomgallery"]=="basic"?".product-image-zoom":"#image";?>';
		$( zoomCollection ).elevateZoom({
		<?php if( $productConfig['product_zoommode'] != 'basic' ) { ?>
		zoomType        : "<?php echo $productConfig['product_zoommode'];?>",
		<?php } ?>
		lensShape : "<?php echo $productConfig['product_zoomlensshape'];?>",
		lensSize    : <?php echo (int)$productConfig['product_zoomlenssize'];?>,
		easing:true,
		gallery:'image-additional-carousel',
		cursor: 'pointer',
		galleryActiveClass: "active"
	});
 
</script>
<?php } ?>
<?php echo $footer; ?>