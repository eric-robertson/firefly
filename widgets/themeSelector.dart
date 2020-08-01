part of firefly;


class _ThemeSelector extends StatelessWidget {

	Widget colorOption ( String colorName ) {
		Color color = FireflyColors.lookup[colorName].backgroundColor;
		Color color2 = FireflyColors.lookup[colorName].foregroundColor;
		IconData icon = FireflyTheme.active == colorName ? Icons.check : null;

		return InkWell(
			child: Container(
				margin: EdgeInsets.only(top: 20, right: 20),
				width: 60,
				height: 40,
				child : IconPlain( icon ),
				decoration: new BoxDecoration(
					borderRadius: new BorderRadius.circular(10.0),
					color: color,
					border: Border.all( color: color2, width: 4 ),
				)
			),
			onTap: (){
				FireflyTheme.changeTheme( colorName );
			}
		);

	}

	List<Widget> generateOptions ( ){
		return FireflyTheme.getThemes().map( colorOption ).toList();
	}

	Widget build (BuildContext context) {
		return ContainerGroup([
			TextPlain('Select Theme For This App'),
			Wrap ( 
				children: generateOptions(),
			)
		]);
	}
}