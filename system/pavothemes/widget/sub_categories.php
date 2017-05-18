<?php 

class PtsWidgetSub_categories extends PtsWidgetPageBuilder {
	public $name = 'sub_categories';

	
	public static function getWidgetInfo(){
		return  array('label' => ('Sub Categories In Parent'), 'explain' => 'Show List Of Categories Links Of Parent' , 'group' => 'opencart'  );
	}


	public function renderForm( $args, $data ){

		 

	 	$helper = $this->getFormHelper();

		$this->fields_form[1]['form'] = array(
            'legend' => array(
                'title' => $this->l('Widget Form.'),
            ),
            'input' => array(
                array(
                    'type' => 'text',
                    'label' => $this->l('Parent Category ID'),
                    'name' => 'category_id',
                    'default'=> '6',
                ),
                 array(
                    'type' => 'text',
                    'label' => $this->l('Limit'),
                    'name' => 'limit',
                    'default'=> '6',
                )
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


		return  $helper->generateForm( $this->fields_form );
	}

	public function renderContent(  $args, $setting ){
		$t  = array(
			'category_id'=> 0,
			'limit'   => '12'
		);
		$setting = array_merge( $t, $setting );

		$languageID = $this->config->get('config_language_id');
		$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

		$limit = (int)$setting['limit'];

		$this->load->model("catalog/category");
		$subcategories  = $this->model_catalog_category->getCategories($setting['category_id']);

		if(empty($subcategories)) {
			return;
		}

		foreach ($subcategories as &$category) {
			$category['href'] = $this->url->link('product/category', 'path=' . $setting['category_id'] . '_' . $category['category_id'], true);
		}

 		$setting['subcategories'] = array_slice($subcategories, 0, $setting['limit']);

 		//echo "<pre>"; print_r($setting); die;

		$output = array('type'=>'sub_categories','data' => $setting );

		return $output;
	}
}
?>