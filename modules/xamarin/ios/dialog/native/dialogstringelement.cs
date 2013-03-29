class DialogStringElement : MonoTouch.Dialog.StringElement {
	public DialogStringElement(string value) : base(value) {}
	
	public static MonoTouch.Dialog.StringElement Create(string value) {
		return new MonoTouch.Dialog.StringElement(value);
	}
}
