Import "native/uibarbuttonitem2.cs"
Import uiimage
Import uibarbuttonsystemitem
Import uibarbuttonitemdelegate

Extern

#Rem
Class UIBarButtonItemWithSystemItem = "UIBarButtonItemWithSystemItem"
	Field Title:String
	Field Width:Float
	Field Image:UIImage
	Field Enabled:Bool
	Field Style:UIBarButtonItemStyle
	Field Tag:Int
	
	Method Dispose:Void(disposing:Bool)

	Function Create:UIBarButtonItem(systemItem:UIBarButtonSystemItem)
	
End
#End



Class UIBarButtonItem = "UIBarButtonItemEx"
	Field Title:String
	Field Width:Float
	Field Image:UIImage
	Field Enabled:Bool
	Field Style:UIBarButtonItemStyle
	Field Tag:Int
	Field Delegate:UIBarButtonItemDelegate
	
	Method Dispose:Void(disposing:Bool)
	Function Create:UIBarButtonItem(systemItem:UIBarButtonSystemItem)

End
