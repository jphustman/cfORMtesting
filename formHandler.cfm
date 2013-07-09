<cfset util = CreateObject('component', 'controllers.FormUtilities').init(true)>

<cfdump var="#form#">
<cftimer type="debug" label="build form collections">
	<cfset util.buildFormCollections(form)>
</cftimer>

<cfoutput>

<cfloop list="#form.formCollectionsList#" index="thisColl" delimiters=",">
	<cfdump var="#form[thisColl]#" label="#thisColl#"><br>
</cfloop>

</cfoutput>

<cfscript>

counter = 1;
while (structKeyExists(form, "directorId[#counter#]")) {
	transaction {
	director = EntityLoadByPk("Director", #counter#);
	if (!structKeyExists(variables, "director")) {
		director = EntityNew("Director");
		}
	director.setFirstName(firstName[#counter#]);
	director.setLastName(lastName[#counter#]);
	entitySave(director);
	transactionCommit();
	}
	writeOutput(counter);
	writeDump(director);
	counter = counter + 1;
}


</cfscript>
