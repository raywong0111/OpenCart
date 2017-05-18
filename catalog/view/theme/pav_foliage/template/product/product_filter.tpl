<div class="products-filter-panel bg-white clearfix">
	<div class="type hidden-xs pull-left">
		<div class="btn-group clearfix">
			<button type="button" id="grid-view" class="btn btn-switch grid" data-toggle="tooltip" title="<?php echo $button_grid; ?>">
				<i class="fa fa-th-large"></i>
			</button>
			<button type="button" id="list-view" class="btn btn-switch list" data-toggle="tooltip" title="<?php echo $button_list; ?>">
				<i class="zmdi zmdi-view-list"></i>
			</button>
		</div>
	</div>
	<div class="order-sort clearfix pull-right">
		<div class="group-text pull-left">
			<label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
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
			<label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
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
	<div class="compare pull-right">
		<a href="<?php echo $compare; ?>" class="btn-link" id="compare-total"><?php echo $text_compare; ?></a>
	</div>
</div>