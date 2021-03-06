<?php
	class PtsWidgetInteractive_banner extends PtsWidgetPageBuilder {
		public $name = 'interactive_banner';
		public $usemeneu = false;
		public  static function getWidgetInfo(){
			return array( 'label' => 'Interactive Banner', 'explain' => 'Interactive Banner', 'group' => 'image'  );
		}
		public static function renderButton(){
		}
		public function renderForm( $args, $data ){
			$key = time();
			$helper = $this->getFormHelper();
			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Image File'),
	                    'name'  => 'imagefile',
	                    'class' => 'imageupload',
	                    'default'=> '',
	                    'id'	 => 'imagefile'.$key,
	                    'desc'	=> 'Put image folder in the image folder ROOT_SHOP_DIR/img/'
	                ),
					array(
						'type' => 'text',
						'label' => $this->l('Image Width'),
						'name' => ('width'),
						'desc' => $this->l('Define the width of images displayed in this block.'),
						'default' => '280'
					),
					array(
						'type' => 'text',
						'label' => $this->l('Image Height.'),
						'name' => ('height'),
						//'class' => 'fixed-width-xs',
						'desc' => $this->l('Define the height of images displayed in this block.'),
						'default' => '240'
					),
					array(
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'htmlcontent',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => '',
	                    'lang'  => true,
	                    'default'=> '',
	                    'autoload_rte' => true,
	                ),
	               	 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Facebook' ),
	                    'name' => 'facebook_use',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	),
                	array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Twitter' ),
	                    'name' => 'twitter_id',
	                    'default' => "366766896986591232",
						'desc' => 'Example: 366766896986591232'
                	),
					array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Pinterest' ),
	                    'name' => 'pinterest_user',
	                    'default' => "",
						'desc' => 'Example: PavoThemes'
                	),
					array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Google Plus' ),
	                    'name' => 'google_plus',
	                    'default' => "113894539042817548313",
						'desc' => 'Example: 113894539042817548313'
                	),
                	array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Vimeo' ),
	                    'name' => 'vimeo_user',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	),
					array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Youtube' ),
	                    'name' => 'youtube_user',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	),
					array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Mask link' ),
	                    'name' => 'mask_link',
	                    'default' => "#",
						'desc' => ''
                	),
					array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Effect banner type' ),
	                    'name' => 'effect_type',
	                    'desc'  => 'Select Effect type',
	                    'options' => array(  'query' => array(
	                        array('id' => 'effect-v1', 'name' => $this->l('Effect banner v1')),
                          	array('id' => 'effect-v2', 'name' => $this->l('Effect banner v2')),
                          	array('id' => 'effect-v3', 'name' => $this->l('Effect banner v3')),
							array('id' => 'effect-v4', 'name' => $this->l('Effect banner v4')),
							array('id' => 'effect-v5', 'name' => $this->l('Effect banner v5')),
							array('id' => 'effect-v6', 'name' => $this->l('Effect banner v6')),
							array('id' => 'effect-v7', 'name' => $this->l('Effect banner v7')),
							array('id' => 'effect-v8', 'name' => $this->l('Effect banner v8')),
							array('id' => 'effect-v9', 'name' => $this->l('Effect banner v9')),
							array('id' => 'effect-v10', 'name' => $this->l('Effect banner v10')),
							array('id' => 'effect-v11', 'name' => $this->l('Effect banner v11')),
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "",
	                ),
					array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Position' ),
	                    'name' => 'position',
	                    'desc'  => 'Select position dipslay content',
	                    'options' => array(  'query' => array(
	                        array('id' => 'center', 'name' => $this->l('Center')),
                          	array('id' => 'left', 'name' => $this->l('Left')),
                          	array('id' => 'right', 'name' => $this->l('Right')),
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "",
	                ),
	            ),
	      		'submit' => array(
	                'title' => $this->l('Save'),
	                'class' => 'button'
           		)
	        );
		 	$default_lang = (int)$this->config->get('config_language_id');
			$helper->tpl_vars = array(
                'fields_value' => $this->getConfigFieldsValues( $data  ),
                'id_language' => $default_lang
        	);
			$this->load->model('tool/image');
			$this->model_tool_image->resize('no_image.png', 100, 100);
			$placeholder  = $this->model_tool_image->resize('no_image.png', 100, 100);
			$string = '
			<script type="text/javascript">
				$(".imageupload").WPO_Gallery({key:"'.$key.'",gallery:false,placehold:"'.$placeholder.'",baseurl:"'.HTTP_CATALOG . 'image/'.'" } );
			</script>
			';
			return  '<div id="imageslist'.$key.'">'.$helper->generateForm( $this->fields_form ) .$string."</div>" ;
		}
		public function renderContent(  $args, $setting ){
			$t  = array(
				'name'=> '',
				'html'   => '',
				'height' => 130,
				'width'  => 170,
				'nbr'    => 6,
				'page'   => 3,
				'cols'	 => 4,
				'intv'	 => 8000,
				'show'  => 1,
			);
			$setting = array_merge( $t, $setting );
			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';
			$setting = array_merge( $t, $setting );
			$setting['thumbnailurl'] = $url.$setting['imagefile'];
			$setting['imageurl'] = $url.$setting['imagefile'];
			$this->load->model('tool/image');
			$setting['thumbnailurl']= $this->model_tool_image->resize( $setting['imagefile'], (int)$setting['width'], (int)$setting['height'],'w');
			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';
			$setting['htmlcontent']= isset($setting['htmlcontent_'.$languageID])?html_entity_decode($setting['htmlcontent_'.$languageID],ENT_QUOTES,'UTF-8'): '';
			$output = array('type'=>'image','data' => $setting );
	  		return $output;
		}
	}
?>