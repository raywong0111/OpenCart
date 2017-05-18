<?php if( $show_title ) { ?>
	<div class="panel-heading">
		<h4 class="panel-title"><?php echo $heading_title; ?></h4>
	</div>
<?php } ?>
<div class="sub-cat <?php echo $addition_cls; ?>">
	<ul class="content">
		<?php foreach ($subcategories as $category){ ?>
			<li>
	            <a href="<?php echo $category['href']; ?>">
	                <span><?php echo $category['name']; ?></span>
	            </a>
	        </li>
		<?php } ?>
	</ul>
</div>