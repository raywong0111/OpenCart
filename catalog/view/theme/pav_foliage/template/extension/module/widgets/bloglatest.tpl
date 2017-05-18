<?php
	$objlang = $this->registry->get('language');
	$config = $this->registry->get('config');
?>
<?php if( !empty($blogs) ) { ?>
<div id="blog-carousel" class="widget-blogs-latest <?php echo $addition_cls; ?>">
	<?php if( $show_title ) { ?>
		<div class="panel-heading">
			<h4 class="panel-title panel-v2"><?php echo $heading_title; ?></h4>
		</div>
	<?php } ?>
	<div class="panel-body bg-white owl-carousel-play">
		<?php if( count($blogs) > $itemsperpage ) { ?>
			<div class="carousel-style carousel-controls-v2">
				<a class="carousel-control left" href="#product_list" data-slide="prev">
					<i class="fa fa-angle-left ltr"></i><i class="fa fa-angle-right rtl"></i>
				</a>
				<a class="carousel-control right" href="#product_list" data-slide="next">
					<i class="fa fa-angle-left rtl"></i><i class="fa fa-angle-right ltr"></i>
				</a>
			</div>
		<?php } ?>
		<div class="views-more"><a href="index.php?route=pavblog/blogs">Read more</a> <i class="fa fa-angle-right"></i><i class="fa fa-angle-left"></i></div>
		<div class="carousel-inner owl-carousel" data-show="1" data-pagination="false" data-navigation="true">
			<?php  $pages = array_chunk( $blogs, $itemsperpage); $span = 12/$cols; ?>
			<?php foreach ($pages as  $k => $tblogs ) {   ?>
				<div class="item <?php if($k==0) {?>active<?php } ?>">
					<?php foreach( $tblogs as $i => $blog ) {  $i=$i+1;?>
						<?php if( $i%$cols == 1 || $cols == 1) { ?>
							<div class="products-row">
						<?php } ?>
							<div class="space-top-30 col-lg-<?php echo floor(12/$cols);?> col-md-<?php echo floor(12/$cols);?> col-sm-<?php echo floor(12/$cols);?> col-xs-12">
					  			<div class="blog-item">
									<div class="latest-posts-body">
										<div class="latest-posts-meta">
											<h4 class="latest-posts-title">
												<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
											</h4>
											<div class="blog-meta">
												<ul class="list-inline">
													<li>
														By: <span class="author"><?php echo $blog['author'];?></span>
													</li>
													<li>
														Time: <span class="created"><?php echo $blog['created'];?></span>
													</li>
												</ul>
											</div>
											<div class="shortinfo">
												<p>
													<?php $blog['description'] = strip_tags($blog['description']); ?>
													<?php echo utf8_substr( $blog['description'],0, 150 );?>...
												</p>
											</div>
											<div class="links">
												<a href="<?php echo $blog['link'];?>"><i class="fa fa-long-arrow-right"></i><i class="fa fa-long-arrow-left"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
					  	<?php if( $i%$cols == 0 || $i==count($tblogs) ) { ?>
						</div>
						<?php } ?>
					<?php } //endforeach; ?>
				</div>
			<?php } ?>
		</div>
	</div>
</div>
<?php } ?>