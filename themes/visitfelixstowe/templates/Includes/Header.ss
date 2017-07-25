<div id="header">
    <% with $TheHomePage %>
    <% if Slides %>
    <div id="holdsTheSlider" class="desktop">
        <div class="flexslider loading">
          <ul class="slides">
            <% loop Slides %>
                <li>
                    <img src="$SlideImage.CroppedImage(1360,350).URL" alt="$Title" title="$Title" />
                </li>
            <% end_loop %>
          </ul>
        </div>
    </div>
    <% end_if %>
    <% end_with %>
</div>

<div id="mobileHeader" class="mobile">
    <div class="container">
        <div id="headerPanel" class="twelve columns clearFix">
            <div id="headerText" class="$SiteConfig.HeaderSize $SiteConfig.HeaderColour<% if $SiteConfig.HeaderDropShadow %> dropShadow<% end_if %><% if $SiteConfig.HeaderBackground %> backgrounded<% end_if %><% if $SiteConfig.Logo %> withLogo<% end_if %>">
                <% if not $HideHeaderText %>
                <h1>$SiteConfig.Title</h1>
                <p>$SiteConfig.Tagline</p>
                <% end_if %>
            </div>
            <div id="headerTools">
                <a class="menuButton mobileNav" id="sidr-menu" href="#sidr"><img src="$ThemeDir/images/mobile_menu.png" alt="mobile menu button" /></a>
                <% include Search %>
            </div>
        </div>  
    </div>
</div>

