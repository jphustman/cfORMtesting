<cfinclude template="layout/header.cfm">
<cfset directors = entityLoad("director", {}, "id asc")>

<h2>Directors</h2>
<cfform name="testform" action="formHandler.cfm" method="POST">
<table border=1>
	<caption>Directors</caption>
	<thead>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th></th>
		</tr>
	</thead>

<tbody class="directorList">


	<cfloop index="d" array="#directors#">
	<cfoutput>
		<tr>
			<td><input type="hidden" name="directorId[#d.getID()#]" value="#d.getID()#">#d.getID()#</td>
			<td><input type="text" name="firstName[#d.getID()#]" value="#d.getFirstName()#"></td>
			<td><input type="text" name="lastName[#d.getID()#]" value="#d.getLastName()#"></td>
			<td><div class="ui-state-default ui-corner-all" title="Delete">
				<span class="ui-icon ui-icon-circle-close"></span>
				</div>
				<a href="movies.cfm?director=#d.getId()#">Movies</a>
			</td>
		</tr>
	</cfoutput>
	</cfloop>
</tbody>

<tfoot>
<tr>
	<td colspan="4">
		<button class="addDirector">Add Director</button>
		<cfinput type="submit" name="submit" value="Save"></td>
</tr>
</tfoot>
</table>
</cfform>
<cfinclude template="layout/footer.cfm">
