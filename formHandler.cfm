<!---
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

--->
<cfscript>

writeDump(form);
transaction {
	count = arrayLen(form.director);
	writeOutput(count);

	for (counter = 1; counter LTE count; counter += 1) {
		try {

		director = entityNew("Director");

		writeOutput(form.director[#counter#].firstname);
		director.setFirstName(form.director[#counter#].firstname);
		director.setLastName(form.director[#counter#].lastName);
		entitySave(director);
		} catch (any e) {


		}

	}

transactionCommit();
}





</cfscript>

<cfoutput><a href="index.cfm">index.cfm</a></cfoutput>