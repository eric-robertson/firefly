part of firefly;

class IconButton extends StatelessWidget {
	
	final IconData icon;
	final Function onTap;
	IconButton( this.icon, { this.onTap });
	
	Widget build ( BuildContext context ) {
		return InkWell(
			child : IconPlain(icon),
			onTap: onTap
		); 
	}

}