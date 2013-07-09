<cfinclude template="layout/header.cfm">

<cfform action=formHandler.cfm method=post name="createDirector">
<cfinclude template="layout/directorForm.cfm">
<cfinput type="submit" name="submit" value="Save">
</cfform>

<cfinclude template="layout/footer.cfm">
