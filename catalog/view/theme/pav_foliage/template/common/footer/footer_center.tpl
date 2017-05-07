<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
  	<div class="container">
    <div class="main-footer">
      	<div class="row">
                <div class="column col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <?php
                        echo $helper->renderModule('pavnewsletter');
                    ?>
                </div>
                <div class="column text-center social col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <?php
                        if($content=$helper->getLangConfig('widget_social_network')){
                            echo $content;
                        }
                    ?>
                </div>
            </div>
      	</div>
  	</div>
</div>