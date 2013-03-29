Import "native/dialog.cs"
Import dialogelement

Extern

Class DialogStringElement Extends DialogElement = "MonoTouch.Dialog.StringElement"
	Field Value:String
	Field Alignment:UITextAlignment
	
	Method Matches:Bool(text:String)
	Method Summary:String()
	
	
End


Class DialogStringElementFromValue Extends DialogElement = "DialogStringElement"
	Field Value:String
	Field Alignment:UITextAlignment
	
	Method Matches:Bool(text:String)
	Method Summary:String()
	
	Function Create:DialogStringElement(value:String)
End
