class DialogViewController2 : MonoTouch.Dialog.DialogViewController {
	public DialogViewController2(MonoTouch.Dialog.RootElement root) : base(root) {}
	
	public static DialogViewController2 Create(MonoTouch.Dialog.RootElement root) {
		return new DialogViewController2(root);
	}
}



