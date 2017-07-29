<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                <h1>$Title</h1>
                $Content
                <h2>$DateHeader</h2>
                <% if Events %>
                <div id="event-calendar-events">
                  <% include EventList %>
                </div>
                <% else %>
                  <p><% _t('NOEVENTS','There are no events') %>.</p>
                <% end_if %>
                
                $Form
                $PageComments
            </div>
            <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
                <% include Search %>
            </div>
            <div class="sideBar">
                $CalendarWidget
                $MonthJumper
                <h3>Go to...</h3>
                <% include QuickNav %>   
                <% include ImageLinks %>
                $MyWidgetArea
                <% include HasMap %>
            </div>
        </div>
            
    </div>
        
</div>

