<?php
	$config = $sconfig;
    $theme  = $themename;
    $themeConfig = (array)$config->get('themecontrol');
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/deal_collection.tpl';
?>

<?php echo $header; ?>
<div class="mass-header clearfix">
	<div class="container">
		<?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
		<h1><?php echo $objlang->get('deal_option'); ?></h1>
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
			<div class="tabs-deal">
				<ul class="text-center clearfix">
					<?php foreach ($head_titles as $item): ?>
					<?php if ($item['active']): ?>
					<li class="active">
						<a class="widget-heading panel-danger" href="<?php echo $item['href'];?>"><h4 class="panel-title"><?php echo $item['text'];?></h4></a>
					</li>
					<?php else: ?>
					<li>
						<a class="widget-heading panel-danger" href="<?php echo $item['href'];?>"><h4 class="panel-title"><?php echo $item['text'];?></h4></a>
					</li>
					<?php endif; ?>
					<?php endforeach; ?>
				</ul>
			</div>
			<!-- Deal Option -->
			<!-- Fillter Product -->
			<?php if (count($products) > 0): ?>
			<div class="products-filter-panel bg-white clearfix">
				<div class="type hidden-xs pull-left">
					<div class="btn-group clearfix">
						<button type="button" id="grid-view" class="btn btn-switch grid" data-toggle="tooltip" title="<?php echo $objlang->get("button_grid"); ?>">
							<i class="fa fa-th-large"></i>
						</button>
						<button type="button" id="list-view" class="btn btn-switch list" data-toggle="tooltip" title="<?php echo $objlang->get("button_list"); ?>">
							<i class="zmdi zmdi-view-list"></i>
						</button>
					</div>
				</div>
				<div class="order-category clearfix pull-right">
					<div class="group-text pull-left">
						<label class="control-label" for="input-limit"><?php echo $objlang->get('text_category'); ?></label>
					</div>
					<div class="pull-left">
						<div class="select-wrap">
							<select id="input-category" class="form-control" name="category_id" onchange="location = this.value;">
								<option value="<?php echo $href_default;?>"><?php echo $objlang->get("text_category_all"); ?></option>
								<?php foreach ($categories as $category_1) { ?>
									<?php if ($category_1['category_id'] == $category_id) { ?>
										<option value="<?php echo $category_1['href']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
									<?php }
									else { ?>
										<option value="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></option>
									<?php } ?>
									<?php foreach ($category_1['children'] as $category_2) { ?>
										<?php if ($category_2['child_id'] == $category_id) { ?>
											<option value="<?php echo $category_2['href']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
										<?php }
										else { ?>
											<option value="<?php echo $category_2['href']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
										<?php } ?>
										<?php if (isset($category_2['children'])) { ?>
											<?php foreach ($category_2['children'] as $category_3) { ?>
												<?php if ($category_3['child_id'] == $category_id) { ?>
													<option value="<?php echo $category_3['href']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
												<?php }
												else { ?>
													<option value="<?php echo $category_3['href']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
												<?php } ?>
											<?php } //endforeach categories_2?>
										<?php } //endif endforeach categories_2?>
									<?php } //endforeach categories_1?>
								<?php } //endforeach categories_0?>
							</select>
						</div>
					</div>
				</div>
				<div class="order-sort clearfix pull-right">
					<div class="group-text pull-left">
						<label class="control-label" for="input-sort"><?php echo $objlang->get('text_sort'); ?></label>
					</div>
					<div class="pull-left">
						<div class="select-wrap">
							<select id="input-sort" class="form-control" onchange="location = this.value;">
								<?php foreach ($sorts as $sorts) { ?>
									<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
										<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
									<?php } else { ?>
										<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
									<?php } ?>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
				<div class="limit-items clearfix pull-right">
					<div class="group-text pull-left">
						<label class="control-label" for="input-limit"><?php echo $objlang->get('text_limit'); ?></label>
					</div>
					<div class="pull-left">
						<div class="select-wrap">
							<select id="input-limit" class="form-control" onchange="location = this.value;">
								<?php foreach ($limits as $limits) { ?>
									<?php if ($limits['value'] == $limit) { ?>
										<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
									<?php } else { ?>
										<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
									<?php } ?>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
			</div>
			<?php endif; ?>
			<?php if (count($products) > 0): ?>
			<?php require( $productLayout );  ?>
			<?php if ($pagination) { ?>
				<div class="paging space-top-15 clearfix">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><?php echo $pagination; ?></div>
				</div>
			<?php } ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
		<?php endif; ?>
		<div class="row">
			<?php if (empty($products)): ?>
			<div class="col-sm-6 text-left"><?php echo $objlang->get('text_not_empty');?></div>
			<div class="col-sm-6 text-right">
				<div class="buttons">
					<div class="pull-right"><a href="<?php echo $objurl->link('common/home'); ?>" class="btn btn-v1"><?php echo $objlang->get('button_continue'); ?></a></div>
				</div>
			</div>
			<?php endif; ?>
		</div>
		</div>
	</div>
<?php echo $footer; ?>