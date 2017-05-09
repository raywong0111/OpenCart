<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
	<div class="container">
		<div class="row">
			<div class="space-top-25 col-lg-2 col-md-2 col-sm-2 col-xs-12">
        		<ul class="list-unstyled">
          			<?php foreach ($informations as $information) { ?>
          				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          			<?php } ?>
        		</ul>
			</div>
			<div class="space-top-25 col-lg-2 col-md-2 col-sm-2 col-xs-12">
        		<ul class="list-unstyled">
         			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        		</ul>
			</div>
			<div class="space-top-25 col-lg-2 col-md-2 col-sm-2 col-xs-12">
    			<ul class="list-unstyled">
      				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    			</ul>
			</div>
			<div class="space-top-25 col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right copyright">
				<img src="image/catalog/logo.png" alt="" />
				<p>
					<?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
						<?php echo html_entity_decode($helper->getConfig('copyright')); ?>
					<?php }
					else { ?>
						<?php echo $powered; ?>.
					<?php } ?>
				</p>
			</div>
		</div>
	</div>
</div>
