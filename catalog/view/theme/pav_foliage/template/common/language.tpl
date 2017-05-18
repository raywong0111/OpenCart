<?php if (count($languages) > 1) { ?>
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
		<div class="dropdown">
			<button class="btn btn-topbar btn-link dropdown-toggle clearfix" data-toggle="dropdown">
				<span class="flag-lang pull-left">
					<?php foreach ($languages as $language) { ?>
						<?php if ($language['code'] == $code) { ?>
							<span class="hidden-lg hidden-md"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"></span><span class="hidden-sm hidden-xs"><?php echo $language['name']; ?></span>
						<?php } ?>
					<?php } ?>
				</span>
				<i class="fa fa-angle-down pull-left"></i>
			</button>
			<ul class="dropdown-menu">
				<?php foreach ($languages as $language) { ?>
					<li>
						<button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>">
							<img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <span><?php echo $language['name']; ?></span>
						</button>
					</li>
				<?php } ?>
			</ul>
		</div>
		<input type="hidden" name="code" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</form>
<?php } ?>
