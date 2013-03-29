Import uiview
Import uinavigationcontroller
Import uiinterfaceorientation
Import uibarbuttonitem
Import uinavigationitem
Import uiresponder
Import uitabbaritem

Extern

Class UIViewController Extends UIResponder = "UIViewController"
	Field View:UIView
	Field NavigationController:UINavigationController
	Field Title:String
	Field NavigationItem:UINavigationItem
	Field TabBarController:UITabBarController
	Field TabBarItem:UITabBarItem
	Field ModalTransitionStyle:UIModalTransitionStyle
	
	
	Method Add:Void(view:UIView)
	Method AddChildViewController:Void(childController:UIViewController)
	Method ViewDidLoad:Void()
	Method ViewDidUnload:Void()
	Method ViewWillUnload:Void()
	Method ViewDidAppear:Void(animated:Bool)
	Method ViewDidDisappear:Void(animated:Bool)
	Method ViewWillAppear:Void(animated:Bool)
	Method ViewWillDisappear:Void(animated:Bool)
	Method LoadView:Void()
	Method DidReceiveMemoryWarning:Void()
	Method ShouldAutorotateToInterfaceOrientation:Bool(toInterfaceOrientation:UIInterfaceOrientation)
	Method SetToolbarItems:Void(items:UIBarButtonItem[], animated:Bool)
	Method Dispose:Void(disposing:Bool)
	
	Method PresentModalViewController:Void(modalViewController:UIViewController, animated:Bool)	'deprectated in iOS 6
	Method PresentViewController:Void(viewControllerToPresent:UIViewController, animated:Bool, nullObject:Object) '= "PresentViewController(viewControllerToPresent, animated, null)"
	Method DismissModalViewControllerAnimated:Void(animated:Bool)	'deprecated in iOS 6
	Method DismissViewController:Void(animated:Bool, nullObject:Object)
End


Class UIModalTransitionStyle = "UIModalTransitionStyle"
	Global CoverVertical:UIModalTransitionStyle
	Global CrossDissolve:UIModalTransitionStyle
	Global FlipHorizontal:UIModalTransitionStyle
	Global PartialCurl:UIModalTransitionStyle
End