component
{

	this.name = "ormTEST";
	this.sessionManagement = true;
	this.datasource = "ormTEST";
	this.ormenabled = true;

	this.ormsettings = {

		cfclocation = "model",

		saveMapping = false,
		logsql = true,

		dbcreate = "dropCreate",
		flushAtRequestEnd = false,
		automanageSession = false,

		dialect = "Oracle10g",
		useDBForMapping = false


	};

	ormReloadKey = "reloadMePlease";

	function onRequestStart()
	{

		if(structKeyExists(url, "ormReload")
		&& url.ormReload == ormReloadKey){
			ormReload();
		}

	}








}
