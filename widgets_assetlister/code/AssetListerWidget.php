<?php
/**
 * a multi purpose Widget for Source
 */
class AssetListerWidget extends Widget {

	private static $title = "Assets";

	private static $cmsTitle = "Assets Widget";

	private static $description = "Displays an asset lister widget in your sidebar";

	private static $db = array(
		'Heading' => 'Text',
                'WidgetContent' => 'Text'
	);
        private static $has_one = array (
                'Folder' => 'Folder'
        );

	public function getCMSFields() {
		return new FieldList(
			new TextField('Heading', 'Heading'),
                        new TextAreaField('WidgetContent', 'Widget content'),
                        new DropdownField("FolderID", "Folder to display", File::get()->filter(array('ClassName' => 'Folder'))->sort('Title')->map())
		);
	}
        public function getThisFolder() {
            if($this->FolderID)
            {
                $records = File::get()->filter(array('ParentID' => $this->FolderID))->sort('LastEdited','DESC');
                return $records;
            }                     
        }
}
class AssetListerWidget_Controller extends Widget_Controller {

    
}


