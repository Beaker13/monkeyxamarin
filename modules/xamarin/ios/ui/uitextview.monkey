Import uifont
Import uicolor
Import uiscrollview
Import uikeyboardtype
Import uikeyboardappearance
Import uitextalignment
Import uitextviewdelegate

Extern

Class UITextView Extends UIScrollView = "UITextView"
	Field Font:UIFont
	Field TextColor:UIColor
	Field KeyboardType:UIKeyboardType
	Field KeyboardAppearance:UIKeyboardAppearance
	Field Editable:Bool
	Field Text:String
	Field TextAlignment:UITextAlignment
	Field Delegate:UITextViewDelegate
	
	Method Dispose:Void(disposing:Bool)
	
End
