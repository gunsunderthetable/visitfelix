
<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <% loop $Images.Sort(SortOrder,ASC) %>
            <% if pos=="1" %>
            <div class="galleryBox giant position-$pos">
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(800,800).URL" alt="$Title"/>
                    <% include ImageSocial %>
                </div>
            </div>
            <% else_if pos=="7" %>
            <div class="galleryBox giant right position-$pos">        
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(500,500).URL" alt=""/>
                    <% include ImageSocial %>
                </div>
            </div>              
            <% else %>
            <div class="galleryBox position-$pos">        
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(500,500).URL" alt=""/></a>
                    <% include ImageSocial %>
                </div>
            </div>
            <% end_if %>
            <% end_loop %>        
	        
	    </div>
        <div class="sideBar">
            <% include SubNav %>
            <% include ImageLinks %>
            <% include ContentPageImages %>
            $MyWidgetArea
        </div>        
    </div>
</div>

<% require css("gallery/css/gallery.css") %>
<% require css("gallery/css/lightbox.css") %>
<% require javascript("gallery/javascript/lightbox.min.js") %>              
