<h2>$AlbumTitle</h2>
$GalleryLayout
<div class="album-nav">
	<ul>
	<% if PrevAlbum %>
		<% with PrevAlbum %>
			<li class="prev">
				<div class="album-nav-img"><a href="$Link" title="<% sprintf(_t('GOTOALBUM','Gehe zum %s Album'),$AlbumName) %>">$CoverImage.SetWidth(50)</a></div>
				<div class="album-nav-desc">
					<h4><% _t('PREVIOUSALBUM','Vorheriges Album') %>:</h4>							
					<h5><a href="$Link">$AlbumName</a></h5>
				</div>
			</li>
		<% end_with %>
	<% end_if %>
	<% if NextAlbum %>
		<% with NextAlbum %>
			<li class="next">
				<div class="album-nav-img"><a href="$Link" title="<% sprintf(_t('GOTOALBUM','Gehe zum %s Album'),$AlbumName) %>">$CoverImage.SetWidth(50)</a></div>
				<div class="album-nav-desc">
					<h4><% _t('NEXTALBUM','Nächstes Album') %>:</h4>
					<h5><a href="$Link">$AlbumName</a></h5>
				</div>
			</li>
		<% end_with %>
	<% end_if %>
	</ul>
</div>
<% with PaginatedPages %>
	<% if MoreThanOnePage %>
		<ul id="pagination-imagegallery">		
			<% if NotFirstPage %>
				<li class="previous"><a title="<% _t('VIEWPREVIOUSPAGE','Zurück zur letzten Seite') %>" href="$PrevLink">&laquo;<% _t('PREVIOUS','Zurück') %></a></li>
			<% else %>	
				<li class="previous-off">&laquo;<% _t('PREVIOUS','Zurück') %></li>
			<% end_if %>

			<% loop Pages %>
				<% if CurrentBool %>
					<li class="active">$PageNum</li>
				<% else %>
					<li><a href="$Link" title="<% sprintf(_t('VIEWPAGENUMBER','Gehe zu Seite %s'),$PageNum) %>">$PageNum</a></li>				
				<% end_if %>
			<% end_loop %>

			<% if NotLastPage %>
				<li class="next"><a title="<% _t('VIEWNEXTPAGE', 'Gehe zur nächsten Seite') %>" href="$NextLink"><% _t('NEXT','Nächste') %> &raquo;</a></li>
			<% else %>
				<li class="next-off"><% _t('NEXT','Nächste') %> &raquo;</li>				
			<% end_if %>
		</ul> 		
	<% end_if %>
<% end_with %>
