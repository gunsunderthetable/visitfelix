<div id="pagePanel">

    <div id="homePanel">
        <% if $Content %>
        <div id="homeIntro" class="clearFix">
            <h1>$Title</h1>
            $Content
        </div>
        <% end_if %>

        <% if Boxes %>
        <div id="boxes" class="clearFix">
        <% loop Boxes %>
            <div class="box deskMod-$Modulus(2) $Colour">
                <div class="content">
                    <a href="$LinkPage.Link">
                    <div class="boxText">
                        <h2>$Title</h2>
                    </div>
                    <div class="linkButton $Colour">
                        <p>Read More</p>
                    </div>
                    <% if $BoxImageID %>
                        <img src="$BoxImage.CroppedImage(500,340).URL" alt="$Title" title="$Title" />
                    <% end_if %>
                   </a>
                </div>
            </div>
        <% end_loop %>
        </div>
        <% end_if %>

    </div> 

    <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
        <a href="$BaseHref" alt="home page" title="homepage"><img class="theLogo" src="$ThemeDir/images/logo.png" /></a>
        <% include Search %>
    </div>

    <div class="sideBar homePage desktop <% if $FullWidthPage %>fullWidthLayout<% end_if %>">
        <% include Ticker %>

        <% if $Events %>
        <div id="events" class="nav clearFix">
            <h1 class="yellow">Events</h1>
            <% include EventListForHomePage %>
            <a class="clearFix readMore" href="$EventsHolder.Link">See all events</a>
        </div>
        <img class="narDiv" src="$ThemeDir/images/divider_wide_yellow.png" />

        <% end_if %>

        <% if $News %>
        <div id="news" class="nav clearFix">
            <h1 class="green">News</h1>
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
        <img class="narDiv" src="$ThemeDir/images/divider_wide_green.png" />

        <% end_if %>
        <div id="widgets">
            $MyWidgetArea
        </div>
    </div>

</div>




