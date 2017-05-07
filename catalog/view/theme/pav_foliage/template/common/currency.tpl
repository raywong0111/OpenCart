<?php if (count($currencies) > 1) { ?>
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
		<div class="dropdown">
			<button class="btn btn-topbar btn-link dropdown-toggle clearfix" data-toggle="dropdown">
				<span class="flag-cur pull-left">
					<?php foreach ($currencies as $currency) { ?>
						<?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
							<span class="hidden-lg hidden-md"><?php echo $currency['symbol_left']; ?></span> <span class="hidden-sm hidden-xs"><?php echo $currency['title']; ?></span>
						<?php }
						elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
							<span class="hidden-lg hidden-md"><?php echo $currency['symbol_right']; ?></span> <span class="hidden-sm hidden-xs"><?php echo $currency['title']; ?></span>
						<?php } ?>
					<?php } ?>
				</span>
				<i class="fa fa-angle-down pull-left"></i>
			</button>
			<ul class="dropdown-menu">
				<?php foreach ($currencies as $currency) { ?>
					<?php if ($currency['symbol_left']) { ?>
						<li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> <span><?php echo $currency['title']; ?></span></button></li>
					<?php }
					else { ?>
						<li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> <span><?php echo $currency['title']; ?></span></button></li>
					<?php } ?>
				<?php } ?>
			</ul>
		</div>
		<input type="hidden" name="code" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</form>
<?php } ?>