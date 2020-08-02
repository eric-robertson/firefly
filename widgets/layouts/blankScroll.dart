part of firefly;

class PageScroll extends StatefulWidget {
	final Widget body;
  PageScroll(this.body, { Key key,  }) : super(key: key);
  _PageScroll createState() => _PageScroll();
}
	
class _PageScroll extends State<PageScroll> {
	
	// * Rerender handlers

	void initState(){
		super.initState();
		_LayoutController.registerLayout( this.reRender );
	}

	void dispose() {
		super.dispose();
		_LayoutController.unregisterLayout( this.reRender );
	}

	void reRender () { this.setState((){}); }

	// * Building
	
	Widget build ( BuildContext context  ) {
		_LayoutController.forceRerender( context );

		return Scaffold(
			body: Container(
				child: Container(
					color: FireflyTheme.getBackground(),
					child: SingleChildScrollView(
						child: Container(
							child : SafeArea( child : widget.body ),
							margin: EdgeInsets.all( 20 )
						)
					),
					constraints: BoxConstraints.expand(),
				)
			)
		);
	}

}