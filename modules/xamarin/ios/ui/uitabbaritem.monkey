Import "native/uitabbaritem2.cs"
Import uiimage
Import uitabbarsystemitem


Extern

Class UITabBarItem = "UITabBarItemEx"
	Field Image:UIImage
	Field Title:String
	Field BadgeValue:String
	Field Enabled:Bool
	'Field Delegate:UITabBarItemDelegate
	
	Method Dispose:Void(disposing:Bool)
	Function Create:UITabBarItem(item:UITabBarSystemItem, tag:Int)
End


Class UITabBarItemDelegate = "UITabBarItemDelegate"
	
	Method Clicked:Void(tabBarItem:UITabBarSystemItem)
End