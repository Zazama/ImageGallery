<?php
use SilverStripe\View\Requirements;


class GLightbox extends ImageGalleryUI
{
	public static $link_to_demo = "https://biati-digital.github.io/glightbox/#licens";
	public static $label = "GLightbox";
	public $item_template = "TractorCow\\ImageGallery\\Items\\Glightbox_item";

	public function initialize()
	{
		Requirements::javascript('image_gallery/gallery_ui/glightbox/javascript/glightbox.min.js');
		Requirements::javascript('image_gallery/gallery_ui/glightbox/javascript/glightbox_init.js');
		Requirements::css('image_gallery/gallery_ui/glightbox/css/glightbox.min.css');

	}

}
