<div class="widget assetListerWidget">
    <% if $Heading %><h3>$Heading</h3><% end_if %>
    <% if $WidgetContent %><p>$WidgetContent</p><% end_if %>
    <% if $ThisFolder %>
    <div class="assetLister">    
    <ul>
    <% loop $ThisFolder %>
        <% if IsSupportedFile %>
        <li class="$CSSClass">
                <a href="$URL" alt=$Title title=$Title target="_blank">$Title</a>
                <br>
                <span class="size">$CSSClass file $Size last edited on $LastEdited.Nice</span>
        </li>
        <% end_if %>
    <% end_loop %>
    </ul>
    </div>
    <% end_if %>
</div>