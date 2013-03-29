public class UISliderEx : UISlider {
	private UISliderDelegate m_delegate;
	public UISliderDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.ValueChanged += value.HandleValueChanged;
			m_delegate = value;
		}
	}
	

}



