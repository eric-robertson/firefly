part of firefly;

class FireflyTheme {

	// * Active color access

	static String active = "dark";

	static Color getBackground ( ){ 
		return FireflyColors.lookup[active].backgroundColor;
	}
	static Color getAccent ( ){ 
		return FireflyColors.lookup[active].accentColor;
	}

	static Color getForeground ( ){ 
		return FireflyColors.lookup[active].foregroundColor;
	}

	// * Color changing

	static List<String> getThemes () {
		return FireflyColors.lookup.keys.toList();
	}

	static changeTheme ( String newTheme ) {
		active = newTheme;
		SaveData.updateSettings('theme', newTheme);
	}

}

