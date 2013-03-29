public class UIBarButtonItemEx : UIBarButtonItem {
	private UIBarButtonItemDelegate m_delegate;
	public UIBarButtonItemDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.Clicked += value.HandleClicked;
			m_delegate = value;
		}
	}

	public UIBarButtonItemEx():base() {}
	public UIBarButtonItemEx(UIBarButtonSystemItem systemItem):base(systemItem) {}
	
	public static UIBarButtonItemEx Create(UIBarButtonSystemItem systemItem) {
		return new UIBarButtonItemEx(systemItem);
	}

}



