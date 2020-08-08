part of firefly;

class ButtonPlain extends StatelessWidget {

	final String text;
	final Function onTap;
	ButtonPlain(this.text, this.onTap );
	
	Widget build ( BuildContext context ) {

		return EffectRipple(
			Container(
				padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom : 10),
				child: Align( child : TextPlain(text, center: true), alignment: Alignment.center),
				decoration: new BoxDecoration(
					borderRadius: new BorderRadius.circular(5.0),
					border: Border.all( color: FireflyTheme.getForeground(), width: 2 ),
				)
			),
			(){onTap(text);}
		);
	}

}