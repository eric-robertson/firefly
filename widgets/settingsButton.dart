part of firefly;

class _SettingsButton extends StatelessWidget {

	Widget build(BuildContext context) {
		return Align(
			child : IconButton( 
				Icons.blur_circular, 
				onTap: (){
					Navigator.push(
						context,
						MaterialPageRoute(builder: (context) => _SettingsPage()),
					);
				}
			),
			alignment: Alignment.bottomRight
		);	
	}


}