part of firefly;


var _url = 'https://65bgo01qk9.execute-api.us-east-1.amazonaws.com/default/quite-simply-list';

class _OtherApp {
	String name ;
	String url;
	int icon;
	_OtherApp({ this.name, this.url, this.icon });
}

class Networking {

	static List<_OtherApp> _apps = [];
	static Future<void> load () async {
		var response = await http.get( _url );
		List<dynamic> data = json.decode( response.body );
		_apps = data.map((i) => _OtherApp(name: i['name'], url: i['url'], icon: int.parse(i['icon']) )).toList();
		return;
	}

	static List<_OtherApp> getApps () {
		return _apps;
	}

}
