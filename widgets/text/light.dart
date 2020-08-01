part of firefly;

class TextLight extends StatelessWidget {

	final String text;
	TextLight( this.text );
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			style: TextStyle( 
				fontSize: 20.0, 
				fontWeight: FontWeight.bold, 
				color: FireflyTheme.getAccent(),
			)
		);
	}

}
