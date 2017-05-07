</div>
<?php
	$blockid = 'mass_bottom';
	$blockcls = '';
	$ospans = array(1=>12);
	$tmcols = 'col-sm-12 col-xs-12';
	require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
	$defaultFooter = false;
?>
<footer id="footer-default">
  	<div class="container">
        <div class="main-footer">
          	<div class="row">
            	<?php if ($informations) { ?>
            		<div class="column col-xs-12 col-sm-6 col-md-3 col-lg-3">
                		<div class="panel-heading"><h4 class="panel-title panel-v2"><?php echo $text_information; ?></h4></div>
                		<ul class="list-unstyled">
                  			<?php foreach ($informations as $information) { ?>
                  				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  			<?php } ?>
                		</ul>
            		</div>
            	<?php } ?>
            	<div class="column col-xs-12 col-sm-6 col-md-3 col-lg-3">
              		<div class="panel-heading"><h4 class="panel-title panel-v2"><?php echo $text_service; ?></h4></div>
        			<ul class="list-unstyled">
          				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        			</ul>
            	</div>
            	<div class="column col-xs-12 col-sm-6 col-md-3 col-lg-3">
    				<div class="panel-heading"><h4 class="panel-title panel-v2"><?php echo $text_extra; ?></h4></div>
            		<ul class="list-unstyled">
             			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
              			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
              			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            		</ul>
            	</div>
            	<div class="column col-xs-12 col-sm-6 col-md-3 col-lg-3">
              		<div class="panel-heading"><h4 class="panel-title panel-v2"><?php echo $text_account; ?></h4></div>
            		<ul class="list-unstyled">
              			<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
             			<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
             			<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            		</ul>
            	</div>
          	</div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
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