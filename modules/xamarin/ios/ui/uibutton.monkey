Import uicontrolstate
'Import rectanglef
Import uicontrol	'view
Import uiimage
Import uifont
Import uiimageview

Import uibuttondelegate
Import "native/uibutton.cs"

Import uibuttontype


Extern

Class UIButton Extends UIControl  = "UIButtonEx"
	Field Appearance:UIButtonAppearance
	Field ButtonType:UIButtonType	'getter only
	Field CurrentBackgroundImage:UIImage	'getter only
	Field CurrentImage:UIImage	'getter only
	Field CurrentTitle:String	'getter only
	Field Font:UIFont
	Field ImageView:UIImageView
	
	Field Delegate:UIButtonDelegate
	
	
	Function FromType:UIButton(type:UIButtonType)
	
	Method SetTitle:Void(title:String, forState:UIControlState)
	Method Title:String(controlState:UIControlState)
	Method ImageForState:UIImage(state:UIControlState)
	Method SetImage:Void(image:UIImage, forState:UIControlState)
	Method SetBackgroundImage:Void(image:UIImage, forState:UIControlState)
	
End