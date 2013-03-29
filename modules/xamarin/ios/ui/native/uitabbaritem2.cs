public class UITabBarItemEx : UITabBarItem {
/*
	private UITabBarItemDelegate m_delegate;
	public UITabBarItemDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.Clicked += value.HandleClicked;
			m_delegate = value;
		}
	} */

	public UITabBarItemEx():base() {}
	public UITabBarItemEx(UITabBarSystemItem systemItem,int tag):base(systemItem, tag) {}
	
	public static UITabBarItemEx Create(UITabBarSystemItem systemItem, int tag) {
		return new UITabBarItemEx(systemItem, tag);
	}

}



/*
abstract public class UITabBarItemDelegate {
	public UITabBarItemDelegate() {
		
	}
	public void HandleClicked(object sender, System.EventArgs e) {
		Clicked((UITabBarItemEx)sender);
		
	}
	
	abstract public void Clicked(UITabBarItemEx tabBarItem);
}
*/


