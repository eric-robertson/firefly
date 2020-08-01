part of firefly;

class Main {

	static Future<Widget> start( dynamic settings, Widget main) async {

		WidgetsFlutterBinding.ensureInitialized();
		SystemChrome.setPreferredOrientations([
			DeviceOrientation.portraitUp,
			DeviceOrientation.portraitDown,
		]);

		bool debugMode = settings['debug-mode'] as bool;
		List<dynamic> appData = settings['app-data'] as List<dynamic> ;
		
		await SaveData.initialize( appData, debugMode );
		await _SettingsPage.initialize( appData );

  	return _Firefly ( main: main );

	}
}

class _Firefly extends StatelessWidget {

	final Widget main;
	_Firefly({this.main});

	Widget build (BuildContext context) {
		return MaterialApp(
			title: 'Boilerplate',
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
				visualDensity: VisualDensity.adaptivePlatformDensity
			),
			home: _Application( main: main )
		);
	}
}

class _Application extends StatefulWidget {
	final Widget main;
  _Application({ Key key, this.main }) : super(key: key);
  _ApplicationState createState() => _ApplicationState();
}
	
class _ApplicationState extends State<_Application> {

  Widget build(BuildContext context) {
		
		return PageBlank( 
			Stack( children: [ 
				widget.main,
				_SettingsButton(),
			])
		);
		
	}
}
