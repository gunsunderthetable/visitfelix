<div id="pagePanel">


    <div id="homePanel">
        <div id="homeIntro" class="clearFix">
            <h1>$Title</h1>
            $Content
        </div>

        <% if Boxes %>
        <div id="boxes" class="clearFix">
        <% loop Boxes %>
            <div class="box deskMod-$Modulus(2)">
                <div class="content">
                    <% if $Page.ID > 0 %>
                    <a href="$Page.Link">
                    <% else %>
                    <a href="$ExternalLink" target="_blank">
                    <% end_if %>
                    <% if $BoxImageID %>
                        <img src="$BoxImage.CroppedImage(500,495).URL" alt="$Title" title="$Title" />
                    <% end_if %>
                    <div class="boxText">
                    <h2>$Title</h2>
                    <p>$Description</p>
                    </div>
                   </a>
                </div>
            </div>
        <% end_loop %>
        </div>
        <% end_if %>
    </div> 
    <div class="sideBar homePage desktop <% if $FullWidthPage %>fullWidthLayout<% end_if %>">
        <% if $Events %>
        <div id="events" class="nav clearFix">
            <h2 class="clearFix">Events</h2>
            <% include EventListForHomePage %>
            <a class="clearFix readMore" href="$EventsHolder.Link">See all events</a>
        </div>
        <% end_if %>

        <% if $News %>
        <div id="news" class="nav clearFix">
            <h2 class="clearFix">News</h2>
            <% loop $News %>
            <div class="feature $FirstLast">
                <a href="$Link"><h3>$Title</h3></a>
                <p>$Content.FirstSentence</p>
            </div>
            <% if $First %>
                <% if MainImageID %>
                    <div class="imgWrapper">
                    <% with $MainImage %>
                        <img class="featureImg" src="$CroppedImage(600,260).URL" alt="$Title" />
                    <% end_with %>                    
                    </div>
                <% else %>
                    <div class="iHateSpacers"></div>
                <% end_if %>
            <% end_if %>                    
            <% end_loop %>
            <a class="clearFix readMore" href="$NewsHolder.Link">See all news</a>
        </div>
        <% end_if %>
        <div id="widgets">
            $MyWidgetArea
        </div>
    </div>

</div>

<% require javascript(mysite/javascript/jquery.flexslider-min.js) %>
<% require javascript(mysite/javascript/flex_init.js) %>

<% require css(mysite/css/flexslider.css) %>


