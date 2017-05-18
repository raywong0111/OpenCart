<div class="panel panel-default latest-posts">
    <div class="panel-heading">
	   	<h4 class="panel-title panel-v1"><?php echo $heading_title; ?></h4>
    </div>
	<div class="panel-body" >
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest row">
			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
			<div class="col-lg-<?php echo floor(floor(12/$cols));?> col-md-<?php echo floor(floor(12/$cols));?> col-xs-12 pav-blog-list">
				<div class="blog-item clearfix">
					<div class="latest-posts-img pull-left">
						<?php if( $blog['thumb']  )  { ?>
							<a href="<?php echo $blog['link'];?>" class="blog-article">
								<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" alt="<?php echo $blog['title'];?>" class="img-responsive"/>
							</a>
						<?php } ?>
						<div class="latest-posts-profile">
							<div class="created">
								<span class="day"><?php echo date("d",strtotime($blog['created']));?></span>
								<span class="month"><?php echo date("M",strtotime($blog['created']));?></span>
							</div>
						</div>
					</div>
					<div class="latest-posts-meta pull-left">
						<h4 class="latest-posts-title">
							<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
						</h4>
						<div class="shortinfo">
							<p>
								<?php $blog['description'] = strip_tags($blog['description']); ?>
								<?php echo utf8_substr( $blog['description'],0, 200 );?>...
							</p>
						</div>
					</div>
				</div>
			</div>
			<?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>
			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
</div>