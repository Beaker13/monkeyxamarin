abstract public class UIBarButtonItemDelegate {
	public UIBarButtonItemDelegate() {
		
	}
	public void HandleClicked(object sender, System.EventArgs e) {
		Clicked((UIBarButtonItemEx)sender);
		
	}
	
	abstract public void Clicked(UIBarButtonItemEx barButtonItem);
}


