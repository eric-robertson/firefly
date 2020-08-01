part of firefly;

class _SettingsPage extends StatelessWidget {

	static List<dynamic> _selectionSettings = [];

	static Future<void> initialize (List<dynamic> data) {
		data.forEach((elm) {
			dynamic shown = elm['settings'];
			if ( shown == null ) return;
			List<String> options = shown['options'];
			String label = shown['label'];
			String name = elm['name'];
			_selectionSettings.add({ 'name' : name, 'label' : label, 'options' : options });
		});
	}

	List<Widget> otherSettings () {
		return _selectionSettings.map((e){
			return _OptionSelector(
				label: e['label'],
				options: e['options'],
				getCurrent: () => SaveData.get(e['name'] ),
				onChange: (n){ SaveData.updateAppData(e['name'] , n); }
			);
		}).toList();
	}

  Widget build(BuildContext context) {
    return PageBlank(
			ContainerGroup([
				TextTitle("Settings"),
				... otherSettings (),
				_ThemeSelector(),
			])
		);
  }
}