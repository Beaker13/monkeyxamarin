Import "native/uisliderex.cs"
Import uicontrol
Import uisliderdelegate


Extern

Class UISlider Extends UIControl = "UISliderEx"
	Field Value:Float
	Field MinValue:Float
	Field MaxValue:Float
	Field Continuous:Bool
	Field Delegate:UISliderDelegate
	
	Method SetValue:Void(value:Float, animated:Bool)
	Method Dispose:Void(disposing:Bool)
	Method SetThumbImage:Void(image:UIImage, forState:Int)
	
	
End
