			</div>
			<?php
				$blockid = 'mass_bottom';
				$blockcls = '';
				$ospans = array(1=>12);
				$tmcols = 'col-sm-4 col-xs-12';
				require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
				$defaultFooter = false;
			?>
			<footer id="footer" class="footer-v1">
				<?php
					$blockid = 'footer_center';
					$blockcls = '';
					$ospans = array(1=>4,2=>4,3=>4);
					require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
					if( count($modules) <=0 ){
						require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_center.tpl' ) );
					}
				?>
				<?php
					$blockid = 'footer_bottom';
					$blockcls = '';
					$ospans = array(1=>4,2=>4,3=>4);
					require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
					if( count($modules) <=0 ){
						require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_bottom.tpl' ) );
					}
				?>
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