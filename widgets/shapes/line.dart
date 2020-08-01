part of firefly;

class ShapeLine extends StatelessWidget {
	
	final double length;
	final double width;
	final double x;
	final double y;
	final double rotation;
	ShapeLine( this.length, { this.x = 0, this.y = 0, this.width = 6, this.rotation = 0} );
	
	Widget build ( BuildContext context ) {
		return new Positioned(
       left: x - width/4,
       top: y - width/4,
			 child : Transform.rotate(
				 origin: Offset(-length/2 + width/2 , 0),
				child : Container(
					height: width,
					width: length,
					decoration: new BoxDecoration(
						borderRadius: new BorderRadius.circular(width/2),
						color: FireflyTheme.getForeground(),
					)
				),
				angle: math.pi / 180 * rotation,
			 )
		);
	}

}