Import rectanglef
Import uicolor
Import calayer
Import uiresponder


Extern

Class UIView Extends UIResponder = "UIView"
	Field Frame:RectangleF
	Field Bounds:RectangleF
	Field AutoresizingMask:Int
	Field UserInteractionEnabled:Bool
	Field ContentMode:Int
	Field BackgroundColor:UIColor
	Field Layer:CALayer
	Field Alpha:Float
	
	Method AddSubview:Void(view:UIView)
	
	Method Draw:Void(rect:RectangleF)
	Method SetNeedsDisplay:Void()
End