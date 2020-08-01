part of firefly;

class TextPlain extends StatelessWidget {

	final String text;
	final bool invert;
	TextPlain(this.text, { this.invert = false });
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			style: TextStyle( 
				fontSize: 20.0, 
				fontWeight: FontWeight.bold, 
				color: 
					invert
					? FireflyTheme.getBackground()
					: FireflyTheme.getForeground()
			)
		);
	}

}