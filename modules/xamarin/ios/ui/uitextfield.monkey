'Import rectanglef
Import uicontrol	'view
Import uikeyboardtype
Import uicolor
Import uifont
Import uitextfieldviewmode
Import uitextborderstyle
Import uitextalignment
Import uitextfielddelegate

Extern

Class UITextField Extends UIControl  = "UITextField"
	Field Text:String
	Field KeyboardType:UIKeyboardType
	Field Placeholder:String
	Field TextColor:UIColor
	Field BorderStyle:UITextBorderStyle
	Field Font:UIFont
	Field ClearsOnBeginEditing:Bool
	Field ClearsOnInsertion:Bool
	Field SecureTextEntry:Bool
	Field TextAlignment:UITextAlignment
	Field ClearButtonMode:UITextFieldViewMode
	Field Delegate:UITextFieldDelegate
	
	Method ResignFirstResponder:Void()
	Method Dispose:Void(disposing:Bool)
End