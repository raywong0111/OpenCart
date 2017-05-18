<div class="panel panel-default pavblogs-comments">
    <div class="panel-heading">
	   	<h4 class="panel-title panel-v1"><?php echo 'Comments'; ?></h4>
    </div>
	<div class="panel-body" >
		<?php if( !empty($comments) ) { ?>
			 <?php $default=''; foreach( $comments as $comment ) { ?>
				<div class="pav-comment clearfix">
					<a href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
					<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&s=60" ?>" alt="<?php echo $comment['user'];?>" />
					</a>
					<div class="comment">
						<p><?php echo utf8_substr( $comment['comment'], 50 ); ?></p>
						<span class="comment-author"><?php echo $objlang->get('text_postedby');?> <?php echo $comment['user'];?>...</span>
					</div>
				</div>
			 <?php } ?>
		<?php } ?>
	</div>
 </div>
