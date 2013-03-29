Import uiimage
Import uicontrol

Extern

Class UISwitch Extends UIControl = "UISwitch"
	Field On:Bool
	Field OnImage:UIImage
	Field OffImage:UIImage
	Field TintColor:UIColor
	Field ThumbTintColor:UIColor
	Field OnTintColor:UIColor

	Method Dispose:Void(disposing:Bool)
	Method SetState:Void(newState:Bool, animated:Bool)
	
End
