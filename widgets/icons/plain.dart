part of firefly;

class IconPlain extends StatelessWidget {
	
	final IconData icon;
	IconPlain( this.icon );
	
	Widget build ( BuildContext context ) {
		
		return Icon(icon, color: FireflyTheme.getForeground() ); 
	}

}