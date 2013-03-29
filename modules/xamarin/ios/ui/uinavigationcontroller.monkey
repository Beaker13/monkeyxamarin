Import uiviewcontroller
Import uinavigationbar

Extern

Class UINavigationController Extends UIViewController = "UINavigationController"
	Field NavigationBar:UINavigationBar
	Field ToolbarHidden:Bool

	Method PushViewController:Void(uiViewController:UIViewController, animated:Bool)	
	Method SetNavigationBarHidden:Void(visible:Bool, animated:Bool)
	Method Dispose:Void(disposing:Bool)

End