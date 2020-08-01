part of firefly;

class SaveData {

	static var _saveData;
	static dynamic _appSettings;
	static dynamic _appData;

	static dynamic parseAppData ( List<dynamic> data) {
		dynamic responce = {};
		data.forEach((elm) {
			responce[elm['name']] = elm['default'];
		});
		return responce;
	}

	// Initial load

	static Future<void> initialize ( dynamic appData, debugMode ) async {

		_saveData = await SharedPreferences.getInstance();
		bool appInitialized = _saveData.getBool('initialized') ?? false;

		if ( ! appInitialized || debugMode ){
			_saveData.setBool('initialized', true);
			_saveData.setString('settings', json.encode({'theme': 'dark'}));
			_saveData.setString('data', json.encode( parseAppData( appData ) ));
		}
		
		_appSettings = json.decode(_saveData.getString('settings'));
		_appData = json.decode(_saveData.getString('data'));

		FireflyTheme.changeTheme( _appSettings['theme'] );
		_LayoutController.triggerRerender();
		
	}

	// Update data
	
	static void updateSettings ( String key, String value, { reRender = true } ) {
		_appSettings[key] = value;
		_saveData.setString('settings', json.encode( _appSettings ));
		if ( reRender )
			_LayoutController.triggerRerender();
	}

	static void updateAppData (String key, String value, { reRender = true }) {
		_appData[key] = value;
		_saveData.setString('data', json.encode( _appData ));
		if ( reRender )
			_LayoutController.triggerRerender();
	}

	// Get App Data
	static String get ( String key ){
		return _appData[key];
	}
}