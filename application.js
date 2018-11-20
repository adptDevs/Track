var track15 = {
	// Place application variables here
	appLayout: '',
	appName: 'Track1.5',
	appDir: 'track1.5'

	runApp: function(parent){
		// Application code here
		var base = parent;
		var sec = sections;
		var user = userInfo;

		this.appLayout = new dhtmlXLayoutObject({
			parent:	base,
			pattern: "1C",
			cells: [
				{
					id: 'a',
					header: false
				}
			]
		});

		this.appLayout.cells('a').attachURL("http://sandbox.adpt.arkgov.net/_apps/track1.5/");
	}
// End runApp function
};
