class DialogRootElement2 : MonoTouch.Dialog.RootElement {
	public DialogRootElement2(string caption) : base(caption) {}
	
	public static MonoTouch.Dialog.RootElement Create(string caption) {
		return new MonoTouch.Dialog.RootElement(caption);
	}
}



