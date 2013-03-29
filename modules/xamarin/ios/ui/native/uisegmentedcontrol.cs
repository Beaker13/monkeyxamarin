public class UISegmentedControlEx : UISegmentedControl {
	private UISegmentedControlDelegate m_delegate;
	public UISegmentedControlDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.ValueChanged += value.HandleValueChanged;
			m_delegate = value;
		}
	}
	

}

abstract public class UISegmentedControlDelegate {
	public UISegmentedControlDelegate() {
		
	}
	public void HandleValueChanged(object sender, System.EventArgs e) {
		ValueChanged((UISegmentedControlEx)sender);
		
	}
	
	abstract public void ValueChanged(UISegmentedControlEx slider);
} 



