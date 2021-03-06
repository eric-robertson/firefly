part of firefly;

class TextPlain extends StatelessWidget {

	final String text;
	final bool invert;
	final bool center;
	TextPlain(this.text, { this.invert = false, this.center = false });
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			textAlign: center ? TextAlign.center : null,
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