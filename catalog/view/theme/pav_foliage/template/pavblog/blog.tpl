<?php  echo $header; ?>
<div class="mass-header clearfix">
	<div class="container">
		<?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
		<h1><?php echo 'BLOG DETAILS TITLE'; ?></h1>
	</div>
</div>
<div class="container">
	<div class="container-inside">
		<div class="row">
			<?php echo $column_left; ?>
			<?php if ($column_left && $column_right) { ?>
				<?php $class = 'col-lg-6 col-md-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
				<?php $class = 'col-lg-9 col-md-9'; ?>
			<?php } else { ?>
				<?php $class = 'col-lg-12 col-md-12'; ?>
			<?php } ?>
			<div id="content" class="<?php echo $class; ?> col-sm-12 col-xs-12">
				<?php echo $content_top; ?>
				<div class="pav-blog-detail bg-white">
					<?php if( $blog['thumb_large'] ) { ?>
						<div class="blog-image">
							<img class="img-responsive" src="<?php echo $blog['thumb_large'];?>" title="<?php echo $blog['title'];?>" alt="<?php echo $blog['title'];?>" />
						</div>
					<?php } ?>
					<h4 class="blog-title"><?php echo $heading_title; ?></h4>
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
							<li>
								<?php if( $blog_show_category ) { ?>
									Category: <span class="publishin"><a href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>"><?php echo $blog['category_title'];?></a></span>
								<?php } ?>
							</li>
							<li>
								<?php if( $blog_show_comment_counter ) { ?>
									Comment: <span class="comment_count"><?php echo $blog['comment_count'];?></span>
								<?php } ?>
							</li>
							<li>
								<?php if( $blog_show_hits ) { ?>
									Views: <span class="hits"><?php echo $blog['hits'];?></span>
								<?php } ?>
							</li>
						</ul>
					</div>
					<div class="blog-content">
						<div class="description"><?php echo $description;?></div>
						<div class="content-wrap"><?php echo $content;?></div>
						<?php if( $blog['video_code'] ) { ?>
							<div class="pav-video"><?php echo html_entity_decode($blog['video_code'], ENT_QUOTES, 'UTF-8');?></div>
						<?php } ?>
					</div>
					<div class="clearfix"></div>
					<?php if( !empty($tags) ) { ?>
						<div class="blog-tags">
							<b><?php echo $objlang->get('text_tags');?></b>
							<?php $i = 1; foreach( $tags as $tag => $tagLink ) { ?>
								<a class="color" href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>"><?php echo $tag; ?></a> <?php if($i<count($tags)) { echo ","; }; ?>
							<?php $i++; } ?>
						</div>
					<?php } ?>
					<!-- AddThis Button BEGIN -->
					<div class="addthis_toolbox addthis_default_style">
						<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
						<a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a>
						<a class="addthis_counter addthis_pill_style"></a>
					</div>
					<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
					<!-- AddThis Button END -->
					<div class="row same-ralated">
						<?php if( !empty($samecategory) ) { ?>
							<div class="col-sm-6 col-lg-6 col-sm-6 col-xs-12 space-top-15 space-10">
								<div class="panel-heading space-20">
									<h4 class="panel-title"><?php echo $objlang->get('text_in_same_category');?></h4>
								</div>
								<ul class="list-arrow">
									<?php foreach( $samecategory as $item ) { ?>
										<li><a href="<?php echo $objurl->link('pavblog/blog',"blog_id=".$item['blog_id']);?>"><?php echo $item['title'];?></a></li>
									<?php } ?>
								</ul>
							</div>
						<?php } ?>
						<?php if( !empty($related) ) { ?>
							<div class="col-sm-6 col-lg-6 col-sm-6 col-xs-12 space-top-15 space-10">
								<div class="panel-heading space-20">
									<h4 class="panel-title"><?php echo $objlang->get('text_in_related_by_tag');?></h4>
								</div>
								<ul class="list-arrow">
									<?php foreach( $related as $item ) { ?>
										<li><a href="<?php echo $objurl->link('pavblog/blog',"blog_id=".$item['blog_id']);?>"><?php echo $item['title'];?></a></li>
									<?php } ?>
								</ul>
							</div>
						<?php } ?>
					</div>
					<div class="pav-comment">
						<?php if( $blog_show_comment_form ) { ?>
							<?php if( $comment_engine == 'diquis' ) { ?>
						    <div id="disqus_thread"></div>
							<script type="text/javascript">
								//CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE
								var disqus_shortname = '<?php echo $diquis_account;?>'; // required: replace example with your forum shortname

								//DON'T EDIT BELOW THIS LINE
								(function() {
									var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
									dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
									(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
								})();
							</script>
							<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
							<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>

							<?php } elseif( $comment_engine == 'facebook' ) { ?>
							<div id="fb-root"></div>
							<script>(function(d, s, id) {
							  var js, fjs = d.getElementsByTagName(s)[0];
							  if (d.getElementById(id)) {return;}
							  js = d.createElement(s); js.id = id;
							  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=<?php echo $facebook_appid;?>";
							  fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));</script>
							<div class="fb-comments" data-href="<?php echo $link; ?>"
									data-num-posts="<?php echo $comment_limit;?>" data-width="<?php echo $facebook_width; ?>">
							</div>
							<?php }else { ?>
								<?php if( count($comments) ) { ?>
								<div class="panel-heading space-20">
									<h4 class="panel-title"><?php echo $objlang->get('text_list_comments'); ?></h4>
								</div>
								<div class="pave-listcomments">
									<?php foreach( $comments as $comment ) {  $default='';?>
									<div class="comment-item media clearfix" id="comment<?php echo $comment['comment_id'];?>">
										<div class="media-left">
											<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&s=60" ?>" alt="<?php echo $comment['user'];?>" />
										</div>
										<div class="comment-wrap media-right">
											<div class="comment-meta">
												<span class="comment-created"><?php echo $objlang->get('text_created');?> <span><?php echo $comment['created'];?></span></span>
												<span class="comment-postedby"><?php echo $objlang->get('text_postedby');?> <span><?php echo $comment['user'];?></span></span>
												<span class="comment-link"><a href="<?php echo $link;?>#comment<?php echo $comment['comment_id'];?>"><?php echo $objlang->get('text_comment_link');?></a></span>
											</div>
											<div class="comment-description">
												<?php echo $comment['comment'];?>
											</div>
										</div>
									</div>
									<?php } ?>
									<div class="pagination">
										<?php echo $pagination;?>
									</div>
								</div>
								<?php } ?>
								<div class="panel-heading space-25">
									<h4><?php echo $objlang->get("text_leave_a_comment");?></h4>
								</div>
								<form action="<?php echo $comment_action;?>" method="post" id="comment-form" class="form-horizontal">
									<fieldset>
										<div class="message" style="display:none"></div>
										<div class="form-group required">
											<label class="col-sm-3 control-label" for="comment-user"><?php echo $objlang->get('entry_name');?></label>
											<div class="col-sm-9">
												<input class="form-control" type="text" name="comment[user]" value="" id="comment-user"/>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-3 control-label" for="comment-email"><?php echo $objlang->get('entry_email');?></label>
											<div class="col-sm-9">
												<input class="form-control" type="text" name="comment[email]" value="" id="comment-email"/>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-3 control-label" for="comment-comment"><?php echo $objlang->get('entry_comment');?></label>
											<div class="col-sm-9">
												<textarea class="form-control" name="comment[comment]"  id="comment-comment"></textarea>
											</div>
										</div>
										<?php if ($site_key) { ?>
												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-10">
													<div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
														<?php if ($error_captcha) { ?>
														<div class="text-danger"><?php echo $error_captcha; ?></div>
														<?php } ?>
													</div>
												</div>
											<?php } ?>
										<input type="hidden" name="comment[blog_id]" value="<?php echo $blog['blog_id']; ?>" />
										<div class="form-group">
											<div class="buttons text-right col-sm-12">
												<button class="btn btn-v2" type="submit">
													<span><?php echo $objlang->get('text_submit');?></span>
												</button>
											</div>
										</div>
									</fieldset>
								</form>
								<script type="text/javascript">
									$( "#comment-form .message" ).hide();
									$("#comment-form").submit( function(){
										$.ajax( {type: "POST",url:$("#comment-form").attr("action"),data:$("#comment-form").serialize(), dataType: "json",}).done( function( data ){
											if( data.hasError ){
												$( "#comment-form .message" ).html( data.message ).show();
											}else {
												location.href='<?php echo str_replace("&amp;","&",$link);?>';
											}
										} );
										return false;
									} );
								</script>
							<?php } ?>
						<?php } ?>
					</div>
				</div>
				<?php echo $content_bottom; ?>
			</div>
			<?php echo $column_right; ?>
		</div>
	</div>
</div>
<?php echo $footer; ?>