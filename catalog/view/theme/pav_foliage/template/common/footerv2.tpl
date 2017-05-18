			</div>
			<?php
				$blockid = 'mass_bottom';
				$blockcls = '';
				$ospans = array(1=>12);
				$tmcols = 'col-sm-4 col-xs-12';
				require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
				$defaultFooter = false;
			?>
			<footer id="footer" class="footer-v2">
				<div class="container">
					<div class="row">
						<div class="space-top-30 col-lg-3 col-md-3 col-sm-12 col-xs-12 copyright">
							<img src="image/catalog/logo-footer.png" alt="" />
							<p>
								<?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
									<?php echo html_entity_decode($helper->getConfig('copyright')); ?>
								<?php }
								else { ?>
									<?php echo $powered; ?>.
								<?php } ?>
							</p>
						</div>
		                <div class="space-top-30 col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-right">
		                    <?php
		                        echo $helper->renderModule('pavnewsletter');
		                    ?>
		                </div>
						<div class="space-top-30 col-lg-2 col-md-2 col-sm-4 col-xs-12">
			        		<ul class="list-unstyled">
			          			<?php foreach ($informations as $information) { ?>
			          				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			          			<?php } ?>
			        		</ul>
						</div>
						<div class="space-top-30 col-lg-2 col-md-2 col-sm-4 col-xs-12">
			        		<ul class="list-unstyled">
			         			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
			          			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			          			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			          			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			        		</ul>
						</div>
						<div class="space-top-30 col-lg-2 col-md-2 col-sm-4 col-xs-12">
			    			<ul class="list-unstyled">
			      				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			      				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			      				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			    			</ul>
						</div>
					</div>
				</div>
			</footer>
			<div id="back-to-top">
				<a class="scrollup" href="#"><i class="zmdi zmdi-long-arrow-up"></i></a>
			</div>
			<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
			  	<?php  echo $helper->renderAddon( 'panel' );?>
			<?php } ?>
			<?php
			  	$offcanvas = $helper->getConfig('offcanvas','category');
			  	if($offcanvas == "megamenu") {
			      	echo $helper->renderAddon( 'offcanvas');
			  	} else {
			      	echo $helper->renderAddon( 'offcanvas-category');
			  	}
			?>
		</div>
	</body>
</html>