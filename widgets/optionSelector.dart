part of firefly;

class _OptionSelector extends StatelessWidget {

	final List<String> options;
	final String label;
	final Function onChange;
	final Function getCurrent;

	_OptionSelector({this.options, this.onChange, this.getCurrent, this.label });

	List<Widget> generateOptions ( ){
		var current = getCurrent();
		return options.map((text) => 
			ButtonPill( text, fill : current == text, onTap: onChange )
		).toList();
	}

	Widget build (BuildContext context) {
		return ContainerGroup([
			TextPlain( label ),
			ContainerPad(),
			Wrap (
				children: generateOptions()
			)
		]);
	}
}