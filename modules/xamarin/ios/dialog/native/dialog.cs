class DialogStringElement : MonoTouch.Dialog.StringElement {
	public DialogStringElement(string value) : base(value) {}
	
	public static MonoTouch.Dialog.StringElement Create(string value) {
		return new MonoTouch.Dialog.StringElement(value);
	}
}


class DialogViewController : MonoTouch.Dialog.DialogViewController {
	public DialogViewController(MonoTouch.Dialog.RootElement root) : base(root) {}
	
	public static MonoTouch.Dialog.DialogViewController Create(MonoTouch.Dialog.RootElement root) {
		return new MonoTouch.Dialog.DialogViewController(root);
	}
}


class DialogRootElement : MonoTouch.Dialog.RootElement {
	public DialogRootElement(string caption) : base(caption) {}
	
	public static MonoTouch.Dialog.RootElement Create(string caption) {
		return new MonoTouch.Dialog.RootElement(caption);
	}
}

public static class DialogRootElementEx {
	public static MonoTouch.Dialog.Section SectionFromId(this MonoTouch.Dialog.RootElement element, int id) {
		return element[id];
	}		
}


class DialogBooleanElement : MonoTouch.Dialog.BooleanElement {
	public DialogBooleanElement(string caption, bool value) : base(caption, value) {}
	
	public static MonoTouch.Dialog.BooleanElement Create(string caption, bool value) {
		return new MonoTouch.Dialog.BooleanElement(caption, value);
	}
}

/*
class DialogJsonElementContainer {	//: MonoTouch.Dialog.JsonElement {
	public MonoTouch.Dialog.JsonElement jsonElement;

	//public DialogJsonElement(string caption, string url) : base(caption, url) {}
	
	public static DialogJsonElementContainer Create(string caption, string url) {
		DialogJsonElementContainer element = new DialogJsonElementContainer();
		element.jsonElement = new MonoTouch.Dialog.JsonElement(caption, url);
		return element;
	}
	
	public static DialogJsonElementContainer FromFile(string file) {
		DialogJsonElementContainer element = new DialogJsonElementContainer();
		element.jsonElement = MonoTouch.Dialog.JsonElement.FromFile(file);
		return element;
	}
	
	public MonoTouch.Dialog.Element ElementFromId(string id) {
		return jsonElement[id];
	}
} */

public static class DialogJsonElementEx {
	public static MonoTouch.Dialog.Element ElementFromId(this MonoTouch.Dialog.JsonElement jsonElement, string id) {
		return jsonElement[id];
	}
	
}

public static class DialogSectionEx {
	public static MonoTouch.Dialog.Element ElementFromId(this MonoTouch.Dialog.Section section, int id) {
		return section[id];
	}
}

/*
class DialogJsonElement_old : MonoTouch.Dialog.JsonElement {
	public DialogJsonElement(string caption, string url) : base(caption, url) {}
	
	public static DialogJsonElement Create(string caption, string url) {
		return new DialogJsonElement(caption, url);
	}
	
	public static DialogJsonElement FromFile(string file) {
		return (DialogJsonElement)MonoTouch.Dialog.JsonElement.FromFile(file);
	}
	
	public MonoTouch.Dialog.Element ElementFromId(string id) {
		return this[id];
	}
}
*/


