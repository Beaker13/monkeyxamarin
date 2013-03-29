Import uiactionsheetdelegate

Import uiview

Extern

Class UIActionSheet Extends UIView = "UIActionSheet"
	Field Title:String
	Field ButtonCount:Int
	Field Visible:Bool
	Field DestructiveButtonIndex:Int
	Field CancelButtonIndex:Int
	Field Delegate:UIActionSheetDelegate
	
	Method ButtonTitle:String(index:Int)
	Method Add:Void(name:String)
	Method AddButton:Int(name:String)
	Method ShowInView:Void(view:UIView)
	Method Dispose:Void(disposing:Bool)
End

