part of firefly;

class ButtonPill extends StatelessWidget {

	final String text;
	final bool fill;
	final Function onTap;
	ButtonPill(this.text, { this.fill = false, this.onTap });
	
	Widget build ( BuildContext context ) {
		return InkWell ( 
			child : Container(
				padding: EdgeInsets.only(left: 10, right: 10),
				margin: EdgeInsets.only( top: 5, right: 10, bottom: 5 ),
				child: TextPlain(text, invert: fill ),
				decoration: new BoxDecoration(
					borderRadius: new BorderRadius.circular(5.0),
					color: fill ? FireflyTheme.getForeground() : FireflyTheme.getBackground(),
					border: Border.all( color: FireflyTheme.getForeground(), width: 2 ),
				)
			),
			onTap: (){onTap(text);}
		);
	}

}