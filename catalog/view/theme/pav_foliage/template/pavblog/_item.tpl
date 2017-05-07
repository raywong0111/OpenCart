<div class="blog-item clearfix">
	<div class="blog-image">
		<?php if( $blog['thumb'] && $cat_show_image )  { ?>
			<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
				<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" class="img-responsive" alt="<?php echo $blog['title'];?>" />
			</a>
		<?php } ?>
	</div>
	<div class="blog-body">
		<?php if( $cat_show_title ) { ?>
			<h4 class="blog-title"><a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a></h4>
		<?php } ?>
		<div class="blog-meta">
			<ul class="list-inline">
				<li>
					<?php if( $blog_show_author ) { ?>
						By: <span class="author"><?php echo $blog['author'];?></span>
					<?php } ?>
				</li>
				<li>
					<?php if( $blog_show_created ) { ?>
						Time: <span class="created"><?php echo $blog['created'];?></span>
					<?php } ?>
				</li>
			</ul>
		</div>
		<?php if( $cat_show_description ) {?>
			<div class="shortinfo">
				<?php echo utf8_substr( $blog['description'],0, 180 );?>...
			</div>
		<?php } ?>
		<?php if( $cat_show_readmore ) { ?>
			<div class="links">
				<a href="<?php echo $blog['link'];?>"><i class="fa fa-long-arrow-right"></i><i class="fa fa-long-arrow-left"></i></a>
			</div>
		<?php } ?>
	</div>
</div>