<?php
 
class HtmlContentWidget extends Widget {
	private static $db = array(
		'WidgetTitle' => 'Varchar(255)',
		'HTMLWidgetContent' => 'HTMLText'
	);
 
	private static $cmsTitle = 'HTML Content';
	private static $description = 'A widget to contain any HTML content.';
	
	

 
	function getCMSFields() {
		return new FieldList (
			new TextField('WidgetTitle','Title'),
			new TextAreaField('HTMLWidgetContent','The HTML content for your widget')
		);
	}
}
 
?>
