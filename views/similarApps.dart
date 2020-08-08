part of firefly;

class _SimilarApps extends StatelessWidget {

	List<Widget> otherApps () {
		return Networking.getApps().map((a){
			return ButtonListLink( a.name, link : a.url, icon: a.icon);
		}).toList();
	}

  Widget build(BuildContext context) {
    return PageScroll(
			ContainerGroup([
				TextTitle("Our apps"),
				... otherApps (),
			])
		);
  }
}