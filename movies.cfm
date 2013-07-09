<cfinclude template="layout/header.cfm">
<cfscript>

directorId = #URL.director#;
director = entityLoadByPk("Director", directorId);
movies = director.getMovies();

writeDump(director);
</cfscript>


<cfoutput>
<cfform action="movieFormHandler.cfm" method="POST">
<table>
	<thead>
		<tr>
			<th>Title</th>
		</tr>
	</thead>
	<tbody class="movieList">
		<tr>
			<td>
				<input type="hidden" name="movie.id" value="1">
				<input type="text" name="movie.title">
			</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan=2>
<button class="addMovie">Add Movie</button>
<input type="submit" name="submit" value="submit">
</td>
</tr>
</tfoot>
</table>
</cfform>
</cfoutput>




<cfinclude template="layout/footer.cfm">
