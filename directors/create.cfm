<cfinclude template="../layout/header.cfm">

<h2>Directors</h2>
<cfform name="createDirector" action="../formHandler.cfm" method="post">
<table border=1>
	<caption>Directors</caption>
	<thead>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
	</thead>

<tbody class="directorList">

<tr>
	<td><input type="text" name="firstName"></td>
	<td><input type="text" name="lastName"></td>
	<td><div class="deleteDirector ui-state-default ui-corner-all"
		title="Delete">
		<span class="ui-icon ui-icon-circle-close"></span>
		</div>
	</td>
</tr>

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

