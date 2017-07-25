<div class="widget sourceTextWidget $BoxColour">
    <% if $Heading %><h3>$Heading</h3><% end_if %>
    <% if $WidgetContent %><p>$WidgetContent</p><% end_if %>
    <% if $ExternalLink || $TargetPage  %><a class="widgetReadMore" href="<% if $ExternalLink %>$ExternalLink" target="_blank"> <% else %> $TargetPage.Link"><% end_if %>$LinkText</a><% end_if %>
    <% if $EmailContact %><a class="widgetReadMore" href="mailto:$EmailContact?subject=Email%20from%20the%20source%20website">$EmailContact</a><% end_if %>
</div>