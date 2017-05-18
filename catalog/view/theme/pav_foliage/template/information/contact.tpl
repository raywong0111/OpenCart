<?php  echo $header; ?>
<?php
    $config = $sconfig;
    $theme  = $themename;
    $themeConfig = (array)$config->get('themecontrol');
?>
<div class="main-columns container">
    <?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
	<div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-lg-6 col-md-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-lg-9 col-md-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-lg-12 col-md-12'; ?>
        <?php } ?>
		<div id="sidebar-main" class="<?php echo $class; ?> col-sm-12 col-xs-12">
			<div id="content" class="contact-info bg-white">
				<?php echo $content_top; ?>
				<div id="contact-map" class="contact-location hidden-xs space-50"></div>
				<?php if ($locations) { ?>
					<h3><?php echo $text_store; ?></h3>
					<div class="panel-group" id="accordion">
						<?php foreach ($locations as $location) { ?>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
								</div>
								<div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
									<div class="panel-body">
										<div class="row">
											<?php if ($location['image']) { ?>
												<div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
											<?php } ?>
											<div class="col-sm-3">
												<strong><?php echo $location['name']; ?></strong><br />
												<address>
													<?php echo $location['address']; ?>
												</address>
												<?php if ($location['geocode']) { ?>
													<a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
												<?php } ?>
											</div>
											<div class="col-sm-3">
												<strong><?php echo $text_telephone; ?></strong><br>
												<?php echo $location['telephone']; ?><br />
												<br />
												<?php if ($location['fax']) { ?>
													<strong><?php echo $text_fax; ?></strong><br>
													<?php echo $location['fax']; ?>
												<?php } ?>
											</div>
											<div class="col-sm-3">
												<?php if ($location['open']) { ?>
													<strong><?php echo $text_open; ?></strong><br />
													<?php echo $location['open']; ?><br />
													<br />
												<?php } ?>
												<?php if ($location['comment']) { ?>
													<strong><?php echo $text_comment; ?></strong><br />
													<?php echo $location['comment']; ?>
												<?php } ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						<?php } ?>
					</div>
				<?php } ?>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal content-contact">
                    <div class="row">
                        <?php
                            $html = html_entity_decode($themeConfig['contact_customhtml'][$config->get('config_language_id')]);
                            $c = 0;
                            $c2 = 8;
                        ?>
                        <fieldset class="col-lg-5 col-md-5 col-sm-5 col-xs-12 pull-right">
                            <div class="panel-heading space-35">
				                <h4 class="panel-title panel-v1"><?php echo $heading_title; ?></h4>
                            </div>
                            <div class="contact-customhtml">
                                <div class="content">
                                    <div class="panel-contact-info">
                                        <div class="space-50">
                                            <?php if ($image) { ?>
                                                <div class="col-sm-12">
                                                    <img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail"/>
                                                </div>
                                            <?php } ?>
                                            <div class="media">
                                                <div class="media-icon pull-left">
                                                    <i class="fa fa-home"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading panel-title"><?php echo $store; ?></h4>
                                                    <?php echo $address; ?>
                                                    <?php if ($geocode) { ?>
                                                        <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="media-icon pull-left">
                                                    <i class="fa fa-phone"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading panel-title"><?php echo $text_telephone; ?></h4>
                                                    <?php echo $telephone; ?>
                                                </div>
                                            </div>
                                            <!--<div class="media">
                                                <div class="media-icon pull-left">
                                                    <i class="fa fa-fax"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading panel-title"><?php echo $text_fax; ?></h4>
                                                    <?php echo $fax; ?>
                                                </div>
                                            </div>-->
                                            <?php if ($open) { ?>
                                                <div class="media">
                                                    <div class="media-icon pull-left">
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading panel-title"><?php echo $text_open; ?></h4>
                                                        <?php echo $open; ?>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                            <?php if ($comment) { ?>
                                                <div class="media">
                                                    <div class="media-icon pull-left">
                                                        <i class="fa fa-phone"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading panel-title"><?php echo $text_comment; ?></h4>
                                                        <?php echo $comment; ?>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <?php if( !empty($html) ) { ?>
                                        <div class="panel-contact-custom">
                                            <?php echo $html; ?>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pull-left">
                            <div class="panel-heading space-25">
                                <h4 class="panel-title panel-v1">
                                    <?php echo $text_contact; ?>
                                </h4>
                            </div>
                            <div class="row">
                                <div class="form-group required col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="row">
                                        <label class="col-sm-12 control-label" for="input-name">
                                            <?php echo $entry_name; ?>
                                        </label>
                                        <div class="col-sm-12">
                                            <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                                            <?php if ($error_name) { ?>
                                                <div class="text-danger"><?php echo $error_name; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group required col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="row">
                                        <label class="col-sm-12 control-label" for="input-email">
                                            <?php echo $entry_email; ?>
                                        </label>
                                        <div class="col-sm-12">
                                            <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                                            <?php if ($error_email) { ?>
                                                <div class="text-danger"><?php echo $error_email; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group required col-lg-12 col-sm-12 col-xs-12">
                                    <div class="row">
                                        <label class="col-sm-12 control-label" for="input-enquiry">
                                            <?php echo $entry_enquiry; ?>
                                        </label>
                                        <div class="col-sm-12">
                                            <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                                            <?php if ($error_enquiry) { ?>
                                                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-sm-12 col-xs-12">
                                    <div class="row">
                                        <div class="captcha col-lg-12 col-sm-12 col-xs-12">
                                            <?php echo $captcha; ?>
                                        </div>
                                        <div class="col-lg-12 col-sm-12 col-xs-12 text-right">
                                            <input class="btn btn-v2" type="submit" value="<?php echo $button_submit; ?>" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <?php echo $content_bottom; ?>
            </div>
        </div>
		<?php echo $column_right; ?>
    </div>
</div>

 <?php // Jquery googlemap api v3?>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDj2QuD0yW1Kk3t_lgToAQkbdjjpGHVYho&"></script>
    <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.infobox.js"></script>
    <script type="text/javascript">
        var mapDiv, map, infobox;
        var lat = <?php echo isset($themeConfig['location_latitude'])?$themeConfig['location_latitude']:'40.705423'; ?>;
        var lon = <?php echo isset($themeConfig['location_longitude'])?$themeConfig['location_longitude']:'-74.008616'; ?>;
        jQuery(document).ready(function($) {
            mapDiv = $("#contact-map");
            mapDiv.height(400).gmap3({
                map:{
                    options:{
                        center:[lat,lon],
                        zoom: 15
                    }
                },
                marker:{
                    values:[
                        {latLng:[lat, lon], data:"<?php echo isset($themeConfig['location_address'])?$themeConfig['location_address']:'79-99 Beaver Street, New York, NY 10005, USA'; ?>"},
                    ],
                    options:{
                        draggable: false
                    },
                    events:{
                          mouseover: function(marker, event, context){
                            var map = $(this).gmap3("get"),
                                infowindow = $(this).gmap3({get:{name:"infowindow"}});
                            if (infowindow){
                                infowindow.open(map, marker);
                                infowindow.setContent(context.data);
                            } else {
                                $(this).gmap3({
                                infowindow:{
                                    anchor:marker, 
                                    options:{content: context.data}
                                }
                              });
                            }
                        },
                        mouseout: function(){
                            var infowindow = $(this).gmap3({get:{name:"infowindow"}});
                            if (infowindow){
                                infowindow.close();
                            }
                        }
                    }
                }
            });
        });
    </script>
    <?php //end contact map ?>
<?php echo $footer; ?>