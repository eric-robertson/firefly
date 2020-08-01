part of firefly;

class TextTitle extends StatelessWidget {

	final String text;
	TextTitle( this.text );
	
	Widget build ( BuildContext context ) {
		return Text(
			text,
			style: TextStyle( 
			fontSize: 35.0, 
				fontWeight: FontWeight.bold, 
				color: FireflyTheme.getForeground()
			)
		);
	}

}
