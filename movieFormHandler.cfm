<cfscript>

util = CreateObject('component', 'controllers.FormUtilities').init(true);

util.buildFormCollections(form);

writeDump(form);
</cfscript>

<cfoutput>

<cfloop list="#form.formCollectionsList#" index="thisColl" delimiters=",">
	<cfdump var="#form[thisColl]#" label="#thisColl#"><br>
</cfloop>

</cfoutput>






