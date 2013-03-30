Import xamarin.ios

Global window:UIWindow

Global homeScreen:HomeScreen
Global secondScreen:UIViewController
Global thirdScreen:UIViewController


Class ButtonDelegate Extends UIButtonDelegate
	Field viewController:UIViewController
	
	Method New(uiv:UIViewController)
		viewController = uiv
	End	
	
	Method Clicked:Void(button:UIButton)
		Print "ButtonDelegate: "+button.Title(UIControlState.Normal)
		
		If viewController = homeScreen
			If secondScreen = Null secondScreen = New SecondScreen()
			'---- push our hello world screen onto the navigation controller And pass a True so it navigates
			viewController.NavigationController.PushViewController(secondScreen, True)
		Else
			If thirdScreen = Null thirdScreen = New ThirdScreen()
			'---- push our hello world screen onto the navigation controller And pass a True so it navigates
			viewController.NavigationController.PushViewController(thirdScreen, True)
		End		
	End
End



Class HomeScreen Extends UIViewController
	Field button:UIButton
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		Title = "Home Screen"		
		View.BackgroundColor = UIColor.Cyan
		
		button = CreateButton(55,40,210,50, "Show second screen")
'		button.BackgroundColor = UIColor.Black
		button.Delegate = New ButtonDelegate(Self)
		View.AddSubview (button)
	
	End
	
	Method ViewWillAppear:Void(animated:Bool)
		Super.ViewWillAppear(animated)
		NavigationController.NavigationBar.TintColor = UIColor.Blue
		
	End
End


Class SecondScreen Extends UIViewController
	Field button:UIButton
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		Title = "Second Screen"
		View.BackgroundColor = UIColor.Magenta
		
		button = CreateButton(55,40,210,50, "Show third screen")
'		button.BackgroundColor = UIColor.Black
		button.Delegate = New ButtonDelegate(Self)
		View.AddSubview (button)

	End
	
	Method ViewWillAppear:Void(animated:Bool)
		Super.ViewWillAppear(animated)
		NavigationController.NavigationBar.TintColor = UIColor.Red
		
	End
End

Class ThirdScreen Extends UIViewController
	Field table:UITableView

	Method ViewDidLoad:Void()
		Super.ViewDidLoad ()
		Title = "Third Screen"
		View.BackgroundColor = UIColor.Brown
	End
	
	Method ViewWillAppear:Void(animated:Bool)
		Super.ViewWillAppear(animated)
		NavigationController.NavigationBar.TintColor = UIColor.Green
		
	End
End


Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	
	UIApplication.SharedApplication.SetStatusBarHidden(True,True)

	homeScreen = New HomeScreen ()

	'---- instantiate a new navigation controller
	Local rootNavigationController:= New UINavigationController()
	
	'---- add the home screen To the navigation controller (it'll be the top most screen)	
	rootNavigationController.PushViewController(homeScreen, False)
	
	'---- set the root view controller on the window. the nav controller will handle the rest
	window.RootViewController = rootNavigationController
	window.MakeKeyAndVisible ()
End

