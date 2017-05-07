<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" class="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<?php  require( ThemeControlHelper::getLayoutPath( 'common/parts/head.tpl' ) );   ?>
<body class="<?php echo $class; ?> <?php echo $helper->getPageClass();?>">
	<div class="row-offcanvas row-offcanvas-left layout-<?php echo $template_layout; ?>">
		<header id="header" class="header-v1 clearfix">
			<div class="container">
				<div class="row">
					<div class="group-menu-clicks col-lg-3 col-md-3 col-sm-3 col-xs-4">
						<div id="group-menu-click">
							<div class="logo-menu"><img alt="" src="image/catalog/logo.png"></div>
							<div class="bo-mainmenu">
								<?php  require( ThemeControlHelper::getLayoutPath( 'common/parts/mainmenu.tpl' ) );   ?>
							</div>
						</div>
			            <button type="button" class="btn menubutton hidden-sm hidden-xs">
			                <i class="fa fa-bars"></i><span>MENU</span>
			            </button>
			        </div>
					<div id="logo" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
						<?php if ($logo) { ?>
							<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
						<?php }
						else { ?>
							<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
						<?php } ?>
					</div>
					<div class="boxsetting col-lg-3 col-md-3 col-sm-3 col-xs-8">
						<div id="setting-user" class="pull-right">
							<div class="dropdown">
								<div class="dropdown-toggle bar text-center" data-toggle="dropdown">
									<i class="fa fa-pencil-square-o"></i>
								</div>
								<ul class="dropdown-menu box-setting">
									<li class="language-currency">
										<h5><?php echo 'Language & Curency'; ?></h5>
										<?php echo $language; ?>
										<?php echo $currency; ?>
									</li>
									<li class="myaccount">
										<ul>
											<?php if ($logged) { ?>
												<li><a href="<?php echo $account; ?>"><i class="fa fa-user"></i> <?php echo $text_account; ?></a></li>
												<li><a href="<?php echo $wishlist; ?>"><i class="fa fa-heart"></i> <span id="wishlist-total"><?php echo $text_wishlist; ?></span></a></li>
												<li><a href="<?php echo $shopping_cart; ?>"><i class="zmdi zmdi-shopping-basket"></i> <?php echo $text_shopping_cart; ?></a></li>
												<li><a href="<?php echo $checkout; ?>"><i class="fa fa-reply"></i> <?php echo $text_checkout; ?></a></li>
												<li><a href="<?php echo $logout; ?>"><i class="fa fa-sign-out"></i> <?php echo $text_logout; ?></a></li>
											<?php }
											else { ?>
												<li><a href="<?php echo $account; ?>"><i class="fa fa-user"></i> <?php echo $text_account; ?></a></li>
												<li><a href="<?php echo $wishlist; ?>"><i class="fa fa-heart"></i> <span id="wishlist-total"><?php echo $text_wishlist; ?></span></a></li>
												<li><a href="<?php echo $shopping_cart; ?>"><i class="zmdi zmdi-shopping-basket"></i> <?php echo $text_shopping_cart; ?></a></li>
												<li><a href="<?php echo $checkout; ?>"><i class="fa fa-reply"></i> <?php echo $text_checkout; ?></a></li>
												<li><a href="<?php echo $register; ?>"><i class="fa fa-pencil"></i> <?php echo $text_register; ?></a></li>
												<li><a href="<?php echo $login; ?>"><i class="zmdi zmdi-lock"></i> <?php echo $text_login; ?></a></li>
											<?php } ?>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div id="group-search-click" class="pull-right">
							<div class="toggle-overlay-container">
								<div class="box-search clearfix">
									<?php echo $search; ?>
									<div class="dropdown-toggle-button" data-target=".toggle-overlay-container"><i class="zmdi zmdi-close"></i></div>
								</div>
							</div>
							<button class="dropdown-toggle-overlay" type="button" data-target=".toggle-overlay-container">
								<span class="fa fa-search"></span>
							</button>
						</div>
						<div id="cart-top" class="pull-right">
							<?php echo $cart; ?>
						</div>
					</div>
				</div>
			</div>
		</header>
        <!-- sys-notification -->
        <div id="sys-notification">
          	<div class="container">
            	<div id="notification"></div>
          	</div>
        </div>
        <!-- /sys-notification -->
		<?php
			/**
			* Showcase modules
			* $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
			*/
			//$modules = $helper->getCloneModulesInLayout( $blockid, $layoutID );
			$blockid = 'slideshow';
			$blockcls = "hidden-xs hidden-sm";
			$ospans = array(1=>12);
			require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
		?>
		<?php
			/**
			* Showcase modules
			* $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
			*/
			$blockid = 'showcase';
			$blockcls = 'hidden-xs hidden-sm';
			$ospans = array(1=>12);
			require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
		?>
		<?php
			/**
			* promotion modules
			* $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
			*/
			$blockid = 'promotion';
			$blockcls = "hidden-xs hidden-sm";
			$ospans = array(1=>12, 2=>12);
			require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
		?>
		<div class="maincols clearfix">