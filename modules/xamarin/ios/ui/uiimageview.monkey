Import uiview
Import uiimage

Extern

Class UIImageView Extends UIView = "UIImageView"
	Field AnimationImages:UIImage[]
	Field AnimationRepeatCount:Int
	Field Image:UIImage
	Field IsAnimating:Bool
'	Field AnimationDuration:Float	'Double????
	
	Method Dispose:Void(disposing:Bool)
	Method StartAnimating:Void()
	Method StopAnimating:Void()

End
