public class UIButtonEx : UIButton {
	private UIButtonDelegate m_delegate;
	public UIButtonDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.TouchUpInside += value.HandleTouchUpInside;
			m_delegate = value;
		}
	}
	
	public UIButtonEx(UIButtonType buttonType):base(buttonType) {}
	
	

	new public static UIButtonEx FromType(UIButtonType buttonType) {
		return new UIButtonEx(buttonType);
	}
}