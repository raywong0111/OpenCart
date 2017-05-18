<?php echo $header; ?>
<div class="mass-header clearfix">
    <div class="container">
        <?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
        <h1><?php echo $heading_title; ?></h1>
    </div>
</div>
<div class="container">
    <div class="row">
        <?php echo $content_top; ?>
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-lg-6 col-md-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-lg-9 col-md-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-lg-12 col-md-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?> col-sm-12 col-xs-12">
            <div class="manufacturers bg-white">
                <?php if ($categories) { ?>
                    <p>
                        <strong><?php echo $text_index; ?></strong>
                        <?php foreach ($categories as $category) { ?>
                            &nbsp;&nbsp;&nbsp;<a class="link-manufacturer" href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
                        <?php } ?>
                    </p>
                    <?php foreach ($categories as $category) { ?>
                        <h2 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h2>
                        <?php if ($category['manufacturer']) { ?>
                            <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
                                <div class="row">
                                    <?php foreach ($manufacturers as $manufacturer) { ?>
                                        <div class="col-sm-3"><a class="link-manufacturer" href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php } else { ?>
                    <p><?php echo $text_empty; ?></p>
                    <div class="buttons clearfix">
                        <div class="pull-right"><a class="link-manufacturer" href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                    </div>
                <?php } ?>
                <?php echo $content_bottom; ?>
            </div>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>