abstract public class UIButtonDelegate {
	public UIButtonDelegate() {
		
	}
	public void HandleTouchUpInside(object sender, System.EventArgs e) {
		Clicked((UIButtonEx)sender);
		
	}
	
	abstract public void Clicked(UIButtonEx button);
}