Import uiview
Import uialertviewdelegate

Extern

Class UIAlertView Extends UIView = "UIAlertView"
	Field AlertViewStyle:Int
	Field ButtonCount:Int
	Field CancelButtonIndex:Int
	Field Message:String
	Field Title:String
	Field Visible:Bool
	Field Delegate:UIAlertViewDelegate
	
	
	Method Show:Void()
	Method AddButton:Int(title:String)
	Method Add:Int(title:String) = "AddButton"
	Method ButtonTitle:String(index:Int)
	Method Dispose:Void(disposing:Bool)
	Method DismissWithClickedButtonIndex:Void(index:Int, animated:Bool)
	

End
