<?php

	class RelatedWidget extends Widget {
		
		private static $cmsTitle = 'Related Widget';
		private static $description = 'Link manually up to 4 other pages';
	
		private static $db = array(
			'WidgetTitle' => 'Varchar(200)',
			'IntroText' => 'Text',
			'Link1Text' => 'Varchar(200)',
			'Link1ELink' => 'Varchar(255)',
			'Link2Text' => 'Varchar(200)',
			'Link2ELink' => 'Varchar(255)',	
			'Link3Text' => 'Varchar(200)',
			'Link3ELink' => 'Varchar(255)',	
			'Link4Text' => 'Varchar(200)',
			'Link4ELink' => 'Varchar(255)'
		);	
		
		private static $has_one = array(
			'Link1ILink' => 'Page',
			'Link2ILink' => 'Page',
			'Link3ILink' => 'Page',
			'Link4ILink' => 'Page' 
		);
		
		public function getCMSFields()
		{
			return new FieldList(
				new TextField('WidgetTitle', 'Widget Title'),
				new TextareaField('IntroText', 'Intro Text'),
				new HeaderField('Link 1'),
				new TextField('Link1Text', 'Link 1 Text'),
                                new DropdownField("Link1ILinkID", "Page to link to", SiteTree::get()->sort('Title')->map()),
				new TextField('Link1ELink', 'Link 1 External (Include http://, overrides Internal Link)'),
				new HeaderField('Link 2', 2),
				new TextField('Link2Text', 'Link 2 Text'),
                                new DropdownField("Link2ILinkID", "Page to link to", SiteTree::get()->sort('Title')->map()),
				new TextField('Link2ELink', 'Link 2 External (Include http://, overrides Internal Link)'),
				new HeaderField('Link 3', 2),
				new TextField('Link3Text', 'Link 3 Text'),
                                new DropdownField("Link3ILinkID", "Page to link to", SiteTree::get()->sort('Title')->map()),
				new TextField('Link3ELink', 'Link 3 External (Include http://, overrides Internal Link)'),
				new HeaderField('Link 4', 2),
				new TextField('Link4Text', 'Link 4 Text'),
                                new DropdownField("Link14LinkID", "Page to link to", SiteTree::get()->sort('Title')->map()),
				new TextField('Link4ELink', 'Link 4 External (Include http://, overrides Internal Link)')
			);
		}

	
	
	}
class RelatedWidget_Controller extends Widget_Controller {
    
}