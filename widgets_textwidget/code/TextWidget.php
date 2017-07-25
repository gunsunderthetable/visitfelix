<?php
/**
 * a multi purpose Widget for 
 */
class TextWidget extends Widget {

	private static $title = "Text";

	private static $cmsTitle = "Text Widget";

	private static $description = "Displays a content widget in your sidebar";

	private static $db = array(
		'Heading' => 'Text',
                'WidgetContent' => 'Text',
                'LinkText' => 'Text',
                'ExternalLink' => 'Varchar(200)',
                'EmailContact' => 'Varchar(200)'
            
	);
        private static $has_one = array (
                'TargetPage' => 'SiteTree'
        );

	public function getCMSFields() {
		return new FieldList(
			new TextField('Heading', 'Heading'),
                        new TextAreaField('WidgetContent', 'Widget content'),
			new TextField('LinkText', 'Link text'),
                        new DropdownField("TargetPageID", "Page to link to", SiteTree::get()->sort('Title')->map()),
			new TextField('ExternalLink', 'External link - overrides internal link, starts with http://'),
                        new TextField('EmailContact','Contact email address')
		);
	}

}
class TextWidget_Controller extends Widget_Controller {
    
}


?>