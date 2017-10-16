component{
	this.name = "Bdd";

	// any other application.cfc stuff goes below:
	this.sessionManagement = false;

	// any mappings go here, we create one that points to the root called test.
	this.mappings[ "/bdd" ] = getDirectoryFromPath( getCurrentTemplatePath() ) & "src";
	this.mappings[ "/test" ] = getDirectoryFromPath( getCurrentTemplatePath() ) & "test";
	this.mappings[ "/testbox" ] = expandPath("/testbox");

	this.javaSettings = {
		LoadPaths = ["/"],
		loadColdFusionClassPath: false,
		watchInterval: 2,
		reloadOnChange: true
	};

	// request start
	public boolean function onRequestStart( String targetPage ){
		return true;
	}
}