abstract public class UISliderDelegate {
	public UISliderDelegate() {
		
	}
	public void HandleValueChanged(object sender, System.EventArgs e) {
		ValueChanged((UISliderEx)sender);
		
	}
	
	abstract public void ValueChanged(UISliderEx slider);
}



