part of firefly;

class EffectRipple extends StatelessWidget {

	final Widget child;
	final Function onTap;
	EffectRipple(this.child, this.onTap);
	
	Widget build ( BuildContext context ) {
		return Container(
			margin: EdgeInsets.only(top: 20, right: 5),
			decoration: new BoxDecoration(
				borderRadius: new BorderRadius.circular(5.0),
			),
			child: Material(
				child: InkWell ( 
					splashColor: FireflyTheme.getForeground().withAlpha(128),
					highlightColor: FireflyTheme.getForeground().withAlpha(128),
					child : child,
					onTap: onTap
				),
				color: Colors.transparent
			)
		);
	}

}
