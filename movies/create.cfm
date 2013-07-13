<cfinclude template="../layout/header.cfm">
<cfset directors = entityLoad("director")>

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
<cfoutput>

<cfloop array="#directors#" index="theDirector">

<tr>
	<td></td>
	<td><input type="text" name="director[#theDirector.getId()#].firstName" value="#theDirector.getFirstName()#"></td>
	<td><input type="text" name="director[#theDirector.getId()#].lastName" value="#theDirector.getLastName()#"></td>
	<td><div class="deleteDirector ui-state-default ui-corner-all" title="Delete">
		<span class="ui-icon ui-icon-circle-close"></span>
	</div></td>
</tr>


</cfloop>

</cfoutput>
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
<cfinclude template="../layout/footer.cfm">

