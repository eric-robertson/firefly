part of firefly;

class ButtonListLink extends StatelessWidget {

	final String text;
	final int icon;
	final String link;
	ButtonListLink(this.text, { this.icon, this.link });
	
	Widget build ( BuildContext context ) {
		IconData iconDisplay = IconData(icon, fontFamily: 'MaterialIcons');
		return EffectRipple(
			Container(
				padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom : 10),
				child: Row(
					children: <Widget>[
						IconPlain( iconDisplay ),
						Padding(padding: EdgeInsets.only(left: 30), child : TextPlain(text, center: true) )
					],
				),
				decoration: new BoxDecoration(
					borderRadius: new BorderRadius.circular(5.0),
					border: Border.all( color: FireflyTheme.getForeground(), width: 2 ),
				)
			),
			() async { await launch(link);}
		);
	}

}