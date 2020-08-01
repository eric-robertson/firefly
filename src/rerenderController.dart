part of firefly;

class _LayoutController {

	// * Saving layout callbacks

	static List<Function> _activeLayouts = [];

	static registerLayout ( Function f ) { 
		_activeLayouts.add(f);
	}
	static unregisterLayout ( Function f ) { 
		_activeLayouts.remove(f);
	}

	// * Triggering updates

	static triggerRerender () {
		_activeLayouts.forEach( (e) => e() );
	}

	static void rebuild(Element el) {
		el.markNeedsBuild();
		el.visitChildren(rebuild);
	}
	static forceRerender (BuildContext context) {
		(context as Element).visitChildren(rebuild);
	}


}