<?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
<div class="breadcrumb">
	<ul>
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
</div>