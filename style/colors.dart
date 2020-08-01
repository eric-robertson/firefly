part of firefly;

class _ThemeData {

	Color backgroundColor;
	Color foregroundColor;
	Color accentColor;

	_ThemeData({ background, foreground, accent }){
		backgroundColor = Color( background );
		foregroundColor = Color( foreground );
		accentColor = Color( accent );
	}

}

class FireflyColors {

	// Colors


	static _ThemeData _light = _ThemeData(
		background: 0xffd9d8d7,
		foreground: 0xff333231,
		accent: 0xffb0aca9,
	);

	static _ThemeData _lightred = _ThemeData(
		background: 0xffd9d8d7,
		foreground: 0xff8f0e1c,
		accent: 0xffb0aca9,
	);

	static _ThemeData _lightgreen = _ThemeData(
		background: 0xffd9d8d7,
		foreground: 0xff0a732d,
		accent: 0xffb0aca9,
	);

	static _ThemeData _lightpurple = _ThemeData(
		background: 0xffd9d8d7,
		foreground: 0xff2d007a,
		accent: 0xffb0aca9,
	);

	static _ThemeData _dark = _ThemeData(
		background: 0xff000b2b,
		foreground: 0xffd1d1d1,
		accent: 0xff213161,
	);
	static _ThemeData _darkgreen = _ThemeData(
		background: 0xff0d0005,
		foreground: 0xff23a850,
		accent: 0xff1b2921,
	);
	static _ThemeData _darkpurple = _ThemeData(
		background: 0xff170c1c,
		foreground: 0xff751c99,
		accent: 0xff21022e,
	);

	// Access

	static Map<String, _ThemeData> lookup = {
		'light' : _light,
		'lightRed' : _lightred,
		'lightgreen' : _lightgreen,
		'lightpurple' : _lightpurple,
		'dark' : _dark,
		'darkgreen' : _darkgreen,
		'darkpurple' : _darkpurple
	};


}