<div class="widget relatedWidget clearFix">
    <h3>$WidgetTitle</h3>
	<div class="widgetContent">
            <% if IntroText %>
                <p>$IntroText</p>
            <% end_if %>
	    <ul>
                <% if Link1Text %>
                <li class="first"><a href="<% if $Link1ELink %>$Link1ELink" target="_blank"> <% else %> $Link1ILink.Link"><% end_if %>$Link1Text</a></li>
                <% end_if %>
                <% if Link2Text %>
                <li><a href="<% if $Link2ELink %>$Link2ELink" target="_blank"> <% else %> $Link2ILink.Link"><% end_if %>$Link2Text</a></li>
                <% end_if %>
                <% if Link3Text %>
                <li><a href="<% if $Link3ELink %>$Link3ELink" target="_blank"> <% else %> $Link3ILink.Link"><% end_if %>$Link3Text</a></li>
                <% end_if %>
                <% if Link4Text %>
                <li><a href="<% if $Link4ELink %>$Link4ELink" target="_blank"> <% else %> $Link4ILink.Link"><% end_if %>$Link4Text</a></li>
                <% end_if %>
	    </ul>
	</div>
</div>
