part of firefly;

class TextTitle extends StatelessWidget {

	final String text;
	TextTitle( this.text );
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			textAlign: TextAlign.center,
			style: TextStyle( 
				fontSize: 50.0, 
				fontWeight: FontWeight.bold, 
				color: FireflyTheme.getForeground(),
				
			)
		);
	}

}
