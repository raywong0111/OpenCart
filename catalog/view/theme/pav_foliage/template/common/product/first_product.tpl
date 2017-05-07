<?php 
    $load = $this->registry->get("load");
    $language = $load->language("module/themecontrol");
    $text_sale = $language['text_sale'];
    $ourl = $this->registry->get('url'); 
    $objlang = $this->registry->get('language'); 
    if(!empty($first_product)) {
?>
<div class="product-block">
    <div class="product-img">
        <?php if( $first_product['special'] ) {   ?>
            <span class="sale-exist text-center"><?php echo $objlang->get('text_sale'); ?></span>
        <?php } ?>
        <a class="img" title="<?php echo $first_product['name']; ?>" href="<?php echo $first_product['href']; ?>">
            <img src="<?php echo $first_product['thumb']; ?>" alt="<?php echo $first_product['name']; ?>" title="<?php echo $first_product['name']; ?>" class="img-responsive" />
        </a>
        <div class="group-right">
            <div class="cart">
                <button class="btn btn-action" title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $first_product['product_id']; ?>');">
                    <i class="fa fa-shopping-cart"></i>
                </button>
            </div>
            <div class="wishlist">
                <button class="btn btn-action" type="button" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.add('<?php echo $first_product['product_id']; ?>');">
                    <i class="fa fa-heart"></i>
                </button>
            </div>
            <div class="compare">
                <button class="btn btn-action" type="button" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.add('<?php echo $first_product['product_id']; ?>');">
                    <i class="fa fa-bar-chart"></i>
                </button> 
            </div>
        </div>
        <div class="group-action">
            <div class="action clearfix">
                <div class="add-links">
                    <?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $first_product['thumb'] ));  ?>
                        <?php if ($quickview) { ?>
                            <div class="top quickview hidden-sm hidden-xs">
                                <a class="iframe-link text-center quick-view" data-toggle="tooltip" data-placement="top" href="<?php echo $ourl->link('themecontrol/product','product_id='.$first_product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" >
                                    <i class="zmdi zmdi-eye"></i>
                                </a>
                            </div>
                        <?php } ?>
                    <?php } ?>
                    <div class="top zoom hidden-sm hidden-xs">
                        <?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $first_product['thumb'] ));  ?>
                            <a data-toggle="tooltip" data-placement="top" class="zoom info-view" title="<?php echo $first_product['name']; ?>" href="<?php echo $zimage;?>">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
        <?php if ($first_product['price']) { ?>
            <div class="box-price"> 
                <div class="price">
                    <?php if (!$first_product['special']) { ?>
                        <span class="price-olds"><?php echo $first_product['price']; ?></span>
                    <?php } else { ?>
                        <span class="price-new"><?php echo $first_product['special']; ?></span>
                        <span class="price-old"><?php echo $first_product['price']; ?></span>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
    </div>
    <div class="product-meta">
        <h6 class="name"><a href="<?php echo $first_product['href']; ?>"><?php echo $first_product['name']; ?></a></h6>
        <?php if( isset($first_product['description']) ){ ?>
            <p class="description"><?php echo utf8_substr( strip_tags($first_product['description']),0,200);?>...</p>
        <?php } ?>
        <?php if ($first_product['rating']) { ?>
            <div class="rating">
                <?php for ($is = 1; $is <= 5; $is++) { ?>
                    <?php if ($first_product['rating'] < $is) { ?>
                        <span><i class="fa fa-star"></i></span>
                    <?php } else { ?>
                        <span class="rate"><i class="fa fa-star"></i></span>
                    <?php } ?>
                <?php } ?>
            </div>
        <?php } ?>
        <?php if ($first_product['price']) { ?>
            <div class="box-price"> 
                <div class="price">
                    <?php if (!$first_product['special']) { ?>
                        <span class="price-olds"><?php echo $first_product['price']; ?></span>
                    <?php } else { ?>
                        <span class="price-new"><?php echo $first_product['special']; ?></span>
                        <span class="price-old"><?php echo $first_product['price']; ?></span>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
        <div class="group-actions clearfix">
            <div class="cart pull-left">
                <button title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $first_product['product_id']; ?>');">
                    <span><?php echo $button_cart; ?></span>
                </button>
            </div>
            <div class="wishlist pull-left">
                <button type="button" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.add('<?php echo $first_product['product_id']; ?>');">
                    <i class="fa fa-heart"></i>
                </button>
            </div>
            <div class="compare pull-left">
                <button class="btn btn-action" type="button" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.add('<?php echo $first_product['product_id']; ?>');">
                    <i class="fa fa-bar-chart"></i>
                </button> 
            </div>
            <?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $first_product['thumb'] ));  ?>
                <?php if ($quickview) { ?>
                    <div class="quickview pull-left hidden-sm hidden-xs">
                        <a class="iframe-link text-center quick-view" data-toggle="tooltip" data-placement="top" href="<?php echo $ourl->link('themecontrol/product','product_id='.$first_product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" >
                            <i class="zmdi zmdi-eye"></i>
                        </a>
                    </div>
                <?php } ?>
            <?php } ?>
            <div class="zoom pull-left hidden-xs">
                <?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $first_product['thumb'] ));  ?>
                    <a data-toggle="tooltip" data-placement="top" class="zoom info-view" title="<?php echo $first_product['name']; ?>" href="<?php echo $zimage;?>">
                        <i class="fa fa-search-plus"></i>
                    </a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php } ?>