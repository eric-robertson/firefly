part of firefly;

class ShapeCircle extends StatelessWidget {
	
	final double radius;
	final double width;
	final Widget child;
	ShapeCircle( this.radius, { this.child, this.width = 10} );
	
	Widget build ( BuildContext context ) {
		return Container(
			height: radius,
			width: radius,
			child: Align( 
				alignment: Alignment.center,
				child: child
			),
			decoration: new BoxDecoration(
				borderRadius: new BorderRadius.circular(radius),
				border: Border.all( color: FireflyTheme.getAccent(), width: width ),
			)
		);
	}

}