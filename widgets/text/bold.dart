part of firefly;

class TextBold extends StatelessWidget {

	final String text;
	TextBold( this.text );
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			style: TextStyle( 
			fontSize: 25.0, 
				fontWeight: FontWeight.bold, 
				color: FireflyTheme.getForeground()
			)
		);
	}

}
