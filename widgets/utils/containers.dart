part of firefly;

class ContainerGroup extends StatelessWidget {

	final List<Widget> children;
	ContainerGroup(this.children);
	
	Widget build ( BuildContext context ) {
		return Container(
			margin: EdgeInsets.only( top: 30, bottom: 10 ),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: children
			)
		);
	}

}

class ContainerPad extends StatelessWidget {
	
	Widget build ( BuildContext context ) {
		return Container(
			height: 20,
			width: 100,
			child: Text(''),
		);
	}

}